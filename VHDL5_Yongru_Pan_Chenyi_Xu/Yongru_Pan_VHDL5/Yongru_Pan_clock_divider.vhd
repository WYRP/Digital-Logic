library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
 
entity Yongru_Pan_clock_divider is
Port ( enable : in std_logic;
reset : in std_logic;
clk : in std_logic;
en_out : out std_logic);
end Yongru_Pan_clock_divider ;


ARCHITECTURE Clock_div_Behav OF Yongru_Pan_clock_divider IS
signal tmp: std_logic_vector (2 downto 0):="111";
signal en: std_logic;
BEGIN

PROCESS (clk)
BEGIN

		if RISING_EDGE(clk) then
			if reset = '1' then 
			tmp <= "111";
			else
				if tmp = "000" then
				tmp <= "111";
				
				elsif enable = '1' then
				tmp <= (tmp-'1');
		end if;
	END IF;
	en_out <= NOT(tmp(2) or tmp(0) or tmp(1));
END IF;

END PROCESS ;
END Clock_div_Behav ;
