Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_adder is
port(
a : in std_logic;
b: in std_logic;
c_in: in std_logic;
s: out std_logic;
c_out: out std_logic);
end full_adder;

architecture full_arch of full_adder is
Begin

s <= a xor b xor c_in;
c_out <= (a and b) or (a and c_in) or (b and c_in);

end full_arch;