library IEEE;
use IEEE.STD_LOGIC_11164.ALL;
use IEEE.numeric_std.all; 

entity bcd_adder_structural is
port ( A: in std_logic_vector (3 downto 0);
   B: in std_logic_vector (3 downto 0);
       S: out std_logic_vector (3 downto 0); 
       C: out std_logic);
end bcd_adder_structural;

architecture structure of bcd_adder_structura is

 
SIGNAL J1,J2,J3,C1,C2,C3,C4,C5,C6,CR: STD_LOGIC;
signal J0: std_logic_vector; 

component (rippleadderfilename) 
Port(
 Cin, x, y: in std_logic;
 sum, carry: out std_logic); 
End component;

component and2 is
port(X, Y: in std_logic;
   Z: out std_logic);
end component;

component or2 is
port(X, Y, C_in: in std_logic;
Z: out std_logic);
end component;

COMPONENT XOR1
PORT(A,B:IN STD_LOGIC; 
     C:OUT STD_LOGIC);
END COMPONENT;

Begin
i1:rippleadderfilename PORT MAP(A(0),B(0),'0',J0,C1);
i2:rippleadderfilename PORT MAP(A(1),B(1),C1,J1,C2);
i3:rippleadderfilename PORT MAP(A(2),B(2),C2,J2,C3);
i4:rippleadderfilename PORT MAP(A(3),B(3),C3,J3,C4);

CR<=(((J3 NAND J2)NAND(J3 NAND J1)) NAND ((C4 NAND C4)));
S<=J0;
i5:rippleadderfilename PORT MAP(J1,CR,'0',S1,C5);
i6:rippleadderfilename PORT MAP(J2,CR,'0',S2,C6);

STEP21: XOR1 PORT MAP(J3,C6,S3);
C<=CR
END structure;