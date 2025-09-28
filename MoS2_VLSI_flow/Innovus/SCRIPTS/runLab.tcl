#Script to run lab
#Updated by awarrier

set init_assign_buffer 0
set init_design_settop 0
set init_pwr_net {VDD }
set init_gnd_net {GND VSS}
setImportMode -keepEmptyModule 1 -treatUndefinedCellAsBbox 0 -useLefDef56 1
set init_import_mode { -keepEmptyModule 1 -treatUndefinedCellAsBbox 0 -useLefDef56 1}
#set init_io_file DATA/asic_entity.io

#import lef data
set leffiles [glob -nocomplain -directory  ./LEF *.lef*]
#set BasicLEF "./BasicLEF/tech.lef "
set BasicLEF [glob -nocomplain -directory  ./BasicLEF *.lef*]
set str "${BasicLEF} ${leffiles}"
#puts $str
#pwd
set init_lef_file $str
#set init_lef_file $leffiles
#end import lef data

set init_mmmc_file DATA/mmmc.tcl
#set init_top_cell adder_1bit

#import RTL files
set RTLfiles [glob -directory ./RTL *.v*]
set init_verilog $RTLfiles
#end RTL files

# set_timing_derate -delay_corner fast_min  -cell_delay -early 0.97 
# set_timing_derate -delay_corner fast_min  -cell_delay -late 1.03 
# set_timing_derate -delay_corner fast_min  -net_delay -early 0.97 
# set_timing_derate -delay_corner fast_min  -net_delay -late 1.03 
# set_timing_derate -delay_corner slow_max  -cell_delay -early 0.97 
# set_timing_derate -delay_corner slow_max  -cell_delay -late 1.03 
# set_timing_derate -delay_corner slow_max  -net_delay -early 0.97 
# set_timing_derate -delay_corner slow_max  -net_delay -late 1.03 
init_design
setIoFlowFlag 0

#Specify Floorplan
source SCRIPTS/settings.tcl
floorPlan -site CoreSite -d $length $length 300 300 300 300

#Select ram0 for relative floorplan with core boundary
#selectInst *ram0/ram0
#selectInst *ram0/ram0
#create_relative_floorplan -place coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram0 -ref_type core_boundary -horizontal_edge_separate {2  -30  2} -vertical_edge_separate {2  -30  2}
#delete_relative_floorplan -all

#Relative Floorplan. GUI error observed. 
#create_relative_floorplan -place coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram0 -ref coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram0 -ref_type object -horizontal_edge_separate {1 0 1} -vertical_edge_separate {2 0 2} -orient R0
#create_relative_floorplan -place {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram9 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram2 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram3} -ref {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram0 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram9 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram2} -ref_type {object object object} -horizontal_edge_separate {3 -32.52 1 , 3 -32.52 1 , 3 -32.52 1} -vertical_edge_separate {2 0 2 , 2 0 2 , 2 0 2} -orient {R0 R0 R0}
#create_relative_floorplan -place {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram13 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram8 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram12 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram16} -ref {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram0 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram13 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram8 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram12} -ref_type {object object object object} -horizontal_edge_separate {1 0 1 , 1 0 1 , 1 0 1 , 1 0 1} -vertical_edge_separate {0 -36.3 2 , 0 -36.3 2 , 0 -36.3 2 , 0 -36.3 2} -orient {R0 R0 R0 R0}
#create_relative_floorplan -place {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram15 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram1 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram4 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram10} -ref {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram9 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram15 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram1 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram4} -ref_type {object object object object} -horizontal_edge_separate {1 0 1 , 1 0 1 , 1 0 1 , 1 0 1} -vertical_edge_separate {0 -36.3 2 , 0 -36.3 2 , 0 -36.3 2 , 0 -36.3 2} -orient {R0 R0 R0 R0}
#create_relative_floorplan -place {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram17 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram18 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram6 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram7} -ref {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram2 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram17 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram18 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram6} -ref_type {object object object object} -horizontal_edge_separate {1 0 1 , 1 0 1 , 1 0 1 , 1 0 1} -vertical_edge_separate {0 -36.3 2 , 0 -36.3 2 , 0 -36.3 2 , 0 -36.3 2} -orient {R0 R0 R0 R0}
#create_relative_floorplan -place {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram14 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram11 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram5} -ref {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram3 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram14 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram11} -ref_type {object object object} -horizontal_edge_separate {1 0 1,1 0 1,1 0 1} -vertical_edge_separate {0 -36.3 2,0 -36.3 2,0 -36.3 2} -orient {R0 R0 R0}
#create_relative_floorplan -place {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram14 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram11 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram5} -ref {coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram3 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram14 coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram11} -ref_type {object object object} -horizontal_edge_separate {1 0 1 , 1 0 1 , 1 0 1} -vertical_edge_separate {0 -36.3 2, 0 -36.3 2, 0 -36.3 2} -orient {R0 R0 R0}
#setInstancePlacementStatus -name { coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram0 } -status softFixed

# Place block coreinst/ks_core1/periph1_PH
#
#placeInstance coreinst/ks_core1/periph1_PH 370.0 1606.45 R0
#
# Place block coreinst/ks_core1/leon1
#
#placeInstance coreinst/ks_core1/leon1 {2518.8 370.12} R0 -fixed
#
# Please remaining blocks
#
#source SCRIPTS/placeInst.tcl

#deselectAll
#selectInst coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram7
#selectInst coreinst/ks_core1/amba_dsp1/ram2p_78kx32/ram0/ram19
#alignObject -side right
#spaceObject -fixSide top -space 32.52

#loadFPlan DATA/blocks.fp
#saveDesign DBS/blocks.enc

#Resize FLoorplan
#setResizeLine -clearAll
#setResizeLine -direction V (1577.51 357.598) (1577.51 4767.5875) -width -100
#setDrawView fplan
#setResizeLine -clearAll
#setResizeFPlanMode -ioProportional true -honorHalo true -shrinkFence false -snapToTrack true -shiftBased true
#setResizeLine -direction V (1577.51 357.598) (1577.51 4767.5875) -width -100
#resizeFloorplan -xSize -100

#Placing Halo around blocks
#addHaloToBlock {5 5 5 5} -allBlock

#Using placement blockage
#createPlaceBlockage -box 2395.065 679.927 5794.965 928.779 -type hard
#createPlaceBlockage -box 1493.513 1197.798 1741.161 1430.878 -type hard
#setFinishFPlanMode -activeObj {core macro softBlkg} -drcRegionObj {macro macroHalo hardBlkg minGap coreSpacing} -direction xy -override false

#Automatic Floorplan- Finish Floorplan
#finishFloorplan -fillPlaceBlockage soft 40

#saveDesign DBS/floorplan.enc

#Connecting global nets

globalNetConnect VDD -type pgpin -pin VDD -inst * -all
globalNetConnect GND -type pgpin -pin GND -inst * -all
globalNetConnect VSS -type pgpin -pin VSS -inst * -all
#globalNetConnect VSS -type tielo
#globalNetConnect VDD -type tiehi

setLayerPreference pinObj -isVisible 1
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0

#Adding Power Rings

#setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer M9 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
#addRing -nets {} -type core_rings -follow core -layer {top M9 bottom M9 left M8 right M8} -width {top 5 bottom 5 left 5 right 5} -spacing {top 1.25 bottom 1.25 left 1.25 right 1.25} -offset {top 5 bottom 5 left 5 right 5} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer NSD -stacked_via_bottom_layer Gate -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin { } -skip_via_on_wire_shape { }
addRing -nets {VDD GND VSS} -type core_rings -follow core -layer {top NSD bottom NSD left Metal1 right Metal1} -width 40 -spacing 20 -offset 20 -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

#Adding around selected blocks
#setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer M9 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
#addRing -nets {VDD VSS} -type block_rings -around selected -layer {top M9 bottom M9 left M8 right M8} -width {top 5 bottom 5 left 5 right 5} -spacing {top 1.25 bottom 1.25 left 1.25 right 1.25} -offset {top 5 bottom 5 left 5 right 5} -center 0 -extend_corner {rt bl } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

#setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer M9 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
#addRing -nets {VDD VSS} -type block_rings -around selected -layer {top M9 bottom M9 left M8 right M8} -width {top 5 bottom 5 left 5 right 5} -spacing {top 1.25 bottom 1.25 left 1.25 right 1.25} -offset {top 5 bottom 5 left 5 right 5} -center 0 -extend_corner {lb tr } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None

# set sprCreateIeRingOffset 1.0
# set sprCreateIeRingThreshold 1.0
# set sprCreateIeRingJogDistance 1.0
# set sprCreateIeRingLayers {}
# set sprCreateIeRingOffset 1.0
# set sprCreateIeRingThreshold 1.0
# set sprCreateIeRingJogDistance 1.0
# set sprCreateIeRingLayers {}
# set sprCreateIeStripeWidth 10.0
# set sprCreateIeStripeThreshold 1.0
# set sprCreateIeStripeWidth 10.0
# set sprCreateIeStripeThreshold 1.0
# set sprCreateIeRingOffset 1.0
# set sprCreateIeRingThreshold 1.0
# set sprCreateIeRingJogDistance 1.0
# set sprCreateIeRingLayers {}
# set sprCreateIeStripeWidth 10.0
# set sprCreateIeStripeThreshold 1.0

#Adding Power Stripes
#setAddStripeMode -ignore_block_check false -break_at {  block_ring  } -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer M9 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
#addStripe -nets {VDD VSS} -layer M9 -direction horizontal -width 5 -spacing 10 -set_to_set_distance 120 -start_from bottom -start_offset 70 -stop_offset 70 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit M9 -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit M9 -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
#setAddStripeMode -ignore_block_check false -break_at {  block_ring  } -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer M9 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
#addStripe -nets {VDD VSS} -layer M8 -direction vertical -width 5 -spacing 10 -set_to_set_distance 120 -start_from left -start_offset 100 -stop_offset 100 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit M9 -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit M9 -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None
#saveDesign DBS/presroute.enc

#Sroute 
#Made change in document for Sroute settings. Choose padPin, not padRing. 
#setSrouteMode -viaConnectToShape { noshape }
#sroute -connect { blockPin padPin corePin } -layerChangeRange { M1(1) M9(9) } -blockPinTarget { nearestTarget } -corePinTarget { none } -allowJogging 1 -crossoverViaLayerRange { M1(1) M9(9) } -nets { VDD GND VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1(1) M9(9) }
sroute -nets {VDD GND VSS} -connect {corePin} -corePinTarget {ring} -corePinLayer NSD -allowJogging 1 -allowLayerChange 1 
#saveDesign DBS/power.enc
setDesignMode -process 45
setMultiCpuUsage -localCpu 8

setAnalysisMode -analysisType onChipVariation -cppr both

#setDontUse *XL true
#setDontUse *X1 true
#Place standard cells
#setPlaceMode -fp false
assignIoPins
place_opt_design
checkPlace design.checkPlace
saveDesign DBS/prects.enc


#Early global route
setDesignMode -bottomRoutingLayer 1 -topRoutingLayer 3
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
earlyGlobalRoute

#setNanoRouteMode -quiet -drouteFixAntenna 0
#setDesignMode -topRoutingLayer 3
#setDesignMode -bottomRoutingLayer 1
#setNanoRouteMode -quiet -drouteEndIteration 1
#setNanoRouteMode -quiet -routeWithTimingDriven false
#setNanoRouteMode -quiet -routeWithSiDriven false
#routeDesign -globalDetail
#verify_drc
#win
#adjustFPlanChannel
#saveDesign DBS/power_design.enc

#extractRC
#rcOut -spef adder_1bit.spef -rc_corner rc_worst

# add_ndr -width {M1 0.12 M2 0.14 ITO 0.14 } -spacing {M1 0.12 M2 0.14 ITO 0.14 } -name 2w2s
# create_route_type -name clkroute -non_default_rule 2w2s -bottom_preferred_layer ITO -top_preferred_layer M1
# set_ccopt_property route_type clkroute -net_type trunk
# set_ccopt_property route_type clkroute -net_type leaf 
# #set_ccopt_property buffer_cells {CLKBUFFX1}
# set_ccopt_property inverter_cells {PLTPSinverter}
# #set_ccopt_property clock_gating_cells TLATNTSCA*
# create_ccopt_clock_tree_spec -file ccopt.spec
# source ccopt.spec
# ccopt_design -cts
# saveDesign DBS/cts.enc

# timeDesign -postCTS

# optDesign -postCTS
# saveDesign DBS/postcts.enc

#routeDesign
#saveDesign DBS/route.enc

#setExtractRCMode -engine postRoute
#setExtractRCMode -effortLevel medium
#timeDesign -postRoute
#timeDesign -postRoute -hold

#optDesign -postRoute -setup -hold
#saveDesign DBS/postroute.enc
#update_names -net -nocase
verifyGeometry
win
