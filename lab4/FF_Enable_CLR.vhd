library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity FF_Enable_CLR is
	port(	D: in STD_LOGIC;
			E: in STD_LOGIC;
			CLK: in STD_LOGIC;
			RST: in STD_LOGIC;
			Q: out STD_LOGIC);
end FF_Enable_CLR;

architecture Behavioral of FF_Enable_CLR is
	signal dopD: STD_LOGIC;
begin
	Main: process (CLK, D, E, RST)
	begin
		if RST = '1' then
			dopD <= '0';
		elsif rising_edge(CLK) then
			if E = '1' then
				dopD <= D;
			end if;
		end if;
	end process;
	Q <= dopD;
end Behavioral;

