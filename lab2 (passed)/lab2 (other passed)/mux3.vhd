Library IEEE;
Use IEEE.std_logic_1164.all;
Entity mux3 is
port (
	A,B,C : in std_logic;
	Z : out std_logic );

End mux3;
Architecture behavioral of mux3 is
Begin
	Z <= A AND B AND C;
End behavioral;