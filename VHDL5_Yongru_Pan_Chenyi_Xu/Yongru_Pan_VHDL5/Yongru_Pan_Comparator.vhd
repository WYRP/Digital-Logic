library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity Yongru_Pan_comparator is
Port ( A, B : in std_logic_vector (3 downto 0);
AgtBplusOne : out std_logic ;
AgteBplusOne : out std_logic ;
AltBplusOne : out std_logic ;
AlteBplusOne : out std_logic ;
AeqBplusOne : out std_logic ;
overflow : out std_logic );
end Yongru_Pan_comparator ;


ARCHITECTURE Comparator_Behav OF Yongru_Pan_comparator IS
	BEGIN
PROCESS ( A, B )
	BEGIN

		IF B = "1111" THEN 
				AgtBplusOne <= '0';
				AgteBplusOne <= '0';
				AltBplusOne <= '0';
				AlteBplusOne <= '0';
				AeqBplusOne <= '0';
				overflow <= '1';
		elsif A > (B +'1') Then 
				AgtBplusOne <= '1';
				AgteBplusOne <= '0';
				AltBplusOne <= '0';
				AlteBplusOne <= '0';
				AeqBplusOne <= '0';
				overflow <= '0';
		elsif A < (B + '1') Then 
				AgtBplusOne <= '0';
				AgteBplusOne <= '0';
				AltBplusOne <= '1';
				AlteBplusOne <= '0';
				AeqBplusOne <= '0';
				overflow <= '0';

		else
				AgtBplusOne <= '0';
				AgteBplusOne <= '0';
				AltBplusOne <= '0';
				AlteBplusOne <= '0';
				AeqBplusOne <= '1';
				overflow <= '0';
		
		
END IF ;
END PROCESS ;
END Comparator_Behav ;