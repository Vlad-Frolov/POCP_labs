Library IEEE;
Use IEEE.std_logic_1164.all;
Entity mux2 is
port (
	A,B : in std_logic;
	Z : out std_logic );

End mux2;
Architecture behavioral of mux2 is
Begin
	Z <= A AND B;
End behavioral;