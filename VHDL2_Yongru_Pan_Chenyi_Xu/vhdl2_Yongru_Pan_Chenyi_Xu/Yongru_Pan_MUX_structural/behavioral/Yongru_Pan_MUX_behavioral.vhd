

library ieee;
use ieee.std_logic_1164.all;

entity Yongru_Pan_MUX_Behavioral is
    port( S: in std_logic;
            A, B: in std_logic;
            Y: out std_logic
        ); 
end Yongru_Pan_MUX_Behavioral;

architecture behavioral of Yongru_Pan_MUX_Behavioral is
begin
 Y <= A when (S ='0') else B;
end behavioral;