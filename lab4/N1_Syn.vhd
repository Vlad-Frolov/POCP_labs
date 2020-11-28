library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity N1_Syn is
	generic (
		N: integer := 3);
	port(	D: in STD_LOGIC_VECTOR(N downto 0);
			E: in STD_LOGIC;
			CLK: in STD_LOGIC;
			Q: out STD_LOGIC_VECTOR (N downto 0));
end N1_Syn;

architecture Behavioral of N1_Syn is
	signal dopD: STD_LOGIC_VECTOR(N downto 0);
begin
	Main: process (D, E, CLK)
	begin
		if rising_edge(CLK) then
			if E = '1' then
				dopD <= D;
			end if;
		end if;
	end process;
	Q <= dopD;
end Behavioral;

architecture Structual of N1_Syn is
	signal dopD: STD_LOGIC_VECTOR(N downto 0);
	component FF_Enable
		port (
			D, E, CLK: in STD_LOGIC;
			Q: out STD_LOGIC
			);
	end component;
begin
	E1: for i in N downto 0 generate
		E2: FF_Enable port map(
			D => D(i),
			E => E,
			CLK => CLK,
			Q => Q(i)
			);
	end generate;
end Structual;
