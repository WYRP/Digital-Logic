library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Yongru_Pan_sequence_detector is
Port ( seq : in std_logic;
enable : in std_logic ;
reset : in std_logic ;
clk : in std_logic;
cnt_1 : out std_logic_vector (2 downto 0); -- counts the occurrence of the pattern "1011".
cnt_2 : out std_logic_vector (2 downto 0)); -- counts the occurrence of the pattern "0010".
end Yongru_Pan_sequence_detector;

Architecture sd_behavioral of Yongru_Pan_sequence_detector is

component Chenyi_Xu_FSM is
port(seq : in std_logic; enable : in std_logic;
reset : in std_logic; clk : in std_logic;
out_1 : out std_logic; -- generates 1 when the pattern "1011" is detected; otherwise 0.
out_2 : out std_logic);
end component;

component Yongru_Pan_counter is
Port ( enable : in std_logic;
reset : in std_logic;
clk : in std_logic;
count : out std_logic_vector (2 downto 0));
end component;

signal out_1, out_2: std_logic; 

begin
stage0: Chenyi_Xu_FSM port map (seq, enable, reset, clk, out_1, out_2);
stage1: Yongru_Pan_counter port map(out_1, reset, clk, cnt_1);
stage2: Yongru_Pan_counter port map(out_2, reset, clk, cnt_2); 

END sd_behavioral; 

