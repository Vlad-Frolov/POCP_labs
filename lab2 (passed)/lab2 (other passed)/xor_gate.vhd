Library IEEE;
Use IEEE.std_logic_1164.all;
Entity xor_gate is
port (
	A,B : in std_logic;
	Z : out std_logic );

End xor_gate;
Architecture behavioral of xor_gate is
Begin

	Z <= A XOR B;

End behavioral;

