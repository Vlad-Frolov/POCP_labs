library IEEE;
library UNISIM;
use IEEE.STD_LOGIC_1164.ALL;
use UNISIM.VComponents.ALL;

entity N1 is
	port (
		D: in std_logic;
		Q: out std_logic
	);
end N1;

architecture Behavioral of N1 is
	signal temp: std_logic;
begin
	P_B: process(D)
	begin
		if (D /= temp) then
			temp <= D;
		end if;
	end process;
	Q <= temp;
end Behavioral;


--architecture Structural of N1 is
--begin
--	E1: entity N1(Behavioral)
--		port map (D, Q);
--end Structural;