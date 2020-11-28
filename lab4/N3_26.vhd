library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity N3_26 is
	generic (
		N: integer := 4);
	port(	
		CLK: in STD_LOGIC;
		P: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR (0 to N));
end N3_26;

architecture Behavioral of N3_26 is
	signal dopD: STD_LOGIC_VECTOR(0 to N) := "00000";
begin
	Main: process (CLK)
	begin
		if rising_edge(CLK) then
			dopD <= (P xor dopD(N)) & dopD(0) & (dopD(1) xor dopD(N)) & dopD(2 to N-1);
		end if;
	end process;
	Q <= dopD;
end Behavioral;
