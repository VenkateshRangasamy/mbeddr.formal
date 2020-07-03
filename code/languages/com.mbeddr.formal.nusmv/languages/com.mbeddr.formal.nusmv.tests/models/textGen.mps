<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:978722be-b8bd-4fb4-a2af-1cb9cf2040e0(com.mbeddr.formal.nusmv.tests.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="fnq2" ref="r:412c918d-151c-45fe-acf3-0268d0d563c1(com.mbeddr.formal.nusmv.tests.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <property id="1237306003719" name="separator" index="lbP0B" />
        <property id="1237983969951" name="withSeparator" index="XA4eZ" />
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="1ZsZb$iK_4X">
    <property role="3GE5qa" value="generation_only" />
    <ref role="WuzLi" to="fnq2:1ZsZb$iK_4w" resolve="NAryAndExpression_ForGenerator" />
    <node concept="11bSqf" id="1ZsZb$iK_4Y" role="11c4hB">
      <node concept="3clFbS" id="1ZsZb$iK_4Z" role="2VODD2">
        <node concept="lc7rE" id="1ZsZb$iK_5j" role="3cqZAp">
          <node concept="l9S2W" id="1ZsZb$iK_5F" role="lcghm">
            <property role="XA4eZ" value="true" />
            <property role="lbP0B" value=" &amp; " />
            <node concept="2OqwBi" id="1ZsZb$iK_ci" role="lbANJ">
              <node concept="117lpO" id="1ZsZb$iK_65" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1ZsZb$iK_jR" role="2OqNvi">
                <ref role="3TtcxE" to="fnq2:1ZsZb$iK_4x" resolve="atomicCondition" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="3cHtG5tUdAW">
    <ref role="WuzLi" to="fnq2:3YQnHsZ2Vy" resolve="EmptyTestsCollectionContent" />
    <node concept="11bSqf" id="3cHtG5tUdAX" role="11c4hB">
      <node concept="3clFbS" id="3cHtG5tUdAY" role="2VODD2" />
    </node>
  </node>
  <node concept="WtQ9Q" id="67icRu60T5C">
    <ref role="WuzLi" to="fnq2:67icRu60OOF" resolve="DocumentationLineTestsCollectionContent" />
    <node concept="11bSqf" id="67icRu60T5D" role="11c4hB">
      <node concept="3clFbS" id="67icRu60T5E" role="2VODD2">
        <node concept="lc7rE" id="67icRu60T60" role="3cqZAp">
          <node concept="la8eA" id="67icRu60T6o" role="lcghm">
            <property role="lacIc" value="-- " />
          </node>
          <node concept="l9hG8" id="67icRu60T7z" role="lcghm">
            <node concept="2OqwBi" id="67icRu60Thr" role="lb14g">
              <node concept="117lpO" id="67icRu60T8v" role="2Oq$k0" />
              <node concept="3TrcHB" id="67icRu60Tp$" role="2OqNvi">
                <ref role="3TsBF5" to="fnq2:67icRu60OOJ" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

