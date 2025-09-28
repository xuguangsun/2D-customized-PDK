set sdc_version 1.4


# Set the current design
current_design adder_4bit
set_units -time 1ns
set_units -capacitance 1pf
#T=100000ns
create_clock -name "clk" -add -period 100000  [get_ports a[0]]


#set_input_delay -max 20 -clock clk  [get_ports a]
#set_input_delay -max 20 -clock clk  [get_ports b]
#set_input_delay -max 20 -clock clk  [get_ports cin]

#set_output_delay   -max 20 -clock clk   [get_ports s]
#set_output_delay   -max 20 -clock clk   [get_ports cout]

#set_max_fanout 15.000 [current_design]
#set_max_transition 1.2 [current_design]
