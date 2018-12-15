<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a246d6cc-4991-4d6d-845d-a5e5d5e30e43(test.mbeddr.formal.spin._100_hdl_tests_gen@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="11" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil" version="1" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="hr62" ref="r:0f006508-b2f4-4b98-82de-5b32de29d868(com.mbeddr.formal.spin.testing_utils)" />
    <import index="imq8" ref="r:828869ae-99a6-40b2-b521-4aef1ed3af63(com.mbeddr.formal.spin.analyzer.model)" />
    <import index="ecpe" ref="r:f42bbcc9-5fb1-4f38-8396-ef1ff595c33c(com.mbeddr.formal.base.tooling.testing)" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1225467090849" name="jetbrains.mps.lang.test.structure.ProjectExpression" flags="nn" index="1jxXqW" />
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="63e0e566-5131-447e-90e3-12ea330e1a00" name="com.mbeddr.mpsutil.blutil">
      <concept id="6451706574537082687" name="com.mbeddr.mpsutil.blutil.structure.ShortStaticMethodCall" flags="ng" index="NRdvd" />
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="361130699826193249" name="jetbrains.mps.lang.modelapi.structure.ModulePointer" flags="ng" index="1dCxOk">
        <property id="1863527487546097500" name="moduleId" index="1XweGW" />
        <property id="1863527487545993577" name="moduleName" index="1XxBO9" />
      </concept>
      <concept id="361130699826193248" name="jetbrains.mps.lang.modelapi.structure.ModelPointer" flags="ng" index="1dCxOl">
        <property id="1863527487546097494" name="modelId" index="1XweGQ" />
        <child id="679099339649067980" name="name" index="1j$8Uc" />
        <child id="1863527487546123100" name="moduleRef" index="1Xw7sW" />
      </concept>
      <concept id="679099339649053840" name="jetbrains.mps.lang.modelapi.structure.ModelName" flags="ng" index="1j_P7g">
        <property id="679099339649053841" name="value" index="1j_P7h" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4065387505485742666" name="jetbrains.mps.lang.smodel.structure.ModelPointer_ResolveOperation" flags="ng" index="2yCiCJ" />
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1863527487546129879" name="jetbrains.mps.lang.smodel.structure.ModelPointerExpression" flags="ng" index="1Xw6AR">
        <child id="1863527487546132519" name="modelRef" index="1XwpL7" />
      </concept>
      <concept id="1863527487546132619" name="jetbrains.mps.lang.smodel.structure.SModelPointerType" flags="ig" index="1XwpNF" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2XOHcx" id="6kOHW5f$a7x">
    <property role="2XOHcw" value="${mbeddr.formal.home}/code/languages/com.mbeddr.formal.spin/" />
  </node>
  <node concept="1lH9Xt" id="5mQCqLmwNs0">
    <property role="TrG5h" value="_010_nondets" />
    <node concept="1LZb2c" id="5mQCqLmAXMD" role="1SL9yI">
      <property role="TrG5h" value="test_nondets_gen" />
      <node concept="3cqZAl" id="5mQCqLmAXME" role="3clF45" />
      <node concept="3clFbS" id="5mQCqLmAXMI" role="3clF47">
        <node concept="3cpWs8" id="6kOHW5f_O1D" role="3cqZAp">
          <node concept="3cpWsn" id="6kOHW5f_O1E" role="3cpWs9">
            <property role="TrG5h" value="mPtr" />
            <node concept="1XwpNF" id="6kOHW5f_O1C" role="1tU5fm" />
            <node concept="1Xw6AR" id="6kOHW5f_O1F" role="33vP2m">
              <node concept="1dCxOl" id="6kOHW5f_O1G" role="1XwpL7">
                <property role="1XweGQ" value="r:7119012a-0b17-481d-9a5b-c29504d070b7" />
                <node concept="1j_P7g" id="6kOHW5f_O1H" role="1j$8Uc">
                  <property role="1j_P7h" value="test.mbeddr.formal.spin._100_hdl_010_nondet_assign_testcode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6kOHW5f_NWY" role="3cqZAp">
          <node concept="3cpWsn" id="6kOHW5f_NWZ" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="6kOHW5f_NX0" role="1tU5fm" />
            <node concept="2OqwBi" id="6kOHW5f_NX1" role="33vP2m">
              <node concept="37vLTw" id="6kOHW5f_O1I" role="2Oq$k0">
                <ref role="3cqZAo" node="6kOHW5f_O1E" resolve="mPtr" />
              </node>
              <node concept="2yCiCJ" id="6kOHW5f_NX6" role="2OqNvi">
                <node concept="2OqwBi" id="6kOHW5f_NX7" role="Vysub">
                  <node concept="1jxXqW" id="6kOHW5f_NX8" role="2Oq$k0" />
                  <node concept="liA8E" id="6kOHW5f_NX9" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5mQCqLmAXN4" role="3cqZAp">
          <node concept="NRdvd" id="6kOHW5f_O85" role="3clFbG">
            <ref role="1Pybhc" to="ecpe:5mQCqLmwV_S" resolve="BaseLineGeneratorTestsUtil" />
            <ref role="37wK5l" to="ecpe:5mQCqLmwV_U" resolve="generateAndCompareWith" />
            <node concept="1jxXqW" id="6kOHW5f_O86" role="37wK5m" />
            <node concept="37vLTw" id="6kOHW5f_O9g" role="37wK5m">
              <ref role="3cqZAo" node="6kOHW5f_NWZ" resolve="model" />
            </node>
            <node concept="Xl_RD" id="6kOHW5f_O88" role="37wK5m">
              <property role="Xl_RC" value="\\baseline\\_100_hdl_010_nondet_assign_testcode" />
            </node>
            <node concept="Xl_RD" id="6kOHW5f_O89" role="37wK5m">
              <property role="Xl_RC" value="pml" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6kOHW5f_Lml">
    <property role="TrG5h" value="_020_assume" />
    <node concept="1LZb2c" id="6kOHW5f_Lmm" role="1SL9yI">
      <property role="TrG5h" value="test_assume_gen" />
      <node concept="3cqZAl" id="6kOHW5f_Lmn" role="3clF45" />
      <node concept="3clFbS" id="6kOHW5f_Lmo" role="3clF47">
        <node concept="3cpWs8" id="6kOHW5f_NdA" role="3cqZAp">
          <node concept="3cpWsn" id="6kOHW5f_NdB" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="6kOHW5f_NdC" role="1tU5fm" />
            <node concept="2OqwBi" id="6kOHW5f_NdD" role="33vP2m">
              <node concept="1Xw6AR" id="6kOHW5f_NdE" role="2Oq$k0">
                <node concept="1dCxOl" id="6kOHW5f_NgE" role="1XwpL7">
                  <property role="1XweGQ" value="r:1f046e12-e1a9-4322-a134-775f994be2ea" />
                  <node concept="1j_P7g" id="6kOHW5f_NgF" role="1j$8Uc">
                    <property role="1j_P7h" value="test.mbeddr.formal.spin._100_hdl_020_assume_testcode" />
                  </node>
                </node>
              </node>
              <node concept="2yCiCJ" id="6kOHW5f_NdI" role="2OqNvi">
                <node concept="2OqwBi" id="6kOHW5f_NdJ" role="Vysub">
                  <node concept="1jxXqW" id="6kOHW5f_NdK" role="2Oq$k0" />
                  <node concept="liA8E" id="6kOHW5f_NdL" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kOHW5f_Lmt" role="3cqZAp">
          <node concept="NRdvd" id="6kOHW5f_Noe" role="3clFbG">
            <ref role="1Pybhc" to="ecpe:5mQCqLmwV_S" resolve="BaseLineGeneratorTestsUtil" />
            <ref role="37wK5l" to="ecpe:5mQCqLmwV_U" resolve="generateAndCompareWith" />
            <node concept="1jxXqW" id="6kOHW5f_Nof" role="37wK5m" />
            <node concept="37vLTw" id="6kOHW5f_Nog" role="37wK5m">
              <ref role="3cqZAo" node="6kOHW5f_NdB" resolve="model" />
            </node>
            <node concept="Xl_RD" id="6kOHW5f_Noh" role="37wK5m">
              <property role="Xl_RC" value="\\baseline\\_100_hdl_020_assume_testcode" />
            </node>
            <node concept="Xl_RD" id="6kOHW5f_Noi" role="37wK5m">
              <property role="Xl_RC" value="pml" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="6kOHW5f_Ls8">
    <property role="TrG5h" value="_030_multistep" />
    <node concept="1LZb2c" id="6kOHW5f_Ls9" role="1SL9yI">
      <property role="TrG5h" value="test_multistep_gen" />
      <node concept="3cqZAl" id="6kOHW5f_Lsa" role="3clF45" />
      <node concept="3clFbS" id="6kOHW5f_Lsb" role="3clF47">
        <node concept="3cpWs8" id="6kOHW5f_Lsc" role="3cqZAp">
          <node concept="3cpWsn" id="6kOHW5f_Lsd" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="6kOHW5f_Lse" role="1tU5fm" />
            <node concept="2OqwBi" id="6kOHW5f_N7C" role="33vP2m">
              <node concept="1Xw6AR" id="6kOHW5f_N7D" role="2Oq$k0">
                <node concept="1dCxOl" id="6kOHW5f_N7E" role="1XwpL7">
                  <property role="1XweGQ" value="java:EDU.oswego.cs.dl.util.concurrent.misc" />
                  <node concept="1j_P7g" id="6kOHW5f_N7F" role="1j$8Uc">
                    <property role="1j_P7h" value="test.mbeddr.formal.spin._100_hdl_030_loops_testcode" />
                  </node>
                  <node concept="1dCxOk" id="6kOHW5f_N7G" role="1Xw7sW">
                    <property role="1XweGW" value="1338ba73-5059-479b-a929-de86597a62b8" />
                    <property role="1XxBO9" value="com.mbeddr.mpsutil.jung.pluginSolution" />
                  </node>
                </node>
              </node>
              <node concept="2yCiCJ" id="6kOHW5f_N7H" role="2OqNvi">
                <node concept="2OqwBi" id="6kOHW5f_N7I" role="Vysub">
                  <node concept="1jxXqW" id="6kOHW5f_N7J" role="2Oq$k0" />
                  <node concept="liA8E" id="6kOHW5f_N7K" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kOHW5f_Lsg" role="3cqZAp">
          <node concept="NRdvd" id="6kOHW5f_NrV" role="3clFbG">
            <ref role="1Pybhc" to="ecpe:5mQCqLmwV_S" resolve="BaseLineGeneratorTestsUtil" />
            <ref role="37wK5l" to="ecpe:5mQCqLmwV_U" resolve="generateAndCompareWith" />
            <node concept="1jxXqW" id="6kOHW5f_NrW" role="37wK5m" />
            <node concept="37vLTw" id="6kOHW5f_NrX" role="37wK5m">
              <ref role="3cqZAo" node="6kOHW5f_Lsd" resolve="model" />
            </node>
            <node concept="Xl_RD" id="6kOHW5f_NrY" role="37wK5m">
              <property role="Xl_RC" value="\\baseline\\_100_hdl_030_loops_testcode" />
            </node>
            <node concept="Xl_RD" id="6kOHW5f_NrZ" role="37wK5m">
              <property role="Xl_RC" value="pml" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>
