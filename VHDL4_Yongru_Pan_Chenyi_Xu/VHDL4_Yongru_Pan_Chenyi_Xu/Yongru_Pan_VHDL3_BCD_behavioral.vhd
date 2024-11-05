library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Yongru_Pan_VHDL3_BCD_behavioral is
    port(A, B: in std_logic_vector (3 downto 0);
         C: out std_logic;
S: out std_logic_vector(3 downto 0)
        );
end Yongru_Pan_VHDL3_BCD_behavioral;

architecture behavioral of Yongru_Pan_VHDL3_BCD_behavioral is

signal tmp: std_logic_vector (4 downto 0);
signal Sum: std_logic_vector(4 downto 0);
signal Adjust: std_logic;

begin

tmp<= ('0' & A)+B;
Adjust <='1'when tmp >9 else'0';
Sum <= tmp when (Adjust = '0') else tmp + 6;
C <= Sum(4);
S(0) <= Sum(0);
S(1) <= Sum(1);
S(2) <= Sum(2);
S(3) <= Sum(3);
end behavioral;