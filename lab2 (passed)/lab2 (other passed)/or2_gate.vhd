Library IEEE;
Use IEEE.std_logic_1164.all;
Entity or2_gate is
port (
	A, B : in std_logic;
	Z : out std_logic );

End or2_gate;
Architecture behavioral of or2_gate is
Begin
	Z <= A OR B;
End behavioral;