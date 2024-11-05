library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all
 
entity Yongru_Pan_VHDL3_RCA_behavioral is
begin
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
B : in STD_LOGIC_VECTOR (3 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (3 downto 0);
Cout : out STD_LOGIC);
end Yongru_Pan_VHDL3_RCA_behavioral;
 
architecture Behavioral of Yongru_Pan_VHDL3_RCA_behavioral is
 
component FA
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end component;
 
signal c1,c2,c3: STD_LOGIC;
 
begin
 
FA1: FA port map( A(0), B(0), Cin, S(0), c1);
FA2: FA port map( A(1), B(1), c1, S(1), c2);
FA3: FA port map( A(2), B(2), c2, S(2), c3);
FA4: FA port map( A(3), B(3), c3, S(3), Cout);
 
end Behavioral;
