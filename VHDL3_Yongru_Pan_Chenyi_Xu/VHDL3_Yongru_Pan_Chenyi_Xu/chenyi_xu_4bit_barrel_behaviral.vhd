library IEEE;
use IEEE.std_logic_1164.all;

entity chenyi_xu_4bit_barrel_behaviral is
port(sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
end chenyi_xu_4bit_barrel_behaviral ;
architecture behaviral of chenyi_xu_4bit_barrel_behaviral is
begin
with sel select
Y <= X when "00",
X(0) & X(3 downto 1) when "01",
X(1 downto 0) & X(3 downto 2)when "10",
X(2 downto 0) & X(3) when others;
end behaviral;