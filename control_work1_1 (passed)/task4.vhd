library IEEE;
library UNISIM;
use IEEE.STD_LOGIC_1164.ALL;
use UNISIM.VComponents.ALL;

entity N1_Struct is
	port(
		X: in std_logic;
		Z: out std_logic
	);
end N1_Struct;

architecture Structural of N1_Struct is
	Component N1
		Port(
			D: in std_logic;
			Q: out std_logic
		);
	End Component;
begin
	U1: N1 port map (X, Z);
end Structural;