set_max_delay -from [get_ports enable] -to [get_ports count[*]] 10
set_max_delay -from [get_ports reset] -to [get_ports count[*]] 10

set_max_delay -from [get_ports clk] -to [get_ports count[*]] 10
