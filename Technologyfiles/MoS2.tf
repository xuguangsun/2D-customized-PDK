;
; Cadence Technology File 
;	created by XgSun.
;	date: 09-Apr-2023  22:39:30
;

controls(
	techVersion("1.0")

	techParams(
	;( PARAMETER VALUE)
	(MIN_SP 1)
	(ME_ViaFV 1)
	(ME_PLN 1)
	(M1_MC 1)
	
);techParams

;***********************************
viewTypeUnits(
;**********************************
;(viewType     userUnit dbuperUU)
(maskLayout "micron" 1000)
( schematic      	"micron"         	100             )
  ( schematicSymbol	"micron"         	100             )
  ( netlist        	"micron"         	100             )
  ( hierDesign     	"_def_"        	2000            )
);viewTypeUnits


mfgGridResolution(
	(0.050000)
);mfgGridResolution

refTechLibs(
; techLibName            
; -----------            
 ) ;refTechLibs

 processFamily(
 ) ;processFamily

 distanceMeasure(
 ) ;distanceMeasure

);controls

;********************************
; LAYER DEFINITION
;********************************
layerDefinitions(

 techPurposes(
 ;( PurposeName   Purpose#  Abbreviation    	)
 ;( ----------    ------    ------------    	)
  ;( drawing       -1         drawing        )
;User-Defined Purposes:
  ( port1                     2          pt1          )
  ( region                    3          reg          )
  ( ppath                     5          pp0          )
  ( ppath1                    6          pp1          )
  ( macro                     7          mac          )
  ( nwell                     8          nwl          )
 ) ;techPurposes 

 techLayers(
 ;( LayerName     Layer#    Abbreviation 	)
 ;( ----------    ------    ------------   	)
  ( Subs            100         Subs             )
  ( Mchannel           6        Mchannel            )
  ;( GO1           3        GO            )
  ( Gate           2        Gate            )
  ( Metal3           5        Metal3            ) 
  ( Via2           3        Via2  )
  ( Via1          1        Via1            )
  ( Metal1           0        M1            )
  ( text           230        text            )
 ) ;techLayers 



 techLayerPurposePriorities(
 ;( LayerName     Purpose )
 ;( ---------     ------- )
  ;layers are ordered from lowest to highest priority
  ( Subs            drawing         )
  ( Mchannel            drawing         )
  ;( GO1            drawing         )
  ( Gate           drawing         )
  ( Metal3           drawing         )
  ( Via2           drawing         )
  ( Via1           drawing         )
  ( Metal1           drawing         )
  ( Subs            label         )
  ( Mchannel            label         )
  ;( GO1            label         )
  ( Gate           label         )
  ( Metal3           label         )
  ( Via2           label         )
  ( Via1           label         )
  ( Metal1           label         )
  ( Subs            boundary         )
  ( Mchannel            boundary         )
  ;( GO1            boundary         )
  ( Gate           boundary         )
  ( Metal3           boundary         )
  ( Via2           boundary         )
  ( Via1           boundary         )
  ( Metal1           boundary         )
  ( Subs            pin         )
  ( Mchannel            pin         )
  ;( GO1            pin         )
  ( Gate           pin         )
  ( Metal3           pin         )
  ( Via2           pin         )
  ( Via1           pin         )
  ( Metal1           pin         )
  ( Subs            net         )
  ( Mchannel            net         )
  ;( GO1            net         )
  ( Gate           net         )
  ( Metal3           net         )
  ( Via2           net         )
  ( Via1           net         )
  ( Metal1           net         )
  ( Gate           blockage         )
  ( prBoundary                drawing    )
  ( prBoundary                boundary   )
  ( prBoundary                label      )
 ) ;techLayerPurposePriorities 

 techDisplays(
 ;( LayerName      Purpose   Packet       Vis Sel con2ChgLy DrgEnbl valid   )
 ;( ---------      -------   ------       --- --- --------- ------- -----   )
  ( Subs             drawing   y1            t t t t t)
  ( Mchannel              drawing   y2            t t t t t)
  ;( GO1               drawing   y3            t t t t t)
  ( Gate              drawing   y4            t t t t t)
  ( Metal3              drawing   y5            t t t t t)
  ( Via2              drawing   M2_Temp            t t t t t)
  ( Via1            drawing   y6            t t t t t)
  ( Metal1             drawing   y8            t t t t t)
  ;( text           drawing   y7            t t t t t)
  ( Subs             pin   y1            t t t t t)
  ( Mchannel              pin   y2            t t t t t)
  ;( GO1               pin   y3            t t t t t)
  ( Gate              pin   y4            t t t t t)
  ( Metal3              pin   y5            t t t t t)
  ( Via2              pin   M2_Temp            t t t t t)
  ( Via1            pin   y6            t t t t t)
  ( Metal1             pin   y8            t t t t t)
  ( Subs             label   y1            t t t t t)
  ( Mchannel              label   y2            t t t t t)
  ;( GO1               label   y3            t t t t t)
  ( Gate              label   y4            t t t t t)
  ( Metal3              label   y5            t t t t t)
  ( Via2              label   M2_Temp            t t t t t)
  ( Via1            label   y6            t t t t t)
  ( Metal1             label   y8            t t t t t)
  ( Subs             net   y1            t t t t t)
  ( Mchannel              net   y2            t t t t t)
  ;( GO1               net   y3            t t t t t)
  ( Gate              net   y4            t t t t t)
  ( Metal3              net   y5            t t t t t)
  ( Via2              net   M2_Temp            t t t t t)
  ( Via1            net   y6            t t t t t)
  ( Metal1             net   y8            t t t t t)
  ( Gate             blockage   y4            t t t t t)
  ( Subs             boundary   y1            t t t t t)
  ( Mchannel              boundary   y2            t t t t t)
  ;( GO1               boundary   y3            t t t t t)
  ( Gate              boundary   y4            t t t t t)
  ( Metal3              boundary   y5            t t t t t)
  ( Via2              boundary   M2_Temp            t t t t t)
  ( Via1            boundary   y6            t t t t t)
  ( Metal1             boundary   y8            t t t t t)
  ( prBoundary   drawing      prBoundary       t t t t nil )
  ( prBoundary   boundary     prBoundaryBnd    t t t t nil )
  ( prBoundary   label        prBoundaryLbl    t t t t nil )
 ) ;techDisplays 


techLayerProperties(
 ;( PropName               Layer1 [ Layer2 ]            PropValue )
 ;( --------               ------ ----------            --------- )
  ( sheetResistance        Mchannel                           15.0000000 )
  ( areaCapacitance        Gate                         2.000000e-04 )
  ( edgeCapacitance        Gate                         2.000000e-04 )
  ( sheetResistance        Gate                         0.07360000 )
  ( thickness              Gate                         0.15 )
  ( areaCapacitance        Metal1                         2.000000e-04 )
  ( edgeCapacitance        Metal1                         2.000000e-04 )
  ( sheetResistance        Metal1                         0.06040000 )
  ( thickness              Metal1                         0.18 )
  ( areaCapacitance        Metal3                         2.000000e-04 )
  ( edgeCapacitance        Metal3                         2.000000e-04 )
  ( sheetResistance        Metal3                         0.06040000 )
  ( thickness              Metal3                         0.18 )
  ( resistancePerCut       Via1 			  5.0 )
  ( resistancePerCut       Via2 			  5.0 )
 ) ;techLayerProperties

techDerivedLayers(
 ;( DerivedLayerName          #          composition  )
 ;( ----------------          ------     ------------ )
  ( SD                        10001           ( Mchannel   'and    Metal3    ))
  ;( PMOS                      10002           ( GO1 'and  Gate     ))
  ( NMOS                      10004           ( Gate 'and Mchannel   ))
  ( NCHANNEL                     10003           ( NMOS   'not   Metal3      ))
 ) ;techDerivedLayers


) ;layerDefinitions 


;********************************
; LAYER RULES
;********************************
layerRules(

 equivalentLayers(
 ;( list of layers )
 ;( -------------- )
 ) ;equivalentLayers

 functions(
 ;( layer                       function        [maskNumber])
 ;( -----                       --------        ------------)
  ( Subs                     	"substrate"      	 100           )
  ( Mchannel                     "ndiff"          6           )
  ;( GO1                   	"pdiff"           3           )
  ( Metal1                     	"metal"   	0           )
  ( Via1                     	"cut"      	1           )
  ( Gate                   	"metal"     	2           )
  ( Via2                        "cut"       	3           )
  ( Metal3                   	"metal"         5           )
 

  
 ) ;functions

mfgResolutions(
 ;( layer                       mfgResolution )
 ;( -----                       ------------- )
 ) ;mfgResolutions

 incompatibleLayers(
 ;( layer                       incompatibleLayers       )
 ;( -----                       ------------------       )
 ) ;incompatibleLayers

 labelLayers(
 ;( textLayer   layers        )
 ;( ---------   ----------------------------------        )
 ) ;labelLayers

 stampLabelLayers(
 ;( textLayer   layers        )
 ;( ---------   ----------------------------------        )
  ( text      	Mchannel      	Gate    Metal1    Metal3           )
 ) ;stampLabelLayers

currentDensity(
 ;( rule                	layer1    	layer2    	value    )
 ;( ----                	------    	------    	-----    )
  ( avgDCCurrentDensity 	"Mchannel"		0.1	 )
  ( avgDCCurrentDensity 	"Metal1"			2.0	 )
  ( avgDCCurrentDensity 	"Via1"		0.1	 )
  ( avgDCCurrentDensity 	"Gate"		2.0	 )
  ( avgDCCurrentDensity 	"Via2"			0.1	 )
  ( avgDCCurrentDensity 	"Metal3"			2.0	 )
 ) ;currentDensity

 currentDensityTables(
 ;( rule                	layer1    
 ;  (( index1Definitions	[index2Definitions]) [defaultValue] )
 ;  (table))
 ;( ----------------------------------------------------------------------)
 ) ;currentDensityTables

) ;layerRules

;********************************
; VIADEFS
;********************************
viaDefs(

 standardViaDefs(
 ;( viaDefName	layer1	layer2	(cutLayer cutWidth cutHeight [resistancePerCut]) 
 ;   (cutRows	cutCol	(cutSpace)) 
 ;   (layer1Enc) (layer2Enc)	(layer1Offset)	(layer2Offset)	(origOffset) 
 ;   [implant1	 (implant1Enc)	[implant2	(implant2Enc) [well/substrate]]]) 
 ;( -------------------------------------------------------------------------- ) 
  ( Metal1_Gate     	Metal1      Gate    	("Via1" 1 1 0.04)
     (1 1 (3 3))
     (3 3)	(3 3)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
  ( Gate_Metal3      	Gate      Metal3     	("Via2" 1 1 0.2)
     (1 1 (3 3))
     (3 3)	(3 3)	(0.0 0.0)	(0.0 0.0)	(0.0 0.0)
  )
 ) ;standardViaDefs

 customViaDefs(
 ;( viaDefName libName cellName viewName layer1 layer2 resistancePerCut)
 ;( ---------- ------- -------- -------- ------ ------ ----------------)
 ) ;customViaDefs

 standardViaVariants(
 ;( viaVariantName viaDefName (cutLayer cutWidth cutHeight) 
 ;   (cutRows	cutCol	(cutSpace)) 
 ;   (layer1Enc) (layer2Enc)	(layer1Offset)	(layer2Offset)	(origOffset) 
 ;   (implant1Enc) (implant2Enc) (cut_pattern) ) 
 ;( -------------------------------------------------------------------------- ) 
 ) ;standardViaVariants

 customViaVariants(
 ;(viaVariantName viaDefName (paramName paramValue) ...)
 ;( -------------------------------------------------------------------------- )
 ) ;customViaVariants

) ;viaDefs


;********************************
; CONSTRAINT GROUPS
;********************************
constraintGroups(

  ;( group	[override] )
 ;( -----	---------- )
  ( "default"	nil
  ) ;default

 ;( group	[override] )
 ;( -----	---------- )
  ( "virtuosoDefaultExtractorSetup"	nil

    interconnect(
     ( validLayers   (Mchannel Gate Metal1 Metal3 Via2 Via1 Subs SD NMOS NCHANNEL) )
    ) ;interconnect
  ) ;virtuosoDefaultExtractorSetup

 ;( group	[override] )
 ;( -----	---------- )
  ( "virtuosoDefaultSetup"	nil

    interconnect(
     ( validLayers   ( Gate Metal1 Metal3 ) )
     ( validVias     (Gate_Metal3  Metal1_Gate ) )
    ) ;interconnect
  ) ;virtuosoDefaultSetup

 ;( group	[override] )
 ;( -----	---------- )
  ( "virtuosoDefaultTaper"	nil    "taper"

    interconnect(
     ( validLayers   (Gate  Mchannel Metal1 Metal3) )
     ( validVias     (Gate_Metal3  Metal1_Gate) )
    ) ;interconnect

    spacings(
     ( taperHalo                  1.0 )
    ) ;spacings
  ) ;virtuosoDefaultTaper

 ;( group	[override] )
 ;( -----	---------- )
  ( "VLMDefaultSetup"	nil

    interconnect(
     ( validVias     (Gate_Metal3  Metal1_Gate  ) )
    ) ;interconnect
  ) ;VLMDefaultSetup

 ;( group	[override] )
 ;( -----	---------- )
  ( "LEFDefaultRouteSpec"	nil    

    routingDirections(
     ( Mchannel	"none" )
     ( Metal1	"horizontal" )
     ( Gate	"vertical" )
     ( Metal3	"horizontal" )
    ) ;routingDirections


    routingGrids(
     ( horizontalPitch            "Metal1"   5 )
     ( verticalPitch              "Metal1"   5 )
     ( horizontalOffset           "Metal1"   5 )
     ( verticalOffset             "Metal1"   5 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal1"	1 )
     ( minWidth                   "Via1"	0.5 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Gate"   5 )
     ( verticalPitch              "Gate"   5 )
     ( horizontalOffset           "Gate"   5 )
     ( verticalOffset             "Gate"   5 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Gate"	1 )
     ( minWidth                   "Via2"	0.5 )
    ) ;spacings

    routingGrids(
     ( horizontalPitch            "Metal3"   5 )
     ( verticalPitch              "Metal3"   5 )
     ( horizontalOffset           "Metal3"   5 )
     ( verticalOffset             "Metal3"   5 )
    ) ;routingGrids

    spacings(
     ( minWidth                   "Metal3"	1 )
    ) ;spacings

    interconnect(
     ( validLayers   (Gate Metal1 Metal3 ) )
     ( validVias     (Gate_Metal3  Metal1_Gate) )
    ) ;interconnect
  ) ;LEFDefaultRouteSpec


  ( "minPRBoundaryInteriorHaloCG" nil 
     spacings(
     (minPRBoundaryInteriorHalo "Metal3"    0.5  'ref "METAL1.SP.1.2")
     (minPRBoundaryInteriorHalo "Metal1"    0.75 'ref "METAL2.SP.1.2")
     ) ;spacings
  ) ;minPRBoundaryInteriorHaloCG

  ( "minProtrusionNumCutCG"   nil   nil	'and   
    spacings(
     ( minProtrusionNumCut        "Via1" 'distance 1.0 'width 1.0 'length 1.5 2 'ref "VIA1.E.3")
     ( minProtrusionNumCut        "Via2" 'distance 1.0 'width 1.0 'length 1.5 2 'ref "VIA2.E.3")
    ) ;spacings
  ) ;minProtrusionNumCutCG

 ;( group	[override] )
 ;( -----	---------- )
  ( "foundry"	nil
     memberConstraintGroups(
        "minProtrusionNumCutCG"
     ) ;memberCG

   ; interconnect(

    ; ( errorLayer    SD )
     ;( errorLayer    NMOS )    
    ; ( errorLayer    NMOS1 )
    ; ( errorLayer    PMOS )
    ; ( errorLayer    PCHANNEL )
     ;( errorLayer    RECCAP )
    ;) ;interconnect

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                "Metal1"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	1 )
	(
	   (0.005     0.005     )	1           
	)  'ref  "M1.SP.1.1"  'description  "Minimum M1 Space Based on Width and Length"
     )
    ) ;spacingTables

    spacings(
     ( minWidth                   "Metal1"	    1   )
     ( minWidth                   "Via1"	0.5   )
     ( maxWidth                   "Via1"	5   )
     ;( viaSpacing                 "Via1"	'numCuts 3 'distance 0.11 0.1  'ref  "Via1.SP.2"  'description  "Minimum Via1 Space to Three Adjacent Via1" )
     ( minSpacing                 "Via1"	0.5   )
     ( minWidth                   "Gate"	    1   )

    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                "Gate"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	1 )
	(
	   (0.005    0.005    )	1            
	)  'ref  "M2.SP.1.1"  'description  "Minimum M2 Space Based on Width and Length"
     )
    ) ;spacingTables

    spacings(
     ( minWidth                   "Via2"	0.5  )
     ( maxWidth                   "Via2"	5  )
     ;( viaSpacing                 "Via2"	'numCuts 3 'distance 0.11 0.1 'ref  "VIA2.SP.2"  'description  "Minimum Via2 Space to Three Adjacent Via2" )
     ( minSpacing                 "Via2"	0.5   )
     ( minWidth                   "Metal3"	1   )
    ) ;spacings

    spacingTables(
    ;( constraint 		layer1 		    [layer2]
    ;   (( index1Definitions    [index2Defintions]) [defaultValue] )
    ;   ( table) )
    ;( --------------------------------------------)
     ( minSpacing                "Metal3"	
	(( "width"   nil  nil 	 "length"   nil   nil  )	1 )
	(
	   (0.005    0.005    )	1            
	)  'ref  "Metal3.SP.1.1"  'description  "Minimum ITO Space Based on Width and Length"
     )
    ) ;spacingTables

  ) ;foundry

) ;constraintGroups

;********************************
; DEVICES
;********************************
devices(
tcCreateCDSDeviceClass()

; no cdsVia devices

multipartPathTemplates(
; ( name [masterPath] [offsetSubpaths] [encSubPaths] [subRects] )
; 
;   masterPath:
;   (layer [width] [choppable] [endType] [beginExt] [endExt] [justify] [offset]
;   [connectivity])
; 
;   offsetSubpaths:
;   (layer [width] [choppable] [separation] [justification] [begOffset] [endOffset]
;   [connectivity])
; 
;   encSubPaths:
;   (layer [enclosure] [choppable] [separation] [begOffset] [endOffset]
;   [connectivity])
; 
;   subRects:
;   (layer [width] [length] [choppable] [separation] [justification] [space] [begOffset] [endOffset] [gap] 
;   [connectivity] [beginSegOffset] [endSegOffset])
; 
;   connectivity:
;   ([I/O type] [pin] [accDir] [dispPinName] [height] [ layer]
;    [layer] [justification] [font] [textOptions] [orientation]
;    [refHandle] [offset])
; 
; ( --------------------------------------------------------------------- )
  ("N-Tap" 
    (("Mchannel" "drawing")	(plus (techParam "metalW") (times 2 (techParam "PLNW")))	t)
    ((("Gate" "drawing")	(plus (techParam "metalW") (times 2 (techParam "PLNW")))	t	0         	center	(minus (difference (techParam "metalW") (techParam "PLNW")))	
     (minus	(difference (techParam "metalW") (techParam "PLNW"))	))
     (("Metal1" "drawing")	(techParam "metalW")	t	0         	center	0.18	0.18)
    )
    ((("Metal3" "drawing")	(minus (techParam "metalW"))	t)
    )
    ((("Via1" "drawing")	(techParam "ViaSep")	(techParam "ViaSep")	t	0         	center	(techParam "ViaSep")	(quotient (minus (techParam "ViaSep")) 2)	(quotient (minus (techParam "ViaSep")) 2)	distribute)
    )
  )
  ("P-Tap" 
    (("Gate" "drawing")	(plus (techParam "metalW") (times 2 (techParam "PLNW")))	t)
    ((("Gate" "drawing")	(plus (techParam "metalW") (times 2 (techParam "PLNW")))	t	0         	center	(minus (difference (techParam "metalW") (techParam "PLNW")))	
     (minus	(difference (techParam "metalW") (techParam "PLNW"))	))
    )
    ((("Metal1" "drawing")	(minus (techParam "metalW"))	t)
    )
    ((("Via1" "drawing")	(techParam "ViaSep")	(techParam "ViaSep")	t	0         	center	(techParam "ViaSep")	(quotient (minus (techParam "ViaSep")) 2)	(quotient (minus (techParam "ViaSep")) 2)	distribute)
    )
  )
)  ;multipartPathTemplates

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Opus Symbolic Device Class Definition
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
tcCreateDeviceClass( "layout" "cdsGuardRing"
    ; class parameters
    ( (vfoGRImpl "vfoGuardRing") (modelLpp (quote ("Gate" "drawing"))) (tmpLpp (quote ("Gate" "drawing"))) 
      (hilightLpp (quote ("Gate" "drawing"))) (mainLpp (quote ("Gate" "drawing"))) (vfoProtocolClass "vfoSfImplClass") 
      (enclosureClass "vfoSfEnclosureClass") (termName "B") (pinName "B1") 
      (metalLayer nil) (contLayer nil) (diffLayer nil) 
      (defComplementaryDevice nil) (guardRingType nil) (classVersion nil) )
    ; formal parameters
    ( (keepOuts nil) (formalVersion 0) (do_something t) 
      (debug 0) (fillClass "vfoSfFillSafe") (fillStyle "distribute") 
      (hide_keepouts t) (decompositionMode "fill45-path-poly") (shapeType "none") 
      (shapeData "nil") (enclosingLayers "nil") (xContWidth 0.0) 
      (yContWidth 0.0) (xContSpacing 0.0) (yContSpacing 0.0) 
      (xMetEnclCont 0.0) (yMetEnclCont 0.0) (xDiffEnclCont 0.0) 
      (yDiffEnclCont 0.0) (contAlignment "") (removeCornerContacts nil) )
    ; IL codes specifying geometry
    
    (eval 
	(quote 
	    (if 
		(vfoIsSuperMaster tcCellView) 
		(progn 
		    (dbCreateLabel tcCellView modelLpp 
			(range 0 0) "superMaster"
			"lowerLeft" "R0" "roman" 1.0
		    ) 
		    (vfoSetProtocolClassName tcCellView 
			(concat vfoProtocolClass)
		    )
		) 
		(let 
		    ((result 
			    (errset 
				(when 
				    (vfoCheckGRVersioning tcCellView) 
				    (vfoGRGeometry 
					(makeInstance 
					    (or 
						(findClass 
						    (concat vfoGRImpl "_ver_" formalVersion)
						) 
						(error "SKILL Class %L does not exist:" 
						    (concat vfoGRImpl "_ver_" formalVersion)
						)
					    ) ?cv tcCellView ?keepOuts
					    keepOuts ?formalVersion formalVersion ?do_something do_something
					    ?debug debug ?fillClass fillClass ?fillStyle
					    fillStyle ?hide_keepouts hide_keepouts ?decompositionMode decompositionMode
					    ?shapeType shapeType ?shapeData shapeData ?enclosingLayers
					    enclosingLayers ?xContWidth xContWidth ?yContWidth yContWidth
					    ?xContSpacing xContSpacing ?yContSpacing yContSpacing ?xMetEnclCont
					    xMetEnclCont ?yMetEnclCont yMetEnclCont ?xDiffEnclCont xDiffEnclCont
					    ?yDiffEnclCont yDiffEnclCont ?contAlignment contAlignment ?removeCornerContacts
					    removeCornerContacts ?vfoGRImpl vfoGRImpl ?modelLpp modelLpp
					    ?tmpLpp tmpLpp ?hilightLpp hilightLpp ?mainLpp
					    mainLpp ?vfoProtocolClass vfoProtocolClass ?enclosureClass enclosureClass
					    ?termName termName ?pinName pinName ?metalLayer
					    metalLayer ?contLayer contLayer ?diffLayer diffLayer
					    ?defComplementaryDevice defComplementaryDevice ?guardRingType guardRingType ?classVersion
					    classVersion
					)
				    )
				) t
			    )
			) msg
		    ) 
		    (setq msg 
			(getqq errset errset)
		    ) 
		    (unless result 
			(dbCreateLabel tcCellView 
			    (quote 
				("marker" "error")
			    ) 
			    (range 0 0) 
			    (sprintf nil "%L" msg)
			    "lowerLeft" "R0" "roman" 1.0
			) 
			(error "%L/%L" 
			    (getSGq tcCellView cellName) msg
			)
		    )
		)
	    )
	)
    )
)
;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Opus Symbolic Device Declaration
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; device class "cdsGuardRing":
tcDeclareDevice( "layout" "cdsGuardRing" "pring"
    ( (classVersion 1) (enclosureClass "vfoSfEnclosureClass") (vfoProtocolClass "vfoSfImplClass") 
      (hilightLpp 
    (quote 
	("Gate" "drawing")
    )) (vfoGRImpl "vfoGuardRing") (mainLpp (quote 
	("Gate" "drawing")
    )) 
      (modelLpp (quote 
	("Gate" "drawing")
    )) (metalLayer (quote 
	("Gate" "drawing")
    )) (contLayer (quote 
	("Via1" "drawing")
    )) 
      (tmpLpp (quote 
	("Gate" "drawing")
    )) (diffLayer (quote 
	("Gate" "drawing")
    )) (guardRingType "P") 
      (termName "pringTerm") (pinName "pringPin") (defComplementaryDevice "nring") )
    ( (contAlignment "") (yDiffEnclCont 0.030000) (xDiffEnclCont 0.030000) 
      (yMetEnclCont 0.030000) (xMetEnclCont 0.030000) (yContSpacing 0.080000) 
      (xContSpacing 0.060000) (yContWidth 0.060000) (xContWidth 0.060000) 
      (enclosingLayers "(((\\\"Gate\\\" \\\"drawing\\\") 0.0 ?coverInterior nil ?useEncLayer t ?pin nil) ((\\\"Gate\\\"
\\\"drawing\\\") 0.09 ?coverInterior nil ?useEncLayer t ?pin t))") (shapeData "nil") (shapeType "none") 
      (decompositionMode "fill45-path-poly") (hide_keepouts t) (fillStyle "distribute") 
      (fillClass "vfoSfFillSafe") (debug 0) (do_something t) 
      (formalVersion 0) (keepOuts (quote nil)) (removeCornerContacts 
    (quote nil)) )
)
;

tfcDefineDeviceProp(
; (viewName        deviceName        propName          propValue)
  (layout          "pring"           vfoProtocolClass  "vfoSfImplClass")
)

tcDeclareDevice( "layout" "cdsGuardRing" "nring"
    ( (classVersion 1) (enclosureClass "vfoSfEnclosureClass") (vfoProtocolClass "vfoSfImplClass") 
      (hilightLpp (quote 
	("Gate" "drawing")
    )) (vfoGRImpl "vfoGuardRing") (mainLpp (quote 
	("Gate" "drawing")
    )) 
      (modelLpp (quote 
	("Gate" "drawing")
    )) (metalLayer (quote 
	("Gate" "drawing")
    )) (contLayer (quote 
	("Via1" "drawing")
    )) 
      (tmpLpp (quote 
	("Gate" "drawing")
    )) (diffLayer (quote 
	("Gate" "drawing")
    )) (guardRingType "N") 
      (termName "nringTerm") (pinName "nringPin") (defComplementaryDevice "pring") )
    ( (contAlignment "") (yDiffEnclCont 0.030000) (xDiffEnclCont 0.030000) 
      (yMetEnclCont 0.030000) (xMetEnclCont 0.030000) (yContSpacing 0.080000) 
      (xContSpacing 0.060000) (yContWidth 0.060000) (xContWidth 0.060000) 
      (enclosingLayers "(((\\\"Gate\\\" \\\"drawing\\\") 0.0 ?coverInterior nil ?useEncLayer t ?pin nil) ((\\\"Gate\\\" \\\"drawing\\\") 0.09 ?coverInterior nil ?useEncLayer t ?pin t))") (shapeData "nil") (shapeType "none") 
      (decompositionMode "fill45-path-poly") (hide_keepouts t) (fillStyle "distribute") 
      (fillClass "vfoSfFillSafe") (debug 0) (do_something t) 
      (formalVersion 0) (keepOuts (quote nil)) (removeCornerContacts 
    (quote nil)) )
)
;

tfcDefineDeviceProp(
; (viewName        deviceName        propName          propValue)
  (layout          "nring"           vfoProtocolClass  "vfoSfImplClass")
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Device Extraction Declaration
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;extractMOS(deviceName  recLayer gateLayer sdLayer bulkLayer [spiceModel])
extractMOS("NMo" "NMOS" "NCHANNEL" "SD" "Subs" "NMo")

) ;devices


;********************************
; LE RULES
;********************************
leRules(

 leLswLayers(
 ;( layer               purpose         )
 ;( -----               -------         )
 ) ;leLswLayers

) ;leRules


;********************************
; SITEDEFS
;********************************
siteDefs(

 scalarSiteDefs(
 ;( siteDefName         type width  height  symInX symInY symInR90)
 ;( -----------         ---- -----  ------  ------ ------ -------)
   ;( gpdk045Site 	core 0.2   1.71    nil nil nil)
 ) ;scalarSiteDefs

 arraySiteDefs(
 ; ( name	type
 ;  ((siteDefName     dx      dy      orientation) ...)
 ;   [symX] [symY] [symR90] )

 ) ;arraySiteDefs

) ;siteDefs


;********************************
; VIASPECS
;********************************

viaSpecs(
 ;(layer1  layer2  (viaDefName ...) 
 ;   [(        
 ;	(layer1MinWidth layer1MaxWidth layer2MinWidth layer2MaxWidth 
 ;            (viaDefName ...)) 
 ;	...         
 ;   )])       
 ;( ------------------------------------------------------------------------ ) 
   ( Gate  Metal3  ("Gate_Metal3"))
   ( Metal1  Gate  ("Metal1_Gate"))
) ;viaSpecs

