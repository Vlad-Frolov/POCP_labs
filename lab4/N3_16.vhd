library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity N3_16 is
	generic (
		N: integer := 4);
	port(	
		CLK: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR (0 to N));
end N3_16;

architecture Behavioral of N3_16 is
	signal dopD: STD_LOGIC_VECTOR(0 to N) := "10101";
begin
	Main: process (CLK)
	begin
		if rising_edge(CLK) then
			dopD <= dopD(N) & dopD(0) & (dopD(1) xor dopD(N)) & dopD(2 to N-1);
		end if;      -- x5    x1           --x2      --x5        
	end process;
	Q <= dopD;
end Behavioral;

