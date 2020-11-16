Library IEEE;
Use IEEE.std_logic_1164.all;
Entity not is
port (
	A,B,S : in std_logic;
	Z : out std_logic );

End mux2;
Architecture behavioral of mux2 is
Begin

	Z <= A when S=‘0’ else B;

End behavioral;

