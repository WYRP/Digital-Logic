library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;


entity Yongru_Pan_wrapper is
Port ( enable : in std_logic ;
reset : in std_logic;
clk : in std_logic ;
HEX0 : out std_logic_vector (6 downto 0));
end Yongru_Pan_wrapper ;

ARCHITECTURE wrapper_Behav OF Yongru_Pan_wrapper IS

component Yongru_Pan_clock_divider is
Port ( enable : in std_logic;
reset : in std_logic;
clk : in std_logic;
en_out : out std_logic);
end component;

component Yongru_Pan_counter is
Port ( enable: in std_logic;
reset: in std_logic;
clk: in std_logic;
count : out std_logic_vector (2 downto 0));
end component;

component seven_segment_decoder is
port ( code : in std_logic_vector (3 downto 0) ;
segments_out : out std_logic_vector (6 downto 0) );
end component;

signal out_cd: std_logic;
signal out_c: std_logic_vector(2 downto 0);
signal seven_in: std_logic_vector (3 downto 0);

begin 

stage0: Yongru_Pan_clock_divider port map(enable, reset, clk, out_cd); 

stage1: Yongru_Pan_counter port map(enable, reset, out_cd, out_c); 

seven_in <= '0' & out_c;

stage2: seven_segment_decoder port map(seven_in,HEX0);

END wrapper_Behav ;
