library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Yongru_Pan_JKFF is
Port ( clk : in std_logic;
J : in std_logic ;
K : in std_logic;
Q : out std_logic );
end Yongru_Pan_JKFF;
 
Architecture JKFF_behavioral of Yongru_Pan_JKFF is
begin
PROCESS(clk)
variable TMP: std_logic;

begin

if(FALLING_EDGE( clk )) then
if(J='0' and K='0')then
TMP:=TMP;
Q<=TMP;
elsif(J='1' and K='1')then
TMP:= not TMP;
Q<=TMP;
elsif(J='0' and K='1')then
TMP:='0';
Q<=TMP;
else
TMP:='1';
Q<=TMP;
end if;
end if;

end PROCESS;
end JKFF_behavioral;
