-- fpga4student.com: FPGA projects, Verilog projects, VHDL projects
-- VHDL project: VHDL code for Sequence Detector using Moore FSM
-- The sequence being detected is "1001" or One Zero Zero One

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE. NUMERIC_STD . ALL ;
use IEEE.std_logic_unsigned.all;

entity Chenyi_Xu_FSM is
Port (seq : in std_logic; enable : in std_logic;
reset : in std_logic; clk : in std_logic;
out_1 : out std_logic; -- generates 1 when the pattern "1011" is detected; otherwise 0.
out_2 : out std_logic); -- generates 1 when the pattern "0010" is detected; otherwise 0.
end Chenyi_Xu_FSM;

architecture Behavioral of Chenyi_Xu_FSM is
type MOORE_FSM is (Zero, One, OneZero, OneZeroOne, OneZeroOneOne);
type MOORE_FSM_2 is (Zero2, One2, ZeroZero, ZeroZeroOne, ZeroZeroOneZero);
signal current_state, next_state: MOORE_FSM;
signal current_state2, next_state2: MOORE_FSM_2;

begin
-- Sequential memory of the VHDL MOORE FSM Sequence Detector
process(clk,reset,enable)
begin
 if(reset='1') then
  current_state <= Zero;
  current_state2 <= Zero2;
 elsif(rising_edge(clk)) then
 if (enable = '1') then
  current_state <= next_state;
  current_state2 <= next_state2;
 end if;
 end if;
end process;
-- Next state logic of the VHDL MOORE FSM Sequence Detector
-- Combinational logic
process(current_state,seq)
begin
 case(current_state) is
 when Zero =>
  if(seq='1') then
   -- "1"
   next_state <= One;
  else
   next_state <= Zero;
  end if;
 when One =>
  if(seq='0') then
   -- "10"
   next_state <= OneZero;
  else
   next_state <= One;
  end if;  
 when OneZero => 
  if(seq='1') then
   -- "101"
   next_state <= OneZeroOne;
  else
   next_state <= Zero;
  end if;  
 when OneZeroOne =>
  if(seq='1') then
   -- "1001"
   next_state <= OneZeroOneOne;
  else
   next_state <= Zero;
  end if; 
 when OneZeroOneOne =>
  if(seq='1') then
   next_state <= One;
  else
   next_state <= OneZero;
  end if;
 end case;
end process;
-- Output logic of the VHDL MOORE FSM Sequence Detector

out_1 <= '1' When current_state = OneZeroOneOne else '0';


process (current_state2, seq)
begin
case (current_state2) is
when Zero2 =>
if(seq ='1') then
 next_state2 <= One2;
 else 
 next_state2 <=ZeroZero;
 end if;
when ZeroZero =>
if(seq='1') then
 next_state2 <=ZeroZeroOne;
 else
 next_state2 <= ZeroZero;
 end if;
When ZeroZeroOne =>
if( seq='1') then
 next_state2 <=One2;
 else 
 next_state2 <=ZeroZeroOneZero;
end if;
When ZeroZeroOneZero=>
if (seq='1') then
 next_state2 <=One2;
else 
 next_state2 <=ZeroZero;
 end if;
When One2 =>
if( seq='1') then
 next_state2 <= One2;
 else 
 next_state2 <=Zero2;
end if;
end case;
end process;

process(current_state2)
begin 
 case current_state2 is
 when Zero2 =>
  out_2 <= '0';
 when One2 =>
  out_2 <= '0';
 When ZeroZero =>
	out_2 <='0';
 when ZeroZeroOne=>
  out_2 <='0';
 when ZeroZeroOneZero=>
 out_2 <='1';
 end case;
end process;

end Behavioral;