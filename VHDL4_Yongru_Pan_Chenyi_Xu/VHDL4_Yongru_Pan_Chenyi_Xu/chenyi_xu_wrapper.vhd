library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity chenyi_xu_wrapper is

Port ( A, B : in std_logic_vector (3 downto 0) ;
decoded_A : out std_logic_vector  (6 downto 0) ;
decoded_B : out std_logic_vector (6 downto 0) ;
decoded_AplusB : out std_logic_vector (13 downto 0) );

end chenyi_xu_wrapper;

architecture wrapper_arch of chenyi_xu_wrapper is

component seven_segment_decoder is
port(code : in std_logic_vector (3 downto 0) ;
 segments_out : out std_logic_vector (6 downto 0));
END component;

component Yongru_Pan_VHDL3_BCD_behavioral is
port(A, B: in std_logic_vector (3 downto 0);
     C: out std_logic;
 S: out std_logic_vector(3 downto 0));
END component;

signal bcd_out: std_logic_vector(3 downto 0);
signal bcd_carry: std_logic;
signal Z: std_logic_vector(3 downto 0);

Begin
stage0: seven_segment_decoder port map(A, decoded_A);
stage1: seven_segment_decoder port map(B, decoded_B);

stage2: Yongru_Pan_VHDL3_BCD_behavioral port map(A, B, bcd_carry, bcd_out);
stage3: seven_segment_decoder port map (bcd_out, decoded_AplusB(6 downto 0));
Z <= '0'&'0'&'0'& bcd_carry;  
stage4: seven_segment_decoder port map (Z(3 downto 0), decoded_AplusB(13 downto 7));
End wrapper_arch;

