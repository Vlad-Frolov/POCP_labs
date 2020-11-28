library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity N1_Asyn is
	generic (
		N: integer := 3);
	port(	D: in STD_LOGIC_VECTOR(N downto 0);
			E: in STD_LOGIC;
			Q: out STD_LOGIC_VECTOR (N downto 0));
end N1_Asyn;

architecture Behavioral of N1_Asyn is
	signal dopD: STD_LOGIC_VECTOR(N downto 0);
begin
	Main: process (D, E)
	begin
		if E = '1' then
			dopD <= D;
		end if;
	end process;
	Q <= dopD;
end Behavioral;

architecture Structual of N1_Asyn is
	signal dopD: STD_LOGIC_VECTOR(N downto 0);
	component D_Enable
		port (
			D, E: in STD_LOGIC;
			Q: out STD_LOGIC
			);
	end component;
begin
	E1: for i in N downto 0 generate
		E2: D_Enable port map(
			D => D(i),
			E => E,
			Q => Q(i)
			);
	end generate;
end Structual;

