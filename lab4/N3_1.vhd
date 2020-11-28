library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity N3_1 is
	generic (
		N: integer := 3);
	port(	CLK: in STD_LOGIC;
			RST: in STD_LOGIC;
			Q: out STD_LOGIC_VECTOR (0 to N));
end N3_1;

architecture Behavioral of N3_1 is
	signal dopD: STD_LOGIC_VECTOR(0 to N);
	signal exitQ: STD_LOGIC_VECTOR(0 to N);
begin
	Main: process (CLK, RST)
	begin
		if rising_edge(CLK) then
			if RST = '1' then
				dopD <= (others => '0');
			else
				exitQ <= dopD;
				dopD <= not dopD(N) & dopD(0 to N-1);
			end if;
		end if;
	end process;
	Q <= dopD;
end Behavioral;
