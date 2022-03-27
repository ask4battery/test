create_clock -period 5 -name up_counter^clk
set_input_delay -clock up_counter^clk -max 0 [get_ports {*}]
set_output_delay -clock up_counter^clk -max 0 [get_ports {*}]


