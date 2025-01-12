<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7000bc40-8318-48c4-b35f-6d57c7260390(_010_features._040_safety_models)">
  <persistence version="9" />
  <languages>
    <devkit ref="bf74abbc-7521-4990-984c-b43ecaf32ba1(fasten.safety.fmea)" />
    <devkit ref="a43bbdef-33e6-44ad-a995-6accad936f48(fasten.safety.ft)" />
    <devkit ref="edb51d2d-64eb-404a-818e-c1cabf1d58d5(fasten.nusmv)" />
    <devkit ref="cc8f24e6-1235-41ad-b4fc-f9b70bfca7d7(fasten.safety.fmea.arch)" />
  </languages>
  <imports />
  <registry>
    <language id="58bd9c99-ba42-4205-b3c9-ce445fd870e6" name="com.mbeddr.formal.nusmv.cbd">
      <concept id="4183024216371329180" name="com.mbeddr.formal.nusmv.cbd.structure.ComponentAssemblySMV" flags="ng" index="2dDAV0" />
      <concept id="4183024216371329174" name="com.mbeddr.formal.nusmv.cbd.structure.ComponentInterfaceSMV" flags="ng" index="2dDAVa" />
    </language>
    <language id="c6d7e8a3-3d80-479a-8799-a11fe1902b1c" name="com.fasten.safety.hiphops">
      <concept id="5649897883596639728" name="com.fasten.safety.hiphops.structure.OrHipHOPSExpression" flags="ng" index="2vqzn0" />
      <concept id="2183730226557133088" name="com.fasten.safety.hiphops.structure.SingleFailurePropagationLogic" flags="ng" index="DtCCM">
        <child id="1433630071286915340" name="inputDeviationLogic" index="1hIEvS" />
        <child id="1433630071286915341" name="componentMalfunctionLogic" index="1hIEvT" />
        <child id="1433630071286915339" name="failureModeRef" index="1hIEvZ" />
      </concept>
      <concept id="1433630071283045915" name="com.fasten.safety.hiphops.structure.ComponentFailureModeRefExpressionBase" flags="ng" index="1hKp3J">
        <reference id="6053347500022004386" name="failureMode" index="3$NFno" />
      </concept>
      <concept id="1433630071281486525" name="com.fasten.safety.hiphops.structure.LogicalTypeFailureModesBase" flags="ng" index="1hU4L9">
        <child id="2183730226556973211" name="failureModes" index="Du1I9" />
      </concept>
      <concept id="1433630071281871828" name="com.fasten.safety.hiphops.structure.PortFailureModeRefExpressionBase" flags="ng" index="1hXUOw">
        <reference id="2183730226557155070" name="failureMode" index="DtHRG" />
      </concept>
      <concept id="3021731374194694448" name="com.fasten.safety.hiphops.structure.IFFMEABase" flags="ng" index="3$q46s">
        <child id="2183730226557081317" name="singleFailurePropagationLogic" index="DuvRR" />
      </concept>
    </language>
    <language id="92d2ea16-5a42-4fdf-a676-c7604efe3504" name="de.slisson.mps.richtext">
      <concept id="2557074442922380897" name="de.slisson.mps.richtext.structure.Text" flags="ng" index="19SGf9">
        <child id="2557074442922392302" name="words" index="19SJt6" />
      </concept>
      <concept id="2557074442922438156" name="de.slisson.mps.richtext.structure.Word" flags="ng" index="19SUe$">
        <property id="2557074442922438158" name="escapedValue" index="19SUeA" />
      </concept>
    </language>
    <language id="ab274f70-5238-4883-adc7-02df7a757829" name="com.fasten.safety.ft">
      <concept id="6260256764176969328" name="com.fasten.safety.ft.structure.Connection" flags="ng" index="21oswF" />
      <concept id="6260256764176592607" name="com.fasten.safety.ft.structure.FaultTree" flags="ng" index="21ASy4">
        <child id="2812932810441448772" name="content" index="3CrHoS" />
      </concept>
      <concept id="6260256764176593147" name="com.fasten.safety.ft.structure.FaultTreeConnectionBase" flags="ng" index="21ATqw">
        <reference id="6260256764176969352" name="end" index="21oszj" />
        <reference id="6260256764176969350" name="start" index="21oszt" />
      </concept>
      <concept id="6260256764176593146" name="com.fasten.safety.ft.structure.FaultTreeElementBase" flags="ng" index="21ATqx">
        <child id="767858870486530214" name="description" index="6n8cP" />
      </concept>
      <concept id="6260256764176593167" name="com.fasten.safety.ft.structure.TopEvent" flags="ng" index="21ATtk" />
      <concept id="6260256764176593194" name="com.fasten.safety.ft.structure.BasicEvent" flags="ng" index="21ATtL" />
      <concept id="4232349791877945006" name="com.fasten.safety.ft.structure.AndGate" flags="ng" index="cEgko" />
      <concept id="4232349791877819920" name="com.fasten.safety.ft.structure.OrGate" flags="ng" index="cFNQA" />
    </language>
    <language id="b43c548b-f75f-46e2-ad24-de9edd93e95e" name="com.fasten.safety.fmea">
      <concept id="4663111736253860896" name="com.fasten.safety.fmea.structure.DesignFMEAEmptyLine" flags="ng" index="2VURXa" />
      <concept id="3491732495478955378" name="com.fasten.safety.fmea.structure.FailureEffectDefinitionBase" flags="ng" index="1jKNP6">
        <child id="4663111736253957550" name="description" index="2VUvr4" />
      </concept>
      <concept id="3491732495478440804" name="com.fasten.safety.fmea.structure.FailureModeDefinitionBase" flags="ng" index="1jQQdg">
        <child id="4663111736253767864" name="description" index="2VUHfi" />
      </concept>
      <concept id="8413234032527459520" name="com.fasten.safety.fmea.structure.FailureModeAndEffects" flags="ng" index="1PLKG7">
        <reference id="3491732495478507335" name="failureModeDefinition" index="1jQAtN" />
        <child id="8413234032527493605" name="effects" index="1PLCoy" />
      </concept>
      <concept id="8413234032527459451" name="com.fasten.safety.fmea.structure.SubjectBase" flags="ng" index="1PLKIW">
        <child id="8413234032527493603" name="failureModes" index="1PLCo$" />
      </concept>
      <concept id="8413234032527459382" name="com.fasten.safety.fmea.structure.FMEABase" flags="ng" index="1PLKJL">
        <child id="8413234032527501984" name="subjects" index="1PLElB" />
      </concept>
      <concept id="8413234032528120653" name="com.fasten.safety.fmea.structure.DesignFMEARoot" flags="ng" index="1POhia">
        <child id="8413234032528120724" name="dfmeas" index="1POhhj" />
      </concept>
    </language>
    <language id="001b2375-3bd5-4d5e-9958-6b3f62dc8548" name="com.mbeddr.formal.nusmv">
      <concept id="2295987781863305066" name="com.mbeddr.formal.nusmv.structure.IntervalType" flags="ng" index="dhpfj">
        <child id="2295987781863305067" name="left" index="dhpfi" />
        <child id="2295987781863305070" name="right" index="dhpfn" />
      </concept>
      <concept id="7842584090743385045" name="com.mbeddr.formal.nusmv.structure.System" flags="ng" index="2HdtXS">
        <child id="7842584090743643493" name="content" index="2HcuB8" />
      </concept>
      <concept id="6447909589225766051" name="com.mbeddr.formal.nusmv.structure.EmptySystemContent" flags="ng" index="2SQmWS" />
      <concept id="8482728081215670238" name="com.mbeddr.formal.nusmv.structure.IntegerType" flags="ng" index="1yFZfx" />
    </language>
    <language id="b0b65429-cd22-4e2a-83e7-cd58bc6dd72f" name="com.mbeddr.formal.base.expressions">
      <concept id="7842584090744231473" name="com.mbeddr.formal.base.expressions.structure.BinaryExpression" flags="ng" index="2H9Ias">
        <child id="7842584090744231480" name="right" index="2H9Ial" />
        <child id="7842584090744231474" name="left" index="2H9Iav" />
      </concept>
      <concept id="7842584090745356592" name="com.mbeddr.formal.base.expressions.structure.NumberLiteral" flags="ng" index="2IPVmt">
        <property id="7842584090745356593" name="value" index="2IPVms" />
      </concept>
    </language>
    <language id="c0e6afd4-e20f-4e33-9970-004cf26b9bf6" name="com.mbeddr.formal.nusmv.ext">
      <concept id="2406721343443666554" name="com.mbeddr.formal.nusmv.ext.structure.TypedefDeclaration" flags="ng" index="1sau8P">
        <child id="2406721343443666559" name="originalType" index="1sau8K" />
      </concept>
      <concept id="2406721343443672946" name="com.mbeddr.formal.nusmv.ext.structure.TypedefType" flags="ng" index="1savGX">
        <reference id="2406721343443672947" name="typedef" index="1savGW" />
      </concept>
    </language>
    <language id="521724dc-29ef-4d5a-9c15-25f6b680b809" name="com.fasten.safety.hiphops.arch">
      <concept id="2183730226557155069" name="com.fasten.safety.hiphops.arch.structure.PortFailureModeRefExpression" flags="ng" index="DtHRJ">
        <child id="6957002747779723394" name="port" index="3anSQx" />
      </concept>
      <concept id="2183730226556973206" name="com.fasten.safety.hiphops.arch.structure.LogicalTypeFailureModes" flags="ng" index="Du1I4">
        <child id="6957002747779324063" name="tpe" index="3agqmW" />
      </concept>
      <concept id="2183730226556884064" name="com.fasten.safety.hiphops.arch.structure.IFFMEA" flags="ng" index="DuJXM">
        <reference id="2183730226556884137" name="interf" index="DuJYV" />
      </concept>
      <concept id="6957002747778834774" name="com.fasten.safety.hiphops.arch.structure.FaultTreeContainer" flags="ng" index="3aixLP">
        <child id="6957002747778834777" name="ft" index="3aixLU" />
      </concept>
      <concept id="6053347500022004385" name="com.fasten.safety.hiphops.arch.structure.ComponentFailureModeRefExpression" flags="ng" index="3$NFnr" />
    </language>
    <language id="1110e3ef-a98e-444f-9748-1d61fe61c7f7" name="com.fasten.safety.fmea.arch">
      <concept id="4663111736253957542" name="com.fasten.safety.fmea.arch.structure.ComponentFailureEffectDefinition" flags="ng" index="2VUvrc" />
      <concept id="4663111736253957534" name="com.fasten.safety.fmea.arch.structure.ComponentFailureEffectsDefinition" flags="ng" index="2VUvrO">
        <child id="4663111736254003226" name="effects" index="2VUkHK" />
      </concept>
      <concept id="4663111736253767846" name="com.fasten.safety.fmea.arch.structure.ComponentFailureModesDefinition" flags="ng" index="2VUHfc">
        <reference id="4663111736253767852" name="interface" index="2VUHf6" />
        <child id="4663111736253793712" name="failureModes" index="2VUBrq" />
      </concept>
      <concept id="4663111736253767856" name="com.fasten.safety.fmea.arch.structure.ComponentFailureModeDefinition" flags="ng" index="2VUHfq" />
      <concept id="8413234032527476648" name="com.fasten.safety.fmea.arch.structure.ComponentInstanceSubject" flags="ng" index="1PLGxJ">
        <reference id="8413234032527476717" name="comp" index="1PLGwE" />
      </concept>
      <concept id="8413234032527468119" name="com.fasten.safety.fmea.arch.structure.DesignFMEA" flags="ng" index="1PLMAg">
        <reference id="8413234032528111728" name="arch" index="1POnuR" />
      </concept>
      <concept id="8413234032528056373" name="com.fasten.safety.fmea.arch.structure.ComponentEffectAnalysis" flags="ng" index="1PNyZM">
        <reference id="4663111736254126539" name="effect" index="2VPQEx" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="8ca79d43-eb45-4791-bdd4-0d6130ff895b" name="de.itemis.mps.editor.diagram.layout">
      <concept id="6720495385597071406" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Box" flags="ng" index="gqqVs">
        <property id="6720495385597071504" name="bounds_height" index="gqqTy" />
        <property id="6720495385597071502" name="bounds_y" index="gqqTW" />
        <property id="6720495385597071503" name="bounds_width" index="gqqTX" />
        <property id="6720495385597071501" name="bounds_x" index="gqqTZ" />
        <property id="4583510071007917016" name="transform" index="TgtnS" />
        <child id="738815095926774816" name="portLayouts" index="1pap1a" />
      </concept>
      <concept id="2319506556913310852" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Connection" flags="ng" index="2VclpC">
        <child id="2319506556913311101" name="anchors" index="2Vcluh" />
        <child id="4767615435799372763" name="labels" index="3ul5Gx" />
      </concept>
      <concept id="2319506556913310727" name="de.itemis.mps.editor.diagram.layout.structure.Point" flags="ng" index="2VclrF">
        <property id="2319506556913310861" name="x" index="2Vclpx" />
        <property id="2319506556913310863" name="y" index="2Vclpz" />
      </concept>
      <concept id="8963411245960991886" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMap" flags="ng" index="37mRI7">
        <child id="8963411245960991904" name="entries" index="37mRID" />
      </concept>
      <concept id="8963411245960991903" name="de.itemis.mps.editor.diagram.layout.structure.LayoutMapEntry" flags="ng" index="37mRIm">
        <property id="8963411245960998400" name="key" index="37mO49" />
        <child id="8963411245960998404" name="value" index="37mO4d" />
      </concept>
      <concept id="738815095926749345" name="de.itemis.mps.editor.diagram.layout.structure.Layout_Port" flags="ng" index="1pa3jb">
        <property id="7964702570467115501" name="ordinal" index="2gRgW$" />
        <property id="738815095926749379" name="portName" index="1pa3iD" />
      </concept>
      <concept id="4767615435799372731" name="de.itemis.mps.editor.diagram.layout.structure.Layout_EdgeLabel" flags="ng" index="3ul5H1">
        <property id="4767615435799372759" name="type" index="3ul5GH" />
        <child id="4767615435799372761" name="position" index="3ul5Gz" />
      </concept>
      <concept id="3253043142928125505" name="de.itemis.mps.editor.diagram.layout.structure.RelativePosition" flags="ng" index="3wpmZ1">
        <child id="3253043142928125557" name="referencePoint" index="3wpmZP" />
        <child id="3253043142928125559" name="offset" index="3wpmZR" />
      </concept>
    </language>
    <language id="71797868-de95-425c-8470-36aa52c8ebc4" name="com.mbeddr.formal.base.arch">
      <concept id="9066112305507423291" name="com.mbeddr.formal.base.arch.structure.Connection" flags="ng" index="3Ug1$w">
        <child id="9066112305507423293" name="source" index="3Ug1$A" />
        <child id="9066112305507423296" name="target" index="3Ug1_r" />
      </concept>
      <concept id="9066112305507423290" name="com.mbeddr.formal.base.arch.structure.ComponentAssembly" flags="ng" index="3Ug1$x">
        <child id="9066112305507508715" name="content" index="3UgYNK" />
      </concept>
      <concept id="9066112305507423362" name="com.mbeddr.formal.base.arch.structure.PortRef" flags="ng" index="3Ug1Ap">
        <reference id="9066112305507423363" name="port" index="3Ug1Ao" />
      </concept>
      <concept id="9066112305507423392" name="com.mbeddr.formal.base.arch.structure.Instance" flags="ng" index="3Ug1AV">
        <child id="9066112305507423422" name="interfaceRef" index="3Ug1A_" />
      </concept>
      <concept id="9066112305507423396" name="com.mbeddr.formal.base.arch.structure.ComponentInterfaceRef" flags="ng" index="3Ug1AZ">
        <reference id="9066112305507423397" name="interface" index="3Ug1AY" />
      </concept>
      <concept id="9066112305507423795" name="com.mbeddr.formal.base.arch.structure.CompositePart" flags="ng" index="3Ug1GC">
        <reference id="9066112305507423825" name="port" index="3Ug1Ha" />
        <child id="9066112305507423822" name="instanceRef" index="3Ug1Hl" />
      </concept>
      <concept id="9066112305507423796" name="com.mbeddr.formal.base.arch.structure.InstanceRef" flags="ng" index="3Ug1GJ">
        <reference id="9066112305507423797" name="instance" index="3Ug1GI" />
      </concept>
      <concept id="9066112305507315482" name="com.mbeddr.formal.base.arch.structure.InputPort" flags="ng" index="3UnI81" />
      <concept id="9066112305507315474" name="com.mbeddr.formal.base.arch.structure.ComponentInterface" flags="ng" index="3UnI89">
        <child id="9066112305507315547" name="outputs" index="3UnI90" />
        <child id="9066112305507315533" name="inputs" index="3UnI9m" />
      </concept>
      <concept id="9066112305507315478" name="com.mbeddr.formal.base.arch.structure.Port" flags="ng" index="3UnI8d">
        <child id="9066112305507315483" name="type" index="3UnI80" />
      </concept>
      <concept id="9066112305507315532" name="com.mbeddr.formal.base.arch.structure.OutputPort" flags="ng" index="3UnI9n" />
    </language>
  </registry>
  <node concept="2HdtXS" id="42QGQFVn3B6">
    <property role="TrG5h" value="_010_architecture" />
    <property role="3GE5qa" value="_00_dfmea" />
    <node concept="2dDAVa" id="42QGQFVn3Bd" role="2HcuB8">
      <property role="TrG5h" value="HDCamera" />
      <node concept="3UnI9n" id="42QGQFVn3Bg" role="3UnI90">
        <property role="TrG5h" value="data" />
        <node concept="1savGX" id="4eD_5l3mJgj" role="3UnI80">
          <ref role="1savGW" node="4eD_5l3mJdy" resolve="frame_stream_t" />
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="4eD_5l3mJhg" role="2HcuB8" />
    <node concept="2SQmWS" id="42QGQFVn3D7" role="2HcuB8" />
    <node concept="2dDAVa" id="42QGQFVn3Dm" role="2HcuB8">
      <property role="TrG5h" value="ObjectDetection" />
      <node concept="3UnI9n" id="4eD_5l3mJq1" role="3UnI90">
        <property role="TrG5h" value="object_list" />
        <node concept="1savGX" id="4eD_5l3mJq2" role="3UnI80">
          <ref role="1savGW" node="4eD_5l3mJc_" resolve="object_list_t" />
        </node>
      </node>
      <node concept="3UnI81" id="42QGQFVn3Dv" role="3UnI9m">
        <property role="TrG5h" value="camera_data" />
        <node concept="1savGX" id="4eD_5l3mJmh" role="3UnI80">
          <ref role="1savGW" node="4eD_5l3mJdy" resolve="frame_stream_t" />
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="4eD_5l3mJno" role="2HcuB8" />
    <node concept="2dDAVa" id="4eD_5l3mJo_" role="2HcuB8">
      <property role="TrG5h" value="Manipulator" />
      <node concept="3UnI81" id="4eD_5l3mJr$" role="3UnI9m">
        <property role="TrG5h" value="objects" />
        <node concept="1savGX" id="4eD_5l3mJs3" role="3UnI80">
          <ref role="1savGW" node="4eD_5l3mJc_" resolve="object_list_t" />
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="42QGQFVn3EP" role="2HcuB8" />
    <node concept="2dDAV0" id="42QGQFVn3Fg" role="2HcuB8">
      <property role="TrG5h" value="SmartFactoryPackagingRobot" />
      <node concept="3Ug1AV" id="42QGQFVn3FJ" role="3UgYNK">
        <property role="TrG5h" value="camera" />
        <node concept="3Ug1AZ" id="42QGQFVn3FI" role="3Ug1A_">
          <ref role="3Ug1AY" node="42QGQFVn3Bd" resolve="HDCamera" />
        </node>
      </node>
      <node concept="3Ug1AV" id="42QGQFVn3FY" role="3UgYNK">
        <property role="TrG5h" value="objects_detector" />
        <node concept="3Ug1AZ" id="42QGQFVn3FW" role="3Ug1A_">
          <ref role="3Ug1AY" node="42QGQFVn3Dm" resolve="ObjectDetection" />
        </node>
      </node>
      <node concept="3Ug1AV" id="4eD_5l3mJsy" role="3UgYNK">
        <property role="TrG5h" value="effector" />
        <node concept="3Ug1AZ" id="4eD_5l3mJsw" role="3Ug1A_">
          <ref role="3Ug1AY" node="4eD_5l3mJo_" resolve="Manipulator" />
        </node>
      </node>
      <node concept="3Ug1$w" id="42QGQFVn3Gf" role="3UgYNK">
        <node concept="3Ug1GC" id="42QGQFVn3Gn" role="3Ug1$A">
          <ref role="3Ug1Ha" node="42QGQFVn3Bg" resolve="data" />
          <node concept="3Ug1GJ" id="42QGQFVn3Gm" role="3Ug1Hl">
            <ref role="3Ug1GI" node="42QGQFVn3FJ" resolve="camera" />
          </node>
        </node>
        <node concept="3Ug1GC" id="42QGQFVn3GH" role="3Ug1_r">
          <ref role="3Ug1Ha" node="42QGQFVn3Dv" resolve="camera_data" />
          <node concept="3Ug1GJ" id="42QGQFVn3GG" role="3Ug1Hl">
            <ref role="3Ug1GI" node="42QGQFVn3FY" resolve="objects_detector" />
          </node>
        </node>
      </node>
      <node concept="3Ug1$w" id="4eD_5l3mJt4" role="3UgYNK">
        <node concept="3Ug1GC" id="4eD_5l3mJt5" role="3Ug1$A">
          <ref role="3Ug1Ha" node="4eD_5l3mJq1" resolve="object_list" />
          <node concept="3Ug1GJ" id="4eD_5l3mJtz" role="3Ug1Hl">
            <ref role="3Ug1GI" node="42QGQFVn3FY" resolve="objects_detector" />
          </node>
        </node>
        <node concept="3Ug1GC" id="4eD_5l3mJt7" role="3Ug1_r">
          <ref role="3Ug1Ha" node="4eD_5l3mJr$" resolve="objects" />
          <node concept="3Ug1GJ" id="4eD_5l3mJug" role="3Ug1Hl">
            <ref role="3Ug1GI" node="4eD_5l3mJsy" resolve="effector" />
          </node>
        </node>
      </node>
      <node concept="37mRI7" id="4eD_5l3mJv5" role="lGtFl">
        <node concept="37mRIm" id="4eD_5l3mJv6" role="37mRID">
          <property role="37mO49" value="4663111736253758191" />
          <node concept="gqqVs" id="4eD_5l3mJv4" role="37mO4d">
            <property role="gqqTZ" value="12.0" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="58.0" />
            <property role="gqqTy" value="32.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="4eD_5l3mJv7" role="1pap1a">
              <property role="1pa3iD" value="data" />
              <property role="2gRgW$" value="2147483646" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="4eD_5l3mJv9" role="37mRID">
          <property role="37mO49" value="4663111736253758206" />
          <node concept="gqqVs" id="4eD_5l3mJv8" role="37mO4d">
            <property role="gqqTZ" value="114.0" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="138.0" />
            <property role="gqqTy" value="32.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="4eD_5l3mJva" role="1pap1a">
              <property role="1pa3iD" value="camera_data" />
              <property role="2gRgW$" value="1073741823" />
            </node>
            <node concept="1pa3jb" id="4eD_5l3mJvb" role="1pap1a">
              <property role="1pa3iD" value="object_list" />
              <property role="2gRgW$" value="2147483646" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="4eD_5l3mJvd" role="37mRID">
          <property role="37mO49" value="4875591165528438562" />
          <node concept="gqqVs" id="4eD_5l3mJvc" role="37mO4d">
            <property role="gqqTZ" value="296.0" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="74.0" />
            <property role="gqqTy" value="32.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="4eD_5l3mJve" role="1pap1a">
              <property role="1pa3iD" value="objects" />
              <property role="2gRgW$" value="1073741823" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="42QGQFVn3Fv" role="2HcuB8" />
    <node concept="2SQmWS" id="4eD_5l3mJeV" role="2HcuB8" />
    <node concept="2SQmWS" id="4eD_5l3mJfr" role="2HcuB8" />
    <node concept="1sau8P" id="4eD_5l3mJdy" role="2HcuB8">
      <property role="TrG5h" value="frame_stream_t" />
      <node concept="dhpfj" id="4eD_5l3mJea" role="1sau8K">
        <node concept="2IPVmt" id="4eD_5l3mJe9" role="dhpfi">
          <property role="2IPVms" value="0" />
        </node>
        <node concept="2IPVmt" id="4eD_5l3mJez" role="dhpfn">
          <property role="2IPVms" value="10" />
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="4eD_5l3mJbM" role="2HcuB8" />
    <node concept="1sau8P" id="4eD_5l3mJc_" role="2HcuB8">
      <property role="TrG5h" value="object_list_t" />
      <node concept="dhpfj" id="4eD_5l3mJi2" role="1sau8K">
        <node concept="2IPVmt" id="4eD_5l3mJi1" role="dhpfi">
          <property role="2IPVms" value="0" />
        </node>
        <node concept="2IPVmt" id="4eD_5l3mJir" role="dhpfn">
          <property role="2IPVms" value="10" />
        </node>
      </node>
    </node>
  </node>
  <node concept="21ASy4" id="5rwT_JnuXe$">
    <property role="TrG5h" value="_100_fault_tree" />
    <property role="3GE5qa" value="_10_fault_tree" />
    <node concept="37mRI7" id="5rwT_JnuXB9" role="lGtFl">
      <node concept="37mRIm" id="5rwT_JnuXBa" role="37mRID">
        <property role="37mO49" value="6260256764176619974" />
        <node concept="gqqVs" id="5rwT_JnuXB8" role="37mO4d">
          <property role="gqqTZ" value="146.45" />
          <property role="gqqTW" value="315.29998779296875" />
          <property role="gqqTX" value="105.0" />
          <property role="gqqTy" value="92.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="SmAS9iozOi" role="1pap1a">
            <property role="1pa3iD" value="source_port" />
            <property role="2gRgW$" value="1524045102" />
          </node>
          <node concept="1pa3jb" id="SmAS9iozOj" role="1pap1a">
            <property role="1pa3iD" value="target_port" />
            <property role="2gRgW$" value="634210123" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="5rwT_Jnw0S8" role="37mRID">
        <property role="37mO49" value="6260256764176895492" />
        <node concept="gqqVs" id="5rwT_Jnw0S7" role="37mO4d">
          <property role="gqqTZ" value="12.0" />
          <property role="gqqTW" value="92.0" />
          <property role="gqqTX" value="132.0" />
          <property role="gqqTy" value="50.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="SmAS9iozOk" role="1pap1a">
            <property role="1pa3iD" value="source_port" />
            <property role="2gRgW$" value="1346553608" />
          </node>
          <node concept="1pa3jb" id="SmAS9iozOl" role="1pap1a">
            <property role="1pa3iD" value="target_port" />
            <property role="2gRgW$" value="797293368" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ4xw0" role="37mRID">
        <property role="37mO49" value="4232349791877732349" />
        <node concept="2VclpC" id="3EWkVoQ4xvZ" role="37mO4d">
          <node concept="2VclrF" id="3EWkVoQ4xw1" role="2Vcluh">
            <property role="2Vclpx" value="122.99999999999999" />
            <property role="2Vclpz" value="118.99999999999997" />
          </node>
          <node concept="2VclrF" id="3EWkVoQ4QS9" role="2Vcluh">
            <property role="2Vclpx" value="237.0" />
            <property role="2Vclpz" value="96.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ59gr" role="37mRID">
        <property role="37mO49" value="4232349791877872875" />
        <node concept="gqqVs" id="3EWkVoQ59gq" role="37mO4d">
          <property role="gqqTZ" value="353.0" />
          <property role="gqqTW" value="37.0" />
          <property role="gqqTX" value="80.0" />
          <property role="gqqTy" value="30.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ5ez7" role="37mRID">
        <property role="37mO49" value="4232349791877895196" />
        <node concept="gqqVs" id="3EWkVoQ5ez6" role="37mO4d">
          <property role="gqqTZ" value="27.5" />
          <property role="gqqTW" value="188.43333333333334" />
          <property role="gqqTX" value="101.0" />
          <property role="gqqTy" value="83.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="SmAS9iozOm" role="1pap1a">
            <property role="1pa3iD" value="port" />
            <property role="2gRgW$" value="526446233" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYa8Y3" role="1pap1a">
            <property role="1pa3iD" value="60" />
            <property role="2gRgW$" value="1267916779" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYa8Y4" role="1pap1a">
            <property role="1pa3iD" value="81" />
            <property role="2gRgW$" value="1559807760" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ5BRk" role="37mRID">
        <property role="37mO49" value="4232349791878020558" />
        <node concept="gqqVs" id="3EWkVoQ5BRj" role="37mO4d">
          <property role="gqqTZ" value="164.0" />
          <property role="gqqTW" value="82.0" />
          <property role="gqqTX" value="175.0" />
          <property role="gqqTy" value="60.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="SmAS9iozOp" role="1pap1a">
            <property role="1pa3iD" value="port" />
            <property role="2gRgW$" value="906614211" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYa8Y5" role="1pap1a">
            <property role="1pa3iD" value="21" />
            <property role="2gRgW$" value="1622282281" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYa8Y6" role="1pap1a">
            <property role="1pa3iD" value="40" />
            <property role="2gRgW$" value="1302788480" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ6KvH" role="37mRID">
        <property role="37mO49" value="4232349791878318054" />
        <node concept="gqqVs" id="3EWkVoQ6KvG" role="37mO4d">
          <property role="gqqTZ" value="21.450000000000003" />
          <property role="gqqTW" value="315.29998779296875" />
          <property role="gqqTX" value="105.0" />
          <property role="gqqTy" value="83.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="SmAS9iozOs" role="1pap1a">
            <property role="1pa3iD" value="source_port" />
            <property role="2gRgW$" value="1521626159" />
          </node>
          <node concept="1pa3jb" id="SmAS9iozOt" role="1pap1a">
            <property role="1pa3iD" value="target_port" />
            <property role="2gRgW$" value="634210123" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ6Q33" role="37mRID">
        <property role="37mO49" value="4232349791878340799" />
        <node concept="2VclpC" id="3EWkVoQ6Q32" role="37mO4d">
          <node concept="2VclrF" id="3EWkVoQ6Q34" role="2Vcluh">
            <property role="2Vclpx" value="71.48702354002684" />
            <property role="2Vclpz" value="198.4869720796728" />
          </node>
          <node concept="2VclrF" id="3EWkVoQ8Iwa" role="2Vcluh">
            <property role="2Vclpx" value="79.0" />
            <property role="2Vclpz" value="152.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ6Q3s" role="37mRID">
        <property role="37mO49" value="4232349791878340797" />
        <node concept="2VclpC" id="3EWkVoQ6Q3r" role="37mO4d">
          <node concept="2VclrF" id="3EWkVoQ8Iw6" role="2Vcluh">
            <property role="2Vclpx" value="234.5" />
            <property role="2Vclpz" value="322.0" />
          </node>
          <node concept="2VclrF" id="4eD_5l3mJBt" role="2Vcluh">
            <property role="2Vclpx" value="154.1" />
            <property role="2Vclpz" value="322.0" />
          </node>
          <node concept="3ul5H1" id="3$UFsrqoo4l" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3$UFsrqoo4m" role="3ul5Gz">
              <node concept="2VclrF" id="3$UFsrqoo4n" role="3wpmZR">
                <property role="2Vclpx" value="184.33333333333334" />
                <property role="2Vclpz" value="338.58333333333337" />
              </node>
              <node concept="2VclrF" id="3$UFsrqoo4o" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ6Q3Y" role="37mRID">
        <property role="37mO49" value="4232349791878340857" />
        <node concept="2VclpC" id="3EWkVoQ6Q3X" role="37mO4d">
          <node concept="3ul5H1" id="3$UFsrqoo70" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3$UFsrqoo71" role="3ul5Gz">
              <node concept="2VclrF" id="3$UFsrqoo72" role="3wpmZR">
                <property role="2Vclpx" value="105.16666666666667" />
                <property role="2Vclpz" value="215.68333333333334" />
              </node>
              <node concept="2VclrF" id="3$UFsrqoo73" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ6VEf" role="37mRID">
        <property role="37mO49" value="4232349791878363783" />
        <node concept="gqqVs" id="3EWkVoQ6VEe" role="37mO4d">
          <property role="gqqTZ" value="205.05" />
          <property role="gqqTW" value="182.0" />
          <property role="gqqTX" value="101.0" />
          <property role="gqqTy" value="92.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="SmAS9iozOu" role="1pap1a">
            <property role="1pa3iD" value="source_port" />
            <property role="2gRgW$" value="1523655394" />
          </node>
          <node concept="1pa3jb" id="SmAS9iozOv" role="1pap1a">
            <property role="1pa3iD" value="target_port" />
            <property role="2gRgW$" value="633820415" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ6VEQ" role="37mRID">
        <property role="37mO49" value="4232349791878363792" />
        <node concept="gqqVs" id="3EWkVoQ6VEP" role="37mO4d">
          <property role="gqqTZ" value="223.5" />
          <property role="gqqTW" value="12.0" />
          <property role="gqqTX" value="56.0" />
          <property role="gqqTy" value="50.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="SmAS9iozOw" role="1pap1a">
            <property role="1pa3iD" value="source_port" />
            <property role="2gRgW$" value="1465643347" />
          </node>
          <node concept="1pa3jb" id="SmAS9iozOx" role="1pap1a">
            <property role="1pa3iD" value="target_port" />
            <property role="2gRgW$" value="916383107" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ6VFD" role="37mRID">
        <property role="37mO49" value="4232349791878363873" />
        <node concept="2VclpC" id="3EWkVoQ6VFC" role="37mO4d">
          <node concept="2VclrF" id="3EWkVoQ6VFE" role="2Vcluh">
            <property role="2Vclpx" value="144.55" />
            <property role="2Vclpz" value="198.01198012539342" />
          </node>
          <node concept="2VclrF" id="3EWkVoQ8Iwi" role="2Vcluh">
            <property role="2Vclpx" value="374.9" />
            <property role="2Vclpz" value="198.01198012539342" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3EWkVoQ8Syg" role="37mRID">
        <property role="37mO49" value="4232349791878363867" />
        <node concept="2VclpC" id="3EWkVoQ8Syf" role="37mO4d">
          <node concept="3ul5H1" id="3$UFsrqoo5k" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3$UFsrqoo5l" role="3ul5Gz">
              <node concept="2VclrF" id="3$UFsrqoo5m" role="3wpmZR">
                <property role="2Vclpx" value="348.1666666666667" />
                <property role="2Vclpz" value="239.13888888888889" />
              </node>
              <node concept="2VclrF" id="3$UFsrqoo5n" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3$UFsrqoo34" role="37mRID">
        <property role="37mO49" value="4232349791878875269" />
        <node concept="2VclpC" id="3$UFsrqoo33" role="37mO4d">
          <node concept="3ul5H1" id="3$UFsrqoo35" role="3ul5Gx">
            <property role="3ul5GH" value="label" />
            <node concept="3wpmZ1" id="3$UFsrqoo36" role="3ul5Gz">
              <node concept="2VclrF" id="3$UFsrqoo37" role="3wpmZR">
                <property role="2Vclpx" value="78.83333333333333" />
                <property role="2Vclpz" value="338.25" />
              </node>
              <node concept="2VclrF" id="3$UFsrqoo38" role="3wpmZP">
                <property role="2Vclpx" value="0.0" />
                <property role="2Vclpz" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3f8ZVRYa8Y8" role="37mRID">
        <property role="37mO49" value="3731513482754428740" />
        <node concept="2VclpC" id="3f8ZVRYa8Y7" role="37mO4d">
          <node concept="2VclrF" id="3f8ZVRYa8Y9" role="2Vcluh">
            <property role="2Vclpx" value="248.45" />
            <property role="2Vclpz" value="162.0" />
          </node>
          <node concept="2VclrF" id="3f8ZVRYa8Ya" role="2Vcluh">
            <property role="2Vclpx" value="79.0" />
            <property role="2Vclpz" value="162.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3f8ZVRYa8Yc" role="37mRID">
        <property role="37mO49" value="3731513482754428781" />
        <node concept="2VclpC" id="3f8ZVRYa8Yb" role="37mO4d">
          <node concept="2VclrF" id="3f8ZVRYa8Yd" role="2Vcluh">
            <property role="2Vclpx" value="83.05" />
            <property role="2Vclpz" value="295.29998779296875" />
          </node>
          <node concept="2VclrF" id="3f8ZVRYa8Ye" role="2Vcluh">
            <property role="2Vclpx" value="199.95" />
            <property role="2Vclpz" value="295.29998779296875" />
          </node>
        </node>
      </node>
    </node>
    <node concept="21ATtL" id="5rwT_JnuXB6" role="3CrHoS">
      <property role="TrG5h" value="erroneous_speed" />
      <node concept="19SGf9" id="3f8ZVRYa8VT" role="6n8cP">
        <node concept="19SUe$" id="3f8ZVRYa8VU" role="19SJt6">
          <property role="19SUeA" value="Erroneously computed &#10;speed / Erroneous&#10;sensors data." />
        </node>
      </node>
    </node>
    <node concept="21ATtk" id="5rwT_Jnw0S4" role="3CrHoS">
      <property role="TrG5h" value="erroneously braking distance" />
    </node>
    <node concept="cFNQA" id="3EWkVoQ59gs" role="3CrHoS">
      <property role="TrG5h" value="MAIN_PATH_ERROR" />
      <node concept="19SGf9" id="3f8ZVRYa8U1" role="6n8cP">
        <node concept="19SUe$" id="3f8ZVRYa8U2" role="19SJt6">
          <property role="19SUeA" value="Erroneously computed&#10;braking distance." />
        </node>
      </node>
    </node>
    <node concept="cEgko" id="3EWkVoQ5BRe" role="3CrHoS">
      <property role="TrG5h" value="MAIN_PATH_AND_HUMAN_FALLBACK_ERR" />
    </node>
    <node concept="21ATtL" id="3EWkVoQ6KvA" role="3CrHoS">
      <property role="TrG5h" value="erroneous_time" />
      <node concept="19SGf9" id="3f8ZVRYa8Vx" role="6n8cP">
        <node concept="19SUe$" id="3f8ZVRYa8Vy" role="19SJt6">
          <property role="19SUeA" value="Erroneously estimated&#10;time until crash." />
        </node>
      </node>
    </node>
    <node concept="21ATtL" id="3EWkVoQ6VE7" role="3CrHoS">
      <property role="TrG5h" value="driver_not_engaged" />
      <node concept="19SGf9" id="3f8ZVRYa8Uv" role="6n8cP">
        <node concept="19SUe$" id="3f8ZVRYa8Uw" role="19SJt6">
          <property role="19SUeA" value="Human error / &#10;Misdetected drivers'&#10;readiness. " />
        </node>
      </node>
    </node>
    <node concept="21ATtk" id="3EWkVoQ6VEg" role="3CrHoS">
      <property role="TrG5h" value="collision" />
    </node>
    <node concept="21oswF" id="3f8ZVRYa8We" role="3CrHoS">
      <ref role="21oszt" node="5rwT_Jnw0S4" resolve="erroneously braking distance" />
      <ref role="21oszj" node="3EWkVoQ59gs" resolve="MAIN_PATH_ERROR" />
    </node>
    <node concept="21oswF" id="3f8ZVRYa8Wv" role="3CrHoS">
      <ref role="21oszt" node="3EWkVoQ6VEg" resolve="collision" />
      <ref role="21oszj" node="3EWkVoQ5BRe" resolve="MAIN_PATH_AND_HUMAN_FALLBACK_ERR" />
    </node>
    <node concept="21oswF" id="3f8ZVRYa8WL" role="3CrHoS">
      <ref role="21oszt" node="3EWkVoQ5BRe" resolve="MAIN_PATH_AND_HUMAN_FALLBACK_ERR" />
      <ref role="21oszj" node="3EWkVoQ6VE7" resolve="driver_not_engaged" />
    </node>
    <node concept="21oswF" id="3f8ZVRYa8X4" role="3CrHoS">
      <ref role="21oszt" node="3EWkVoQ5BRe" resolve="MAIN_PATH_AND_HUMAN_FALLBACK_ERR" />
      <ref role="21oszj" node="3EWkVoQ59gs" resolve="MAIN_PATH_ERROR" />
    </node>
    <node concept="21oswF" id="3f8ZVRYa8Xo" role="3CrHoS">
      <ref role="21oszt" node="3EWkVoQ59gs" resolve="MAIN_PATH_ERROR" />
      <ref role="21oszj" node="3EWkVoQ6KvA" resolve="erroneous_time" />
    </node>
    <node concept="21oswF" id="3f8ZVRYa8XH" role="3CrHoS">
      <ref role="21oszt" node="3EWkVoQ59gs" resolve="MAIN_PATH_ERROR" />
      <ref role="21oszj" node="5rwT_JnuXB6" resolve="erroneous_speed" />
    </node>
  </node>
  <node concept="2HdtXS" id="1TeaL8RdujH">
    <property role="TrG5h" value="_200_arch" />
    <property role="3GE5qa" value="_20_hiphops" />
    <node concept="1sau8P" id="62cfieENpwe" role="2HcuB8">
      <property role="TrG5h" value="speed_t" />
      <node concept="1yFZfx" id="62cfieENpxa" role="1sau8K" />
    </node>
    <node concept="1sau8P" id="3bh1RFvziBC" role="2HcuB8">
      <property role="TrG5h" value="plausibilizedSpeed_t" />
      <node concept="1yFZfx" id="3bh1RFvziBD" role="1sau8K" />
    </node>
    <node concept="1sau8P" id="3bh1RFvziA4" role="2HcuB8">
      <property role="TrG5h" value="brake_cmd_t" />
      <node concept="1yFZfx" id="3bh1RFvziA5" role="1sau8K" />
    </node>
    <node concept="2SQmWS" id="62cfieENpxg" role="2HcuB8" />
    <node concept="2dDAV0" id="62cfieENdUn" role="2HcuB8">
      <property role="TrG5h" value="System" />
      <node concept="3Ug1AV" id="62cfieENdWS" role="3UgYNK">
        <property role="TrG5h" value="dsp" />
        <node concept="3Ug1AZ" id="62cfieENdWQ" role="3Ug1A_">
          <ref role="3Ug1AY" node="1TeaL8RdujJ" resolve="DeviceSensorsPlausibilization" />
        </node>
      </node>
      <node concept="3Ug1AV" id="62cfieENdZr" role="3UgYNK">
        <property role="TrG5h" value="br" />
        <node concept="3Ug1AZ" id="62cfieENdZp" role="3Ug1A_">
          <ref role="3Ug1AY" node="62cfieENdX5" resolve="Braking" />
        </node>
      </node>
      <node concept="3Ug1$w" id="62cfieENdZI" role="3UgYNK">
        <property role="TrG5h" value="c1" />
        <node concept="3Ug1Ap" id="3txYam0cAc2" role="3Ug1$A">
          <ref role="3Ug1Ao" node="62cfieENdUz" resolve="speed" />
        </node>
        <node concept="3Ug1GC" id="62cfieENdZW" role="3Ug1_r">
          <ref role="3Ug1Ha" node="1TeaL8Rdukn" resolve="speed" />
          <node concept="3Ug1GJ" id="62cfieENdZV" role="3Ug1Hl">
            <ref role="3Ug1GI" node="62cfieENdWS" resolve="dsp" />
          </node>
        </node>
      </node>
      <node concept="3Ug1$w" id="62cfieENe0w" role="3UgYNK">
        <property role="TrG5h" value="c2" />
        <node concept="3Ug1GC" id="62cfieENe0H" role="3Ug1$A">
          <ref role="3Ug1Ha" node="1TeaL8RdujM" resolve="plausibilizedSpeed" />
          <node concept="3Ug1GJ" id="62cfieENe0G" role="3Ug1Hl">
            <ref role="3Ug1GI" node="62cfieENdWS" resolve="dsp" />
          </node>
        </node>
        <node concept="3Ug1GC" id="62cfieENe0R" role="3Ug1_r">
          <ref role="3Ug1Ha" node="62cfieENdX6" resolve="speed" />
          <node concept="3Ug1GJ" id="62cfieENe0Q" role="3Ug1Hl">
            <ref role="3Ug1GI" node="62cfieENdZr" resolve="br" />
          </node>
        </node>
      </node>
      <node concept="3Ug1$w" id="62cfieENe1C" role="3UgYNK">
        <property role="TrG5h" value="c3" />
        <node concept="3Ug1GC" id="62cfieENe1U" role="3Ug1$A">
          <ref role="3Ug1Ha" node="62cfieENdX8" resolve="brakeCmd" />
          <node concept="3Ug1GJ" id="62cfieENe1T" role="3Ug1Hl">
            <ref role="3Ug1GI" node="62cfieENdZr" resolve="br" />
          </node>
        </node>
        <node concept="3Ug1Ap" id="62cfieENe23" role="3Ug1_r">
          <ref role="3Ug1Ao" node="62cfieENdVb" resolve="brakeCmd" />
        </node>
      </node>
      <node concept="3UnI81" id="62cfieENdUz" role="3UnI9m">
        <property role="TrG5h" value="speed" />
        <node concept="1savGX" id="1xKUpdtGjzr" role="3UnI80">
          <ref role="1savGW" node="62cfieENpwe" resolve="speed_t" />
        </node>
      </node>
      <node concept="3UnI9n" id="62cfieENdVb" role="3UnI90">
        <property role="TrG5h" value="brakeCmd" />
        <node concept="1savGX" id="3bh1RFvziB0" role="3UnI80">
          <ref role="1savGW" node="3bh1RFvziA4" resolve="brake_cmd_t" />
        </node>
      </node>
      <node concept="37mRI7" id="62cfieENdWb" role="lGtFl">
        <node concept="37mRIm" id="62cfieENdWc" role="37mRID">
          <property role="37mO49" value="box_6957002747779276451" />
          <node concept="gqqVs" id="62cfieENdWa" role="37mO4d">
            <property role="gqqTZ" value="12.0" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="53.0" />
            <property role="gqqTy" value="32.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="62cfieENdWd" role="1pap1a">
              <property role="1pa3iD" value="" />
              <property role="2gRgW$" value="2147483646" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="62cfieENdWf" role="37mRID">
          <property role="37mO49" value="box_6957002747779276491" />
          <node concept="gqqVs" id="62cfieENdWe" role="37mO4d">
            <property role="gqqTZ" value="356.0" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="77.0" />
            <property role="gqqTy" value="32.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="62cfieENdWg" role="1pap1a">
              <property role="1pa3iD" value="" />
              <property role="2gRgW$" value="1073741823" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="5g1NREKNQ$2" role="37mRID">
          <property role="37mO49" value="6957002747779276600" />
          <node concept="gqqVs" id="5g1NREKNQ$1" role="37mO4d">
            <property role="gqqTZ" value="142.0" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="34.0" />
            <property role="gqqTy" value="32.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="5g1NREKNQ$3" role="1pap1a">
              <property role="1pa3iD" value="speed" />
              <property role="2gRgW$" value="1073741823" />
            </node>
            <node concept="1pa3jb" id="5g1NREKNQ$4" role="1pap1a">
              <property role="1pa3iD" value="plausibilizedSpeed" />
              <property role="2gRgW$" value="2147483646" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="5g1NREKNQ$6" role="37mRID">
          <property role="37mO49" value="6957002747779276763" />
          <node concept="gqqVs" id="5g1NREKNQ$5" role="37mO4d">
            <property role="gqqTZ" value="253.0" />
            <property role="gqqTW" value="12.0" />
            <property role="gqqTX" value="26.0" />
            <property role="gqqTy" value="32.0" />
            <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
            <node concept="1pa3jb" id="5g1NREKNQ$7" role="1pap1a">
              <property role="1pa3iD" value="speed" />
              <property role="2gRgW$" value="1073741823" />
            </node>
            <node concept="1pa3jb" id="5g1NREKNQ$8" role="1pap1a">
              <property role="1pa3iD" value="brakeCmd" />
              <property role="2gRgW$" value="2147483646" />
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="5g1NREKNQ$a" role="37mRID">
          <property role="37mO49" value="edge_6957002747779276832" />
          <node concept="2VclpC" id="5g1NREKNQ$9" role="37mO4d">
            <node concept="3ul5H1" id="5g1NREKNQ$b" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="5g1NREKNQ$c" role="3ul5Gz">
                <node concept="2VclrF" id="5g1NREKNQ$d" role="3wpmZR">
                  <property role="2Vclpx" value="208.0" />
                  <property role="2Vclpz" value="39.0" />
                </node>
                <node concept="2VclrF" id="5g1NREKNQ$e" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="5g1NREKNQ$g" role="37mRID">
          <property role="37mO49" value="edge_6957002747779276782" />
          <node concept="2VclpC" id="5g1NREKNQ$f" role="37mO4d">
            <node concept="3ul5H1" id="5g1NREKNQ$h" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="5g1NREKNQ$i" role="3ul5Gz">
                <node concept="2VclrF" id="5g1NREKNQ$j" role="3wpmZR">
                  <property role="2Vclpx" value="97.0" />
                  <property role="2Vclpz" value="39.0" />
                </node>
                <node concept="2VclrF" id="5g1NREKNQ$k" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37mRIm" id="5g1NREKNQ$m" role="37mRID">
          <property role="37mO49" value="edge_6957002747779276904" />
          <node concept="2VclpC" id="5g1NREKNQ$l" role="37mO4d">
            <node concept="3ul5H1" id="5g1NREKNQ$n" role="3ul5Gx">
              <property role="3ul5GH" value="label" />
              <node concept="3wpmZ1" id="5g1NREKNQ$o" role="3ul5Gz">
                <node concept="2VclrF" id="5g1NREKNQ$p" role="3wpmZR">
                  <property role="2Vclpx" value="311.0" />
                  <property role="2Vclpz" value="39.0" />
                </node>
                <node concept="2VclrF" id="5g1NREKNQ$q" role="3wpmZP">
                  <property role="2Vclpx" value="0.0" />
                  <property role="2Vclpz" value="0.0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="3I9hGreJfQv" role="2HcuB8" />
    <node concept="2dDAVa" id="1TeaL8RdujJ" role="2HcuB8">
      <property role="TrG5h" value="DeviceSensorsPlausibilization" />
      <node concept="3UnI81" id="1TeaL8Rdukn" role="3UnI9m">
        <property role="TrG5h" value="speed" />
        <node concept="1savGX" id="62cfieENpy8" role="3UnI80">
          <ref role="1savGW" node="62cfieENpwe" resolve="speed_t" />
        </node>
      </node>
      <node concept="3UnI9n" id="1TeaL8RdujM" role="3UnI90">
        <property role="TrG5h" value="plausibilizedSpeed" />
        <node concept="1savGX" id="3bh1RFvziCx" role="3UnI80">
          <ref role="1savGW" node="3bh1RFvziBC" resolve="plausibilizedSpeed_t" />
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="62cfieENdXL" role="2HcuB8" />
    <node concept="2dDAVa" id="62cfieENdX5" role="2HcuB8">
      <property role="TrG5h" value="Braking" />
      <node concept="3UnI81" id="62cfieENdX6" role="3UnI9m">
        <property role="TrG5h" value="speed" />
        <node concept="1savGX" id="3bh1RFvziCE" role="3UnI80">
          <ref role="1savGW" node="3bh1RFvziBC" resolve="plausibilizedSpeed_t" />
        </node>
      </node>
      <node concept="3UnI9n" id="62cfieENdX8" role="3UnI90">
        <property role="TrG5h" value="brakeCmd" />
        <node concept="1savGX" id="3bh1RFvziBi" role="3UnI80">
          <ref role="1savGW" node="3bh1RFvziA4" resolve="brake_cmd_t" />
        </node>
      </node>
    </node>
    <node concept="2SQmWS" id="62cfieENdTT" role="2HcuB8" />
    <node concept="2SQmWS" id="62cfieENdU2" role="2HcuB8" />
    <node concept="2SQmWS" id="1TeaL8Rdulc" role="2HcuB8" />
    <node concept="2SQmWS" id="1TeaL8Rdulj" role="2HcuB8" />
  </node>
  <node concept="1POhia" id="4eD_5l3mJwO">
    <property role="TrG5h" value="_020_failure_modes_of_components" />
    <property role="3GE5qa" value="_00_dfmea" />
    <node concept="2VUHfc" id="4eD_5l3mJwQ" role="1POhhj">
      <ref role="2VUHf6" node="42QGQFVn3Bd" resolve="HDCamera" />
      <node concept="2VUHfq" id="4eD_5l3mJwS" role="2VUBrq">
        <property role="TrG5h" value="bad pixel" />
        <node concept="19SGf9" id="4eD_5l3mJwU" role="2VUHfi">
          <node concept="19SUe$" id="4eD_5l3mJwV" role="19SJt6">
            <property role="19SUeA" value="a pixel is innactive" />
          </node>
        </node>
      </node>
      <node concept="2VUHfq" id="4eD_5l3mJx1" role="2VUBrq">
        <property role="TrG5h" value="distorted image" />
        <node concept="19SGf9" id="4eD_5l3mJx2" role="2VUHfi">
          <node concept="19SUe$" id="4eD_5l3mJx3" role="19SJt6">
            <property role="19SUeA" value="image is distorted" />
          </node>
        </node>
      </node>
      <node concept="2VUHfq" id="4eD_5l3mJxa" role="2VUBrq">
        <property role="TrG5h" value="low contrast" />
        <node concept="19SGf9" id="4eD_5l3mJxb" role="2VUHfi">
          <node concept="19SUe$" id="4eD_5l3mJxc" role="19SJt6" />
        </node>
      </node>
    </node>
    <node concept="2VURXa" id="4eD_5l3mJxI" role="1POhhj" />
    <node concept="2VUHfc" id="4eD_5l3mJy7" role="1POhhj">
      <ref role="2VUHf6" node="42QGQFVn3Dm" resolve="ObjectDetection" />
      <node concept="2VUHfq" id="4eD_5l3mJy9" role="2VUBrq">
        <property role="TrG5h" value="erroneous algorithm" />
        <node concept="19SGf9" id="4eD_5l3mJyb" role="2VUHfi">
          <node concept="19SUe$" id="4eD_5l3mJyc" role="19SJt6" />
        </node>
      </node>
      <node concept="2VUHfq" id="4eD_5l3mJyt" role="2VUBrq">
        <property role="TrG5h" value="low robustness of algorithm" />
        <node concept="19SGf9" id="4eD_5l3mJyu" role="2VUHfi">
          <node concept="19SUe$" id="4eD_5l3mJyv" role="19SJt6" />
        </node>
      </node>
    </node>
    <node concept="2VURXa" id="4eD_5l3mJ_Y" role="1POhhj" />
    <node concept="2VUHfc" id="4eD_5l3mJ_u" role="1POhhj">
      <ref role="2VUHf6" node="4eD_5l3mJo_" resolve="Manipulator" />
      <node concept="2VUHfq" id="4eD_5l3mJ_v" role="2VUBrq">
        <property role="TrG5h" value="force too high" />
        <node concept="19SGf9" id="4eD_5l3mJ_w" role="2VUHfi">
          <node concept="19SUe$" id="4eD_5l3mJ_x" role="19SJt6">
            <property role="19SUeA" value="the manipulator grabs teh object with a too high force" />
          </node>
        </node>
      </node>
      <node concept="2VUHfq" id="4eD_5l3mJ_y" role="2VUBrq">
        <property role="TrG5h" value="wrong coordinates" />
        <node concept="19SGf9" id="4eD_5l3mJ_z" role="2VUHfi">
          <node concept="19SUe$" id="4eD_5l3mJ_$" role="19SJt6">
            <property role="19SUeA" value="the manipulator places an object at wrong coordinates" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1POhia" id="4eD_5l3mJyA">
    <property role="TrG5h" value="_030_failure_effects_on_system" />
    <property role="3GE5qa" value="_00_dfmea" />
    <node concept="2VUvrO" id="4eD_5l3mJz1" role="1POhhj">
      <node concept="2VUvrc" id="4eD_5l3mJz3" role="2VUkHK">
        <property role="TrG5h" value="erroneous packaging" />
        <node concept="19SGf9" id="4eD_5l3mJz5" role="2VUvr4">
          <node concept="19SUe$" id="4eD_5l3mJz6" role="19SJt6">
            <property role="19SUeA" value="the objects are erroneously packaged together" />
          </node>
        </node>
      </node>
      <node concept="2VUvrc" id="4eD_5l3mJzn" role="2VUkHK">
        <property role="TrG5h" value="misplaced object" />
        <node concept="19SGf9" id="4eD_5l3mJzo" role="2VUvr4">
          <node concept="19SUe$" id="4eD_5l3mJzp" role="19SJt6">
            <property role="19SUeA" value="the object is miplaced in a wrong package" />
          </node>
        </node>
      </node>
      <node concept="2VUvrc" id="4eD_5l3mJzw" role="2VUkHK">
        <property role="TrG5h" value="damaged object" />
        <node concept="19SGf9" id="4eD_5l3mJzx" role="2VUvr4">
          <node concept="19SUe$" id="4eD_5l3mJzy" role="19SJt6">
            <property role="19SUeA" value="the object is damaged" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1POhia" id="4eD_5l3mJzG">
    <property role="TrG5h" value="_040_dfmea" />
    <property role="3GE5qa" value="_00_dfmea" />
    <node concept="1PLMAg" id="4eD_5l3mJzR" role="1POhhj">
      <ref role="1POnuR" node="42QGQFVn3Fg" resolve="SmartFactoryPackagingRobot" />
      <node concept="1PLGxJ" id="4eD_5l3mJzY" role="1PLElB">
        <ref role="1PLGwE" node="42QGQFVn3FJ" resolve="camera" />
        <node concept="1PLKG7" id="4eD_5l3mJ$2" role="1PLCo$">
          <ref role="1jQAtN" node="4eD_5l3mJwS" resolve="bad pixel" />
          <node concept="1PNyZM" id="4eD_5l3mJ$4" role="1PLCoy">
            <ref role="2VPQEx" node="4eD_5l3mJz3" resolve="erroneous packaging" />
          </node>
        </node>
        <node concept="1PLKG7" id="4eD_5l3mJ$8" role="1PLCo$">
          <ref role="1jQAtN" node="4eD_5l3mJx1" resolve="distorted image" />
          <node concept="1PNyZM" id="4eD_5l3mJ$c" role="1PLCoy">
            <ref role="2VPQEx" node="4eD_5l3mJzn" resolve="misplaced object" />
          </node>
          <node concept="1PNyZM" id="4eD_5l3mJ$h" role="1PLCoy">
            <ref role="2VPQEx" node="4eD_5l3mJz3" resolve="erroneous packaging" />
          </node>
        </node>
      </node>
      <node concept="1PLGxJ" id="4eD_5l3mJ$l" role="1PLElB">
        <ref role="1PLGwE" node="42QGQFVn3FY" resolve="objects_detector" />
        <node concept="1PLKG7" id="4eD_5l3mJ$v" role="1PLCo$">
          <ref role="1jQAtN" node="4eD_5l3mJy9" resolve="erroneous algorithm" />
          <node concept="1PNyZM" id="4eD_5l3mJ$x" role="1PLCoy">
            <ref role="2VPQEx" node="4eD_5l3mJzn" resolve="misplaced object" />
          </node>
        </node>
        <node concept="1PLKG7" id="4eD_5l3mJ$U" role="1PLCo$">
          <ref role="1jQAtN" node="4eD_5l3mJyt" resolve="low robustness of algorithm" />
          <node concept="1PNyZM" id="4eD_5l3mJ$Y" role="1PLCoy">
            <ref role="2VPQEx" node="4eD_5l3mJz3" resolve="erroneous packaging" />
          </node>
        </node>
      </node>
      <node concept="1PLGxJ" id="4eD_5l3mJ_0" role="1PLElB">
        <ref role="1PLGwE" node="4eD_5l3mJsy" resolve="effector" />
        <node concept="1PLKG7" id="4eD_5l3mJ_f" role="1PLCo$">
          <ref role="1jQAtN" node="4eD_5l3mJ_v" resolve="force too high" />
          <node concept="1PNyZM" id="4eD_5l3mJAp" role="1PLCoy">
            <ref role="2VPQEx" node="4eD_5l3mJzw" resolve="damaged object" />
          </node>
        </node>
        <node concept="1PLKG7" id="4eD_5l3mJB3" role="1PLCo$">
          <ref role="1jQAtN" node="4eD_5l3mJ_y" resolve="wrong coordinates" />
          <node concept="1PNyZM" id="4eD_5l3mJB7" role="1PLCoy">
            <ref role="2VPQEx" node="4eD_5l3mJz3" resolve="erroneous packaging" />
          </node>
          <node concept="1PNyZM" id="4eD_5l3mJBc" role="1PLCoy">
            <ref role="2VPQEx" node="4eD_5l3mJzn" resolve="misplaced object" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1POhia" id="1TeaL8RdKfy">
    <property role="TrG5h" value="_210_failure_modes" />
    <property role="3GE5qa" value="_20_hiphops" />
    <node concept="Du1I4" id="62cfieENIh2" role="1POhhj">
      <node concept="2VUHfq" id="62cfieENIji" role="Du1I9">
        <property role="TrG5h" value="speed too low" />
        <node concept="19SGf9" id="62cfieENIjm" role="2VUHfi">
          <node concept="19SUe$" id="62cfieENIjn" role="19SJt6" />
        </node>
      </node>
      <node concept="2VUHfq" id="62cfieENIjB" role="Du1I9">
        <property role="TrG5h" value="speed too high" />
        <node concept="19SGf9" id="62cfieENIjF" role="2VUHfi">
          <node concept="19SUe$" id="62cfieENIjG" role="19SJt6" />
        </node>
      </node>
      <node concept="1savGX" id="62cfieENIia" role="3agqmW">
        <ref role="1savGW" node="62cfieENpwe" resolve="speed_t" />
      </node>
    </node>
    <node concept="2VURXa" id="62cfieEOvFI" role="1POhhj" />
    <node concept="Du1I4" id="62cfieEOvEB" role="1POhhj">
      <node concept="2VUHfq" id="62cfieEOvEC" role="Du1I9">
        <property role="TrG5h" value="speed innacurate" />
        <node concept="19SGf9" id="62cfieEOvED" role="2VUHfi">
          <node concept="19SUe$" id="62cfieEOvEE" role="19SJt6" />
        </node>
      </node>
      <node concept="1savGX" id="3bh1RFvziCY" role="3agqmW">
        <ref role="1savGW" node="3bh1RFvziBC" resolve="plausibilizedSpeed_t" />
      </node>
    </node>
    <node concept="2VURXa" id="3bh1RFvziE1" role="1POhhj" />
    <node concept="Du1I4" id="3bh1RFvziD4" role="1POhhj">
      <node concept="2VUHfq" id="3bh1RFvziD5" role="Du1I9">
        <property role="TrG5h" value="brake force innacurate" />
        <node concept="19SGf9" id="3bh1RFvziD6" role="2VUHfi">
          <node concept="19SUe$" id="3bh1RFvziD7" role="19SJt6" />
        </node>
      </node>
      <node concept="1savGX" id="3bh1RFvziEX" role="3agqmW">
        <ref role="1savGW" node="3bh1RFvziA4" resolve="brake_cmd_t" />
      </node>
    </node>
    <node concept="2VURXa" id="5g1NREKNQJV" role="1POhhj" />
    <node concept="2VUHfc" id="5g1NREKNQIM" role="1POhhj">
      <ref role="2VUHf6" node="1TeaL8RdujJ" resolve="DeviceSensorsPlausibilization" />
      <node concept="2VUHfq" id="5g1NREKNQIO" role="2VUBrq">
        <property role="TrG5h" value="innacurate_computation" />
        <node concept="19SGf9" id="5g1NREKNQIQ" role="2VUHfi">
          <node concept="19SUe$" id="5g1NREKNQIR" role="19SJt6">
            <property role="19SUeA" value="plausibilization mechanism broken" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2VURXa" id="1TeaL8RdXqm" role="1POhhj" />
  </node>
  <node concept="1POhia" id="4eD_5l3mJEf">
    <property role="TrG5h" value="_220_IFMEAs" />
    <property role="3GE5qa" value="_20_hiphops" />
    <node concept="DuJXM" id="1TeaL8RdXqH" role="1POhhj">
      <ref role="DuJYV" node="1TeaL8RdujJ" resolve="DeviceSensorsPlausibilization" />
      <node concept="DtCCM" id="1f_hJh2rmtB" role="DuvRR">
        <node concept="2vqzn0" id="4TCu33h197y" role="1hIEvS">
          <node concept="DtHRJ" id="1f_hJh2rmwf" role="2H9Iav">
            <ref role="DtHRG" node="62cfieENIji" resolve="speed too low" />
            <node concept="3Ug1Ap" id="1f_hJh2rmvv" role="3anSQx">
              <ref role="3Ug1Ao" node="1TeaL8Rdukn" resolve="speed" />
            </node>
          </node>
          <node concept="DtHRJ" id="1f_hJh2rmww" role="2H9Ial">
            <ref role="DtHRG" node="62cfieENIjB" resolve="speed too high" />
            <node concept="3Ug1Ap" id="1f_hJh2rmwx" role="3anSQx">
              <ref role="3Ug1Ao" node="1TeaL8Rdukn" resolve="speed" />
            </node>
          </node>
        </node>
        <node concept="3$NFnr" id="1f_hJh2rmur" role="1hIEvT">
          <ref role="3$NFno" node="5g1NREKNQIO" resolve="innacurate_computation" />
        </node>
        <node concept="DtHRJ" id="1f_hJh2rmv5" role="1hIEvZ">
          <ref role="DtHRG" node="62cfieEOvEC" resolve="speed innacurate" />
          <node concept="3Ug1Ap" id="1f_hJh2rmv3" role="3anSQx">
            <ref role="3Ug1Ao" node="1TeaL8RdujM" resolve="plausibilizedSpeed" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aixLP" id="6kDcQMvl6Z" role="1POhhj">
      <node concept="21ASy4" id="6kDcQMvl6G" role="3aixLU">
        <node concept="21ATtk" id="6kDcQMvl6H" role="3CrHoS">
          <property role="TrG5h" value="plausibilizedSpeed__speed innacurate" />
        </node>
        <node concept="21ATtL" id="6kDcQMvl6R" role="3CrHoS">
          <property role="TrG5h" value="speed__speed too low" />
        </node>
        <node concept="21oswF" id="6kDcQMvl6S" role="3CrHoS">
          <ref role="21oszt" node="6kDcQMvl6Q" resolve="Or Gate 1" />
          <ref role="21oszj" node="6kDcQMvl6R" resolve="speed__speed too low" />
        </node>
        <node concept="21ATtL" id="6kDcQMvl6T" role="3CrHoS">
          <property role="TrG5h" value="speed__speed too high" />
        </node>
        <node concept="21oswF" id="6kDcQMvl6U" role="3CrHoS">
          <ref role="21oszt" node="6kDcQMvl6Q" resolve="Or Gate 1" />
          <ref role="21oszj" node="6kDcQMvl6T" resolve="speed__speed too high" />
        </node>
        <node concept="cFNQA" id="6kDcQMvl6Q" role="3CrHoS">
          <property role="TrG5h" value="Or Gate 1" />
        </node>
        <node concept="21oswF" id="6kDcQMvl6V" role="3CrHoS">
          <ref role="21oszt" node="6kDcQMvl6P" resolve="Or Gate 2" />
          <ref role="21oszj" node="6kDcQMvl6Q" resolve="Or Gate 1" />
        </node>
        <node concept="21ATtL" id="6kDcQMvl6W" role="3CrHoS">
          <property role="TrG5h" value="innacurate_computation" />
        </node>
        <node concept="21oswF" id="6kDcQMvl6X" role="3CrHoS">
          <ref role="21oszt" node="6kDcQMvl6P" resolve="Or Gate 2" />
          <ref role="21oszj" node="6kDcQMvl6W" resolve="innacurate_computation" />
        </node>
        <node concept="cFNQA" id="6kDcQMvl6P" role="3CrHoS">
          <property role="TrG5h" value="Or Gate 2" />
        </node>
        <node concept="21oswF" id="6kDcQMvl6Y" role="3CrHoS">
          <ref role="21oszt" node="6kDcQMvl6H" resolve="plausibilizedSpeed__speed innacurate" />
          <ref role="21oszj" node="6kDcQMvl6P" resolve="Or Gate 2" />
        </node>
        <node concept="37mRI7" id="6kDcQMvl82" role="lGtFl">
          <node concept="37mRIm" id="6kDcQMvl83" role="37mRID">
            <property role="37mO49" value="113897093960913325" />
            <node concept="gqqVs" id="6kDcQMvl81" role="37mO4d">
              <property role="gqqTZ" value="12.0" />
              <property role="gqqTW" value="12.0" />
              <property role="gqqTX" value="165.0" />
              <property role="gqqTy" value="50.0" />
              <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
              <node concept="1pa3jb" id="6kDcQMvl84" role="1pap1a">
                <property role="1pa3iD" value="target_port" />
                <property role="2gRgW$" value="798876775" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvl85" role="1pap1a">
                <property role="1pa3iD" value="source_port" />
                <property role="2gRgW$" value="1348137015" />
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="6kDcQMvl87" role="37mRID">
            <property role="37mO49" value="113897093960913335" />
            <node concept="gqqVs" id="6kDcQMvl86" role="37mO4d">
              <property role="gqqTZ" value="36.400000000000006" />
              <property role="gqqTW" value="282.8" />
              <property role="gqqTX" value="100.0" />
              <property role="gqqTy" value="50.0" />
              <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
              <node concept="1pa3jb" id="6kDcQMvl88" role="1pap1a">
                <property role="1pa3iD" value="target_port" />
                <property role="2gRgW$" value="633718213" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvl89" role="1pap1a">
                <property role="1pa3iD" value="source_port" />
                <property role="2gRgW$" value="1505101000" />
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="6kDcQMvl8b" role="37mRID">
            <property role="37mO49" value="113897093960913337" />
            <node concept="gqqVs" id="6kDcQMvl8a" role="37mO4d">
              <property role="gqqTZ" value="156.4" />
              <property role="gqqTW" value="282.8" />
              <property role="gqqTX" value="104.0" />
              <property role="gqqTy" value="50.0" />
              <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
              <node concept="1pa3jb" id="6kDcQMvl8c" role="1pap1a">
                <property role="1pa3iD" value="target_port" />
                <property role="2gRgW$" value="634115453" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvl8d" role="1pap1a">
                <property role="1pa3iD" value="source_port" />
                <property role="2gRgW$" value="1505498241" />
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="6kDcQMvl8f" role="37mRID">
            <property role="37mO49" value="113897093960913334" />
            <node concept="gqqVs" id="6kDcQMvl8e" role="37mO4d">
              <property role="gqqTZ" value="60.45" />
              <property role="gqqTW" value="182.0" />
              <property role="gqqTX" value="60.0" />
              <property role="gqqTy" value="60.0" />
              <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
              <node concept="1pa3jb" id="6kDcQMvl8g" role="1pap1a">
                <property role="1pa3iD" value="port" />
                <property role="2gRgW$" value="1014859206" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvl8h" role="1pap1a">
                <property role="1pa3iD" value="36" />
                <property role="2gRgW$" value="1367462166" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvl8i" role="1pap1a">
                <property role="1pa3iD" value="38" />
                <property role="2gRgW$" value="1731148913" />
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="6kDcQMvl8k" role="37mRID">
            <property role="37mO49" value="113897093960913340" />
            <node concept="gqqVs" id="6kDcQMvl8j" role="37mO4d">
              <property role="gqqTZ" value="140.45" />
              <property role="gqqTW" value="182.8" />
              <property role="gqqTX" value="108.0" />
              <property role="gqqTy" value="50.0" />
              <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
              <node concept="1pa3jb" id="6kDcQMvl8l" role="1pap1a">
                <property role="1pa3iD" value="target_port" />
                <property role="2gRgW$" value="634483804" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvl8m" role="1pap1a">
                <property role="1pa3iD" value="source_port" />
                <property role="2gRgW$" value="1505866591" />
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="6kDcQMvl8o" role="37mRID">
            <property role="37mO49" value="113897093960913333" />
            <node concept="gqqVs" id="6kDcQMvl8n" role="37mO4d">
              <property role="gqqTZ" value="64.5" />
              <property role="gqqTW" value="82.0" />
              <property role="gqqTX" value="60.0" />
              <property role="gqqTy" value="60.0" />
              <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
              <node concept="1pa3jb" id="6kDcQMvl8p" role="1pap1a">
                <property role="1pa3iD" value="port" />
                <property role="2gRgW$" value="1014859206" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvl8q" role="1pap1a">
                <property role="1pa3iD" value="39" />
                <property role="2gRgW$" value="1367462166" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvl8r" role="1pap1a">
                <property role="1pa3iD" value="41" />
                <property role="2gRgW$" value="1731148913" />
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="6kDcQMvl8t" role="37mRID">
            <property role="37mO49" value="113897093960913338" />
            <node concept="2VclpC" id="6kDcQMvl8s" role="37mO4d">
              <node concept="2VclrF" id="6kDcQMvl8u" role="2Vcluh">
                <property role="2Vclpx" value="95.5" />
                <property role="2Vclpz" value="262.0" />
              </node>
              <node concept="2VclrF" id="6kDcQMvl8v" role="2Vcluh">
                <property role="2Vclpx" value="209.4" />
                <property role="2Vclpz" value="262.0" />
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="6kDcQMvl8x" role="37mRID">
            <property role="37mO49" value="113897093960913341" />
            <node concept="2VclpC" id="6kDcQMvl8w" role="37mO4d">
              <node concept="2VclrF" id="6kDcQMvl8y" role="2Vcluh">
                <property role="2Vclpx" value="99.55" />
                <property role="2Vclpz" value="162.0" />
              </node>
              <node concept="2VclrF" id="6kDcQMvl8z" role="2Vcluh">
                <property role="2Vclpx" value="195.45" />
                <property role="2Vclpz" value="162.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2VURXa" id="3bh1RFvziHa" role="1POhhj" />
    <node concept="DuJXM" id="3bh1RFvziFV" role="1POhhj">
      <ref role="DuJYV" node="62cfieENdX5" resolve="Braking" />
      <node concept="DtCCM" id="1f_hJh2rmwJ" role="DuvRR">
        <node concept="DtHRJ" id="1f_hJh2rmx1" role="1hIEvZ">
          <ref role="DtHRG" node="3bh1RFvziD5" resolve="brake force innacurate" />
          <node concept="3Ug1Ap" id="1f_hJh2rmwZ" role="3anSQx">
            <ref role="3Ug1Ao" node="62cfieENdX8" resolve="brakeCmd" />
          </node>
        </node>
        <node concept="DtHRJ" id="1f_hJh2rmxm" role="1hIEvS">
          <ref role="DtHRG" node="62cfieEOvEC" resolve="speed innacurate" />
          <node concept="3Ug1Ap" id="1f_hJh2rmxd" role="3anSQx">
            <ref role="3Ug1Ao" node="62cfieENdX6" resolve="speed" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3aixLP" id="6kDcQMvlcE" role="1POhhj">
      <node concept="21ASy4" id="6kDcQMvlcA" role="3aixLU">
        <node concept="21ATtk" id="6kDcQMvlcB" role="3CrHoS">
          <property role="TrG5h" value="brakeCmd__brake force innacurate" />
        </node>
        <node concept="21ATtL" id="6kDcQMvlcC" role="3CrHoS">
          <property role="TrG5h" value="speed__speed innacurate" />
        </node>
        <node concept="21oswF" id="6kDcQMvlcD" role="3CrHoS">
          <ref role="21oszt" node="6kDcQMvlcB" resolve="brakeCmd__brake force innacurate" />
          <ref role="21oszj" node="6kDcQMvlcC" resolve="speed__speed innacurate" />
        </node>
        <node concept="37mRI7" id="6kDcQMvldN" role="lGtFl">
          <node concept="37mRIm" id="6kDcQMvldO" role="37mRID">
            <property role="37mO49" value="113897093960913703" />
            <node concept="gqqVs" id="6kDcQMvldM" role="37mO4d">
              <property role="gqqTZ" value="12.0" />
              <property role="gqqTW" value="12.0" />
              <property role="gqqTX" value="149.0" />
              <property role="gqqTy" value="50.0" />
              <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
              <node concept="1pa3jb" id="6kDcQMvldP" role="1pap1a">
                <property role="1pa3iD" value="target_port" />
                <property role="2gRgW$" value="798195494" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvldQ" role="1pap1a">
                <property role="1pa3iD" value="source_port" />
                <property role="2gRgW$" value="1347455734" />
              </node>
            </node>
          </node>
          <node concept="37mRIm" id="6kDcQMvldS" role="37mRID">
            <property role="37mO49" value="113897093960913704" />
            <node concept="gqqVs" id="6kDcQMvldR" role="37mO4d">
              <property role="gqqTZ" value="30.5" />
              <property role="gqqTW" value="82.8" />
              <property role="gqqTX" value="112.0" />
              <property role="gqqTy" value="50.0" />
              <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
              <node concept="1pa3jb" id="6kDcQMvldT" role="1pap1a">
                <property role="1pa3iD" value="target_port" />
                <property role="2gRgW$" value="634826305" />
              </node>
              <node concept="1pa3jb" id="6kDcQMvldU" role="1pap1a">
                <property role="1pa3iD" value="source_port" />
                <property role="2gRgW$" value="1506209093" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2VURXa" id="3bh1RFvziF3" role="1POhhj" />
  </node>
  <node concept="21ASy4" id="3f8ZVRYdvYz">
    <property role="TrG5h" value="generated normalized FT for 'System'" />
    <property role="3GE5qa" value="_20_hiphops" />
    <node concept="21ATtL" id="3f8ZVRYdvYA" role="3CrHoS">
      <property role="TrG5h" value="speed__speed too low" />
    </node>
    <node concept="21ATtL" id="3f8ZVRYdvYD" role="3CrHoS">
      <property role="TrG5h" value="speed__speed too high" />
    </node>
    <node concept="21ATtk" id="3f8ZVRYdvYI" role="3CrHoS">
      <property role="TrG5h" value="plausibilizedSpeed__speed innacurate" />
    </node>
    <node concept="cFNQA" id="3f8ZVRYdvYR" role="3CrHoS">
      <property role="TrG5h" value="Or Gate 1" />
    </node>
    <node concept="21ATtL" id="3f8ZVRYdvYX" role="3CrHoS">
      <property role="TrG5h" value="innacurate_computation" />
    </node>
    <node concept="cFNQA" id="3f8ZVRYdvYQ" role="3CrHoS">
      <property role="TrG5h" value="Or Gate 2" />
    </node>
    <node concept="21oswF" id="3f8ZVRYdvYT" role="3CrHoS">
      <ref role="21oszt" node="3f8ZVRYdvYR" resolve="Or Gate 1" />
      <ref role="21oszj" node="3f8ZVRYdvYA" resolve="speed__speed too low" />
    </node>
    <node concept="21oswF" id="3f8ZVRYdvYV" role="3CrHoS">
      <ref role="21oszt" node="3f8ZVRYdvYR" resolve="Or Gate 1" />
      <ref role="21oszj" node="3f8ZVRYdvYD" resolve="speed__speed too high" />
    </node>
    <node concept="21oswF" id="3f8ZVRYdvYW" role="3CrHoS">
      <ref role="21oszt" node="3f8ZVRYdvYQ" resolve="Or Gate 2" />
      <ref role="21oszj" node="3f8ZVRYdvYR" resolve="Or Gate 1" />
    </node>
    <node concept="21oswF" id="3f8ZVRYdvYY" role="3CrHoS">
      <ref role="21oszt" node="3f8ZVRYdvYQ" resolve="Or Gate 2" />
      <ref role="21oszj" node="3f8ZVRYdvYX" resolve="innacurate_computation" />
    </node>
    <node concept="21oswF" id="3f8ZVRYdvYZ" role="3CrHoS">
      <ref role="21oszt" node="3f8ZVRYdvYI" resolve="plausibilizedSpeed__speed innacurate" />
      <ref role="21oszj" node="3f8ZVRYdvYQ" resolve="Or Gate 2" />
    </node>
    <node concept="37mRI7" id="3f8ZVRYdw0p" role="lGtFl">
      <node concept="37mRIm" id="3f8ZVRYdw0q" role="37mRID">
        <property role="37mO49" value="3731513482755309478" />
        <node concept="gqqVs" id="3f8ZVRYdw0o" role="37mO4d">
          <property role="gqqTZ" value="36.400000000000006" />
          <property role="gqqTW" value="282.8" />
          <property role="gqqTX" value="100.0" />
          <property role="gqqTy" value="50.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="3f8ZVRYdw0r" role="1pap1a">
            <property role="1pa3iD" value="target_port" />
            <property role="2gRgW$" value="633718213" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYdw0s" role="1pap1a">
            <property role="1pa3iD" value="source_port" />
            <property role="2gRgW$" value="1505101000" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3f8ZVRYdw0u" role="37mRID">
        <property role="37mO49" value="3731513482755309481" />
        <node concept="gqqVs" id="3f8ZVRYdw0t" role="37mO4d">
          <property role="gqqTZ" value="156.4" />
          <property role="gqqTW" value="282.8" />
          <property role="gqqTX" value="104.0" />
          <property role="gqqTy" value="50.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="3f8ZVRYdw0v" role="1pap1a">
            <property role="1pa3iD" value="target_port" />
            <property role="2gRgW$" value="634115453" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYdw0w" role="1pap1a">
            <property role="1pa3iD" value="source_port" />
            <property role="2gRgW$" value="1505498241" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3f8ZVRYdw0y" role="37mRID">
        <property role="37mO49" value="3731513482755309486" />
        <node concept="gqqVs" id="3f8ZVRYdw0x" role="37mO4d">
          <property role="gqqTZ" value="12.0" />
          <property role="gqqTW" value="12.0" />
          <property role="gqqTX" value="165.0" />
          <property role="gqqTy" value="50.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="3f8ZVRYdw0z" role="1pap1a">
            <property role="1pa3iD" value="target_port" />
            <property role="2gRgW$" value="798876775" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYdw0$" role="1pap1a">
            <property role="1pa3iD" value="source_port" />
            <property role="2gRgW$" value="1348137015" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3f8ZVRYdw0A" role="37mRID">
        <property role="37mO49" value="3731513482755309495" />
        <node concept="gqqVs" id="3f8ZVRYdw0_" role="37mO4d">
          <property role="gqqTZ" value="60.45" />
          <property role="gqqTW" value="182.0" />
          <property role="gqqTX" value="60.0" />
          <property role="gqqTy" value="60.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="3f8ZVRYdw0B" role="1pap1a">
            <property role="1pa3iD" value="port" />
            <property role="2gRgW$" value="1014859206" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYdw0C" role="1pap1a">
            <property role="1pa3iD" value="97" />
            <property role="2gRgW$" value="1367462166" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYdw0D" role="1pap1a">
            <property role="1pa3iD" value="99" />
            <property role="2gRgW$" value="1731148913" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3f8ZVRYdw0F" role="37mRID">
        <property role="37mO49" value="3731513482755309501" />
        <node concept="gqqVs" id="3f8ZVRYdw0E" role="37mO4d">
          <property role="gqqTZ" value="140.45" />
          <property role="gqqTW" value="182.8" />
          <property role="gqqTX" value="108.0" />
          <property role="gqqTy" value="50.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="3f8ZVRYdw0G" role="1pap1a">
            <property role="1pa3iD" value="target_port" />
            <property role="2gRgW$" value="634483804" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYdw0H" role="1pap1a">
            <property role="1pa3iD" value="source_port" />
            <property role="2gRgW$" value="1505866591" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3f8ZVRYdw0J" role="37mRID">
        <property role="37mO49" value="3731513482755309494" />
        <node concept="gqqVs" id="3f8ZVRYdw0I" role="37mO4d">
          <property role="gqqTZ" value="64.5" />
          <property role="gqqTW" value="82.0" />
          <property role="gqqTX" value="60.0" />
          <property role="gqqTy" value="60.0" />
          <property role="TgtnS" value="1.0;0.0;0.0;1.0;0.0;0.0" />
          <node concept="1pa3jb" id="3f8ZVRYdw0K" role="1pap1a">
            <property role="1pa3iD" value="port" />
            <property role="2gRgW$" value="1014859206" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYdw0L" role="1pap1a">
            <property role="1pa3iD" value="00" />
            <property role="2gRgW$" value="1367462166" />
          </node>
          <node concept="1pa3jb" id="3f8ZVRYdw0M" role="1pap1a">
            <property role="1pa3iD" value="02" />
            <property role="2gRgW$" value="1731148913" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3f8ZVRYdw0O" role="37mRID">
        <property role="37mO49" value="3731513482755309499" />
        <node concept="2VclpC" id="3f8ZVRYdw0N" role="37mO4d">
          <node concept="2VclrF" id="3f8ZVRYdw0P" role="2Vcluh">
            <property role="2Vclpx" value="95.5" />
            <property role="2Vclpz" value="262.0" />
          </node>
          <node concept="2VclrF" id="3f8ZVRYdw0Q" role="2Vcluh">
            <property role="2Vclpx" value="209.4" />
            <property role="2Vclpz" value="262.0" />
          </node>
        </node>
      </node>
      <node concept="37mRIm" id="3f8ZVRYdw0S" role="37mRID">
        <property role="37mO49" value="3731513482755309502" />
        <node concept="2VclpC" id="3f8ZVRYdw0R" role="37mO4d">
          <node concept="2VclrF" id="3f8ZVRYdw0T" role="2Vcluh">
            <property role="2Vclpx" value="99.55" />
            <property role="2Vclpz" value="162.0" />
          </node>
          <node concept="2VclrF" id="3f8ZVRYdw0U" role="2Vcluh">
            <property role="2Vclpx" value="195.45" />
            <property role="2Vclpz" value="162.0" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

