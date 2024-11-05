set_max_delay -from [get_ports A[*]] -to [get_ports AgtBplusOne] 10
set_max_delay -from [get_ports A[*]] -to [get_ports AgteBplusOne] 10
set_max_delay -from [get_ports A[*]] -to [get_ports AltBplusOne] 10
set_max_delay -from [get_ports A[*]] -to [get_ports AlteBplusOne] 10
set_max_delay -from [get_ports A[*]] -to [get_ports AeqBplusOne] 10
set_max_delay -from [get_ports A[*]] -to [get_ports overflow] 10

set_max_delay -from [get_ports B[*]] -to [get_ports AgtBplusOne] 10
set_max_delay -from [get_ports B[*]] -to [get_ports AgteBplusOne] 10
set_max_delay -from [get_ports B[*]] -to [get_ports AltBplusOne] 10
set_max_delay -from [get_ports B[*]] -to [get_ports AlteBplusOne] 10
set_max_delay -from [get_ports B[*]] -to [get_ports AeqBplusOne] 10
set_max_delay -from [get_ports B[*]] -to [get_ports overflow] 10





