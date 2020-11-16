Library IEEE;
Use IEEE.std_logic_1164.all;
Entity mux4 is
port (
	A,B,A1,B1,S : in std_logic;
	Z,Z1 : out std_logic );

End mux4;
Architecture structural of mux4 is

component mux
port (
	A,B,S : in std_logic;
	Z : out std_logic );
end component;

Begin

U1: mux port map (A,B,S,Z);
U2: mux port map (A1,B1,S,Z1);

End structural;