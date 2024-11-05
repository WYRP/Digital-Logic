Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rca_structural is
port (
A: in std_logic_vector (3 downto 0);
B: in std_logic_vector (3 downto 0);
S: out std_logic_vector(4 downto 0));
end rca_structural;

architecture rca_struct_arch of rca_structural is

signal c: std_logic_vector (3 downto 0);

component full_adder
port(c_in, a, b: in std_logic;
 s, c_out: out std_logic);
end component;
-- S(4) is cout
Begin
stage0: full_adder port map ('0', A(0), B(0), S(0), c(1));
stage1: full_adder port map(c(1), A(1), B(1), S(1), c(2));
stage2: full_adder port map(c(2), A(2), B(2), S(2), c(3));
stage3: full_adder port map(c(3), A(3), B(3), S(3), S(4));

end rca_struct_arch;