//Maya ASCII 2016 scene
//Name: RefAssemblyDrawRepresentationsTest.ma
//Last modified: Fri, Mar 30, 2018 05:50:15 PM
//Codeset: UTF-8
requires maya "2016";
requires -nodeType "pxrUsdReferenceAssembly" -dataType "pxrUsdStageData" "pxrUsd" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201610262200-1005964";
fileInfo "osv" "Linux 3.10.0-693.2.2.el7.x86_64 #1 SMP Sat Sep 9 03:55:24 EDT 2017 x86_64";
createNode transform -s -n "persp";
	rename -uid "F117D900-0000-12C3-5ABE-DA060000022A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.4308552027321859 -4.9599363811486468 4.2321958069354952 ;
	setAttr ".r" -type "double3" 60.082924915356131 3.1805546814635176e-15 47.594913994745973 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F117D900-0000-12C3-5ABE-DA060000022B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.4856725417804775;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F117D900-0000-12C3-5ABE-DA060000022C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F117D900-0000-12C3-5ABE-DA060000022D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "F117D900-0000-12C3-5ABE-DA060000022E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1000.1 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "F117D900-0000-12C3-5ABE-DA060000022F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "F117D900-0000-12C3-5ABE-DA0600000230";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 90 1.2722218725854067e-14 89.999999999999986 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F117D900-0000-12C3-5ABE-DA0600000231";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "RefAssemblyDrawRepresentationsTest";
	rename -uid "F117D900-0000-12C3-5ABE-DA5000000253";
createNode transform -n "Cubes_grp" -p "RefAssemblyDrawRepresentationsTest";
	rename -uid "F117D900-0000-12C3-5ABE-DA4C00000252";
createNode pxrUsdReferenceAssembly -n "Cube_1" -p "Cubes_grp";
	rename -uid "F117D900-0000-12C3-5ABE-DA180000024E";
	addAttr -is true -ci true -sn "usdVariantSet_shadingVariant" -ln "usdVariantSet_shadingVariant" 
		-dt "string";
	setAttr ".isc" yes;
	setAttr ".t" -type "double3" -1.5 0 0 ;
	setAttr ".fp" -type "string" "./CubeModel.usda";
	setAttr ".pp" -type "string" "/CubeModel";
	setAttr ".irp" -type "string" "Collapsed";
	setAttr ".rns" -type "string" "NS_Cube_1";
	setAttr ".usdVariantSet_shadingVariant" -type "string" "Red";
createNode transform -n "MainCamera";
	rename -uid "24A938C0-0000-731D-5A94-5B660000024A";
	setAttr ".t" -type "double3" 5.4308552027321859 -4.9599363811486468 4.2321958069354952 ;
	setAttr ".r" -type "double3" 60.082924915356131 3.1805546814635176e-15 47.594913994745973 ;
createNode camera -n "MainCameraShape" -p "MainCamera";
	rename -uid "24A938C0-0000-731D-5A94-5B660000024B";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.4856725417804775;
	setAttr ".imn" -type "string" "MainCamera";
	setAttr ".den" -type "string" "MainCamera_depth";
	setAttr ".man" -type "string" "MainCamera_mask";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "69C99900-0000-177D-5ABE-DAD800000259";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "69C99900-0000-177D-5ABE-DAD80000025C";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "F117D900-0000-12C3-5ABE-DA060000024A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "69C99900-0000-177D-5ABE-DAD80000025E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F117D900-0000-12C3-5ABE-DA060000024C";
	setAttr ".g" yes;
createNode hyperLayout -n "hyperLayout1";
	rename -uid "F117D900-0000-12C3-5ABE-DA180000024F";
	setAttr ".ihi" 0;
createNode hyperLayout -n "hyperLayout2";
	rename -uid "F117D900-0000-12C3-5ABE-DA4400000251";
	setAttr ".ihi" 0;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "F117D900-0000-12C3-5ABE-DA8B00000255";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "hyperLayout1.msg" "Cube_1.hl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of RefAssemblyDrawRepresentationsTest.ma
