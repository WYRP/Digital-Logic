library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Yongru_Pan_counter is
Port ( enable : in std_logic;
reset : in std_logic;
clk : in std_logic;
count : out std_logic_vector (2 downto 0));
end Yongru_Pan_counter ;

ARCHITECTURE Counter_Behav OF Yongru_Pan_counter IS
signal tmp: std_logic_vector (2 downto 0):= "000";
BEGIN
PROCESS (clk)
BEGIN

	if RISING_EDGE(clk) then
		if reset = '1' then
		tmp <= "000";
		else 
			if tmp = "111" then
			tmp <= "000";
			
			elsif enable = '1' then
			tmp <= (tmp + '1');
					
		END IF;
	END IF ;
	count <= tmp;
end if;
END PROCESS ;
END Counter_Behav ;


