import de.itemis.mps.gradle.*
import de.itemis.mps.gradle.downloadJBR.DownloadJbrForPlatform
import de.itemis.mps.gradle.modelcheck.ModelCheckPluginExtensions
import de.itemis.mps.gradle.modelcheck.ModelcheckMpsProjectPlugin
import java.util.Date

//will pull the groovy classes/types from nexus to the classpath
buildscript {
    dependencies {
        // Version must match download-jbr plugin below
        classpath("de.itemis.mps:mps-gradle-plugin:1.11.+")
    }

    dependencyLocking { lockAllConfigurations() }
}

plugins {
    base
    `maven-publish`
    id("co.riiid.gradle") version "0.4.2"

    // Version must match buildscript mps-gradle-plugin dependency above
    id("download-jbr") version "1.11.+"
}

val jbrVers = "11_0_12-b1504.28"

downloadJbr {
    jbrVersion = jbrVers
}

// detect if we are in a CI build
val ciBuild = project.hasProperty("forceCI") || project.hasProperty("teamcity")

// Detect jdk location, required to start ant with tools.jar on classpath otherwise javac and tests will fail
val jdk_home: String = if (project.hasProperty("java11_home")) {
    project.findProperty("java11_home") as String
} else if (System.getenv("JB_JAVA11_HOME") != null) {
    System.getenv("JB_JAVA11_HOME")!!
} else {
    val expected = JavaVersion.VERSION_11
    if (JavaVersion.current() != expected) {
        throw GradleException("This build script requires Java 11 but you are currently using ${JavaVersion.current()}.\nWhat you can do:\n"
                + "  * Use project property java11_home to point to the Java 11 JDK.\n"
                + "  * Use environment variable JB_JAVA11_HOME to point to the Java 11 JDK\n"
                + "  * Run Gradle using Java 11")
    }
    System.getProperty("java.home")!!
}

// Check JDK location
if (!File(jdk_home, "lib").exists()) {
    throw GradleException("Unable to locate JDK home folder. Detected folder is: $jdk_home")
}

logger.info("Using JDK at {}", jdk_home)

var nexusUsername: String? by extra
var nexusPassword: String? by extra

// Default repository credentials
if (nexusUsername == null) {
    nexusUsername = ""
    nexusPassword = ""
}
logger.info("Repository username: {}", nexusUsername)

// Project versions
val major = "2021"
val minor = "2"

// Dependency versions
val platformVersion = "$major.$minor.+"

if (ciBuild) {
    val branch = GitBasedVersioning.getGitBranch()

    val buildNumber = System.getenv("BUILD_NUMBER")!!.toInt()
    if (branch.startsWith("maintenance") || branch.startsWith("mps") || branch.startsWith("migration")) {
        version = "$major.$minor.$buildNumber.${GitBasedVersioning.getGitShortCommitHash()}"
    } else {
        version = GitBasedVersioning.getVersionWithCount(major, minor, buildNumber)
    }

    println("##teamcity[buildNumber '${version}']")
} else {
    println("Local build detected, version will be SNAPSHOT")
    version = "$major.$minor-SNAPSHOT"
}

val publishingRepository = uri("https://artifacts.itemis.cloud/repository/maven-mps-releases")

configurations {
    val mps by creating
    val languageLibs by creating
    // includes also junit tasks support
    val antLib by creating
    val jbrWin by creating
    val jbrMac by creating
    val jbrLinux by creating

    dependencies {
        mps("com.jetbrains:mps:$platformVersion")
        languageLibs("com.mbeddr:platform:$platformVersion")
        languageLibs("org.mpsqa:all-in-one:$platformVersion")
        antLib("org.apache.ant:ant-junit:1.10.6")
        jbrWin("com.jetbrains.jdk:jbr_jcef:$jbrVers:windows-x64@tgz")
        jbrMac("com.jetbrains.jdk:jbr_jcef:$jbrVers:osx-x64@tgz")
        jbrLinux("com.jetbrains.jdk:jbr_jcef:$jbrVers:linux-x64@tgz")
    }
}

dependencyLocking { lockAllConfigurations() }

repositories {
    val dependencyRepositories = listOf("https://artifacts.itemis.cloud/repository/maven-mps",
            "https://maven.pkg.github.com/mbeddr/*")

    for (repoUrl in dependencyRepositories) {
        maven {
            url = uri(repoUrl)

            if (repoUrl.startsWith("https://maven.pkg.github.com/")) {
                credentials {
                    username = project.property("gpr.user") as String
                    password = project.property("gpr.token") as String
                }
            }
        }
    }
    mavenCentral()
}

val skipResolveMps = project.hasProperty("mpsHomeDir")
val mpsHomeDir = rootProject.file(project.findProperty("mpsHomeDir") ?: "$buildDir/mps")

val resolveMps = if (skipResolveMps) {
    tasks.register("resolveMps") {
        doLast {
            logger.info("MPS resolution skipped")
            logger.info("MPS home: {}", mpsHomeDir.getAbsolutePath())
        }
    }
} else {
    tasks.register("resolveMps", Copy::class) {
        dependsOn(configurations["mps"])
        from({
            configurations["mps"].resolve().map(::zipTree)
        })
        into(mpsHomeDir)
    }
}

// tools needed for compiler support in ant calls
val buildScriptClasspath = project.configurations["antLib"] +
        project.files("$project.jdk_home/lib/tools.jar")

val artifactsDir = file("$buildDir/artifacts")
val dependenciesDir = file("$buildDir/dependencies")
val jdkDir = file("$buildDir/jdkDir")


// ___________________ utilities ___________________

val defaultScriptArgs = mapOf(
        "mps.home" to mpsHomeDir,
        "mbeddr.formal.home" to rootDir,
        "build.dir" to buildDir,
        "version" to version,
        "build.date" to Date(),
        //incremental build support
        "mps.generator.skipUnmodifiedModels" to true
)

// enables https://github.com/mbeddr/mps-gradle-plugin#providing-global-defaults
extra["itemis.mps.gradle.ant.defaultScriptArgs"] = defaultScriptArgs.map { "-D${it.key}=${it.value}" }
extra["itemis.mps.gradle.ant.defaultScriptClasspath"] = buildScriptClasspath
extra["itemis.mps.gradle.ant.defaultJavaExecutable"] = File(jdk_home, "bin/java")

tasks {
    val configureJava by registering {
        val downloadJbr = named("downloadJbr", DownloadJbrForPlatform::class)
        dependsOn(downloadJbr)
        doLast {
            extra["itemis.mps.gradle.ant.defaultScriptArgs"] = defaultScriptArgs.map { "-D${it.key}=${it.value}" }
            extra["itemis.mps.gradle.ant.defaultScriptClasspath"] = buildScriptClasspath
            extra["itemis.mps.gradle.ant.defaultJavaExecutable"] = downloadJbr.get().javaExecutable
        }
    }

    val resolveLanguageLibs by registering(Copy::class) {
        dependsOn(configureJava)
        from({ configurations["languageLibs"].resolve().map(::zipTree) })
        into(dependenciesDir)
    }

    val generateLibrariesXml by registering(GenerateLibrariesXml::class) {
        dependsOn(resolveLanguageLibs)
        description = "Will read project libraries from projectlibraries.properties and generate libraries.xml in .mps directory. Libraries are loaded in mps during start."
        defaults = rootProject.file("projectlibraries.properties")
        setOverrides(rootProject.file("projectlibraries.overrides.properties"))
        destination = file("code/languages/com.mbeddr.formal.nusmv/.mps/libraries.xml")
    }

    val setup by registering {
        dependsOn(generateLibrariesXml)
        description = "Set up MPS project libraries. Libraries are read in from projectlibraries.properties file."
    }

    val build_allScripts by registering(BuildLanguages::class) {
        dependsOn(resolveMps, resolveLanguageLibs)
        script = "$buildDir/scripts/build_all_scripts.xml"
    }

    val build_formal_languages by registering(BuildLanguages::class) {
        dependsOn(build_allScripts)
        script = "$buildDir/scripts/build-formal-languages.xml"
    }

    val build_fasten_safety_distribution by registering(BuildLanguages::class) {
        dependsOn(build_formal_languages)
        script = "$buildDir/scripts/build-fasten-safe-distribution.xml"
    }

    val run_smv_tests by registering(TestLanguages::class) {
        description = "Will execute all tests from command line"
        script = "$buildDir/scripts/build-nusmv-tests.xml"
        doLast {
            ant.withGroovyBuilder {
                "taskdef"("name" to "junitreport",
                        "classname" to "org.apache.tools.ant.taskdefs.optional.junit.XMLResultAggregator",
                        "classpath" to configurations["antLib"].asPath)
                "junitreport" {
                    "fileset"("dir" to buildDir.toString(), "includes" to "**/TEST*.xml")
                    "report"("format" to "frames", "todir" to "$buildDir/junitreport_smv")
                }
                "echo"("JUnit report placed into $buildDir/junitreport_smv/index.html")
            }
        }
    }

    val run_safety_tests by registering(TestLanguages::class) {
        description = "Will execute all tests from command line"
        script = "$buildDir/scripts/build-safety-tests.xml"
        doLast {
            ant.withGroovyBuilder {
                "taskdef"("name" to "junitreport",
                        "classname" to "org.apache.tools.ant.taskdefs.optional.junit.XMLResultAggregator",
                        "classpath" to configurations["antLib"].asPath)
                "junitreport" {
                    "fileset"("dir" to buildDir.toString(), "includes" to "**/TEST*.xml")
                    "report"("format" to "frames", "todir" to "$buildDir/junitreport")
                }
                "echo"("JUnit report placed into $buildDir/junitreport/index.html")
            }
        }
    }

    val run_all_tests by registering(TestLanguages::class) {
        description = "Will execute all tests from command line"
        script = "$buildDir/scripts/build-all-tests.xml"
        doLast {
            ant.withGroovyBuilder {
                "taskdef"("name" to "junitreport",
                        "classname" to "org.apache.tools.ant.taskdefs.optional.junit.XMLResultAggregator",
                        "classpath" to configurations["antLib"].asPath)
                "junitreport" {
                    "fileset"("dir" to buildDir.toString(), "includes" to "**/TEST*.xml")
                    "report"("format" to "frames", "todir" to "$buildDir/junitreport")
                }
                "echo"("JUnit report placed into $buildDir/junitreport/index.html")
            }
        }
    }

    check {
        dependsOn(run_all_tests)
    }

    val package_formal by registering(Zip::class) {
        dependsOn(build_formal_languages)
        archiveBaseName.set("com.mbeddr.formal")
        from(artifactsDir)
        include("com.mbeddr.formal.languages/**")
    }

    val build_assurance_languages by registering(BuildLanguages::class) {
        dependsOn(build_allScripts)
        script = "$buildDir/scripts/build-assurance-languages.xml"
    }

    val package_assurance by registering(Zip::class) {
        dependsOn(build_assurance_languages)
        archiveBaseName.set("fasten.assurance")
        from(artifactsDir)
        include("fasten.assurance.languages/**")
    }

    val resolveJBR_Win by registering(Copy::class) {
        from(configurations["jbrWin"])
        into(jdkDir)
        rename { filename ->
            val resolvedArtifact = configurations["jbrWin"].resolvedConfiguration.resolvedArtifacts.find { ra -> ra.file.name == filename }!!
            resolvedArtifact.name + "-" + resolvedArtifact.classifier + "." + resolvedArtifact.extension
        }
    }

    val unpackDistribution by registering(Copy::class) {
        from(zipTree("$artifactsDir/com.mbeddr.formal.safetyDistribution/fasten-$major.$minor-SNAPSHOT.zip"))
        into("$artifactsDir/com.mbeddr.formal.safetyDistribution/tmp")
    }

    val deleteJBR by registering(Delete::class) {
        dependsOn(unpackDistribution)
        delete("$artifactsDir/com.mbeddr.formal.safetyDistribution/tmp/fasten-$major.$minor-SNAPSHOT/jbr")
    }

    val removeJBR by registering(Zip::class) {
        dependsOn(deleteJBR)
        from("$artifactsDir/com.mbeddr.formal.safetyDistribution/tmp/fasten-$major.$minor-SNAPSHOT")
        archiveFileName.set("fasten-$major.$minor-SNAPSHOT_with_removed_JBR.zip")
        destinationDirectory.set(file("$artifactsDir/com.mbeddr.formal.safetyDistribution"))
    }

    val package_fasten_safety_distribution_win by registering(Zip::class) {
        dependsOn(resolveJBR_Win, build_fasten_safety_distribution, removeJBR)
        archiveBaseName.set("fasten-$major.$minor-SNAPSHOT-Win")
        from(zipTree("$artifactsDir/com.mbeddr.formal.safetyDistribution/fasten-$major.$minor-SNAPSHOT_with_removed_JBR.zip"))
        from(tarTree("$jdkDir/jbr_jcef-windows-x64.tgz"))
    }

    assemble { dependsOn(package_formal, package_assurance) }

    val cleanMps by registering(Delete::class) {
        delete(fileTree(projectDir) { include("**/classes_gen/**", "**/source_gen/**", "**/source_gen.caches/**", "tmp/**") })
    }

    //clean { dependsOn(cleanMps) }
    val rebuild by registering { dependsOn(clean, build_formal_languages) }
}

publishing {
    repositories {
        maven {
            url = publishingRepository
            if (project.hasProperty("artifacts.itemis.cloud.user") && project.hasProperty("artifacts.itemis.cloud.pw")) {
                credentials {
                    username = project.findProperty("artifacts.itemis.cloud.user") as String
                    password = project.findProperty("artifacts.itemis.cloud.pw") as String
                }
            }
        }
        maven {
            name = "GitHubPackages"
            url = uri("https://maven.pkg.github.com/mbeddr/mbeddr.formal")
            if (project.hasProperty("gpr.token")) {
                credentials {
                    username = project.findProperty("gpr.user") as String
                    password = project.findProperty("gpr.token") as String
                }
            }
        }
    }
    publications {
        create<MavenPublication>("NuSMVLanguages") {
            groupId = "com.mbeddr"
            artifactId = "formal"
            artifact(tasks.named("package_formal"))
            pom.withXml {
                val dependenciesNode = asNode().appendNode("dependencies")
                configurations["languageLibs"].resolvedConfiguration.firstLevelModuleDependencies.forEach {
                    val dependencyNode = dependenciesNode.appendNode("dependency")
                    dependencyNode.appendNode("groupId", it.moduleGroup)
                    dependencyNode.appendNode("artifactId", it.moduleName)
                    dependencyNode.appendNode("version", it.moduleVersion)
                    dependencyNode.appendNode("type", it.moduleArtifacts.first().type)
                }
                configurations["mps"].resolvedConfiguration.firstLevelModuleDependencies.forEach {
                    val dependencyNode = dependenciesNode.appendNode("dependency")
                    dependencyNode.appendNode("groupId", it.moduleGroup)
                    dependencyNode.appendNode("artifactId", it.moduleName)
                    dependencyNode.appendNode("version", it.moduleVersion)
                    dependencyNode.appendNode("type", it.moduleArtifacts.first().type)
                    dependencyNode.appendNode("scope", "provided")
                }
            }
        }
        create<MavenPublication>("FASTENSafetyLanguages") {
            groupId = "fasten"
            artifactId = "assurance"
            artifact(tasks.named("package_assurance"))
            pom.withXml {
                val dependenciesNode = asNode().appendNode("dependencies")
                configurations["languageLibs"].resolvedConfiguration.firstLevelModuleDependencies.forEach {
                    val dependencyNode = dependenciesNode.appendNode("dependency")
                    dependencyNode.appendNode("groupId", it.moduleGroup)
                    dependencyNode.appendNode("artifactId", it.moduleName)
                    dependencyNode.appendNode("version", it.moduleVersion)
                    dependencyNode.appendNode("type", it.moduleArtifacts.first().type)
                }
                configurations["mps"].resolvedConfiguration.firstLevelModuleDependencies.forEach {
                    val dependencyNode = dependenciesNode.appendNode("dependency")
                    dependencyNode.appendNode("groupId", it.moduleGroup)
                    dependencyNode.appendNode("artifactId", it.moduleName)
                    dependencyNode.appendNode("version", it.moduleVersion)
                    dependencyNode.appendNode("type", it.moduleArtifacts.first().type)
                    dependencyNode.appendNode("scope", "provided")
                }
            }
        }
    }
}

enum class ProjectToCheck(val projectDirectory: String, val module: String) {
    SAFETY("tutorial-safety", "com.mbeddr.formal.safety.tutorial"),
    NUSMV("tutorial", "com.mbeddr.formal.nusmv.tutorial")
}

val projectToCheck = (project.findProperty("checkProject") as String?)?.let { ProjectToCheck.valueOf(it.toUpperCase()) }

if (projectToCheck != null) {
    apply<ModelcheckMpsProjectPlugin>()

    val pluginsProvider = provider {
        val result = mutableListOf<de.itemis.mps.gradle.Plugin>()
        File("$buildDir/dependencies/com.mbeddr.platform").listFiles().forEach {
            if (it.isDirectory) {
                result.add(Plugin(it.name, it.absolutePath))
            }
        }

        File("$buildDir/artifacts/com.mbeddr.formal.languages").listFiles().forEach {
            if (it.isDirectory) {
                result.add(Plugin(it.name, it.absolutePath))
            }
        }

        result
    }


    configure<ModelCheckPluginExtensions> {
        mpsLocation = File("$buildDir/mps")
        macros = listOf(Macro("mbeddr.formal.home", "$projectDir"))
        pluginsProperty.set(pluginsProvider)
        projectLocation = File("$projectDir/code/${projectToCheck.projectDirectory}/")
        mpsConfig = configurations["mps"]
        junitFile = File("$buildDir/TEST-${projectToCheck.name.toLowerCase()}-modelcheckresult.xml")
        errorNoFail = true
        debug = false
        maxHeap = "3G"
        modules = listOf(projectToCheck.module)
    }

    defaultTasks("checkmodels")
} else {
    defaultTasks("build_formal_languages")
}
