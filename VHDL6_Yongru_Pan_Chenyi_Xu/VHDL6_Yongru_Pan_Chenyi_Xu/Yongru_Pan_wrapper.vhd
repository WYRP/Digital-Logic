library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Yongru_Pan_wrapper is
Port ( reset : in std_logic;
clk : in std_logic ;
HEX0 : out std_logic_vector (6 downto 0);
HEX5 : out std_logic_vector(6 downto 0));
end Yongru_Pan_wrapper ;


Architecture wrapper_behavioral of Yongru_Pan_wrapper is
signal enable, en_out, data: std_logic;
signal cnt_1, cnt_2 : std_logic_vector (2 downto 0);
signal seven_in_1, seven_in_2:std_logic_vector (3 downto 0);


component Yongru_Pan_clock_divider is
Port ( enable : in std_logic;
reset : in std_logic;
clk : in std_logic;
en_out : out std_logic);
end component;

component ROM is
port(
    clk : in std_logic;
    reset : in std_logic;
    data : out std_logic);
end component;

component Yongru_Pan_sequence_detector is 
Port ( seq : in std_logic;
enable : in std_logic ;
reset : in std_logic ;
clk : in std_logic;
cnt_1 : out std_logic_vector (2 downto 0); 
cnt_2 : out std_logic_vector (2 downto 0));
end component;

component seven_segment_decoder is
port ( code : in std_logic_vector (3 downto 0) ;
segments_out : out std_logic_vector (6 downto 0) );
end component ;

begin

stage0: Yongru_Pan_clock_divider port map ('1', reset, clk, en_out);
stage1: ROM port map(en_out, reset, data);
--enable as clk for ROM
stage2: Yongru_Pan_sequence_detector port map(data, '1' , reset, en_out, cnt_1, cnt_2);
seven_in_1 <= '0' & cnt_1;
seven_in_2 <= '0' & cnt_2;
stage3: seven_segment_decoder port map(seven_in_1, HEX0);
stage4: seven_segment_decoder port map(seven_in_2, HEX5);

end architecture;





