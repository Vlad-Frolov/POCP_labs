library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity N2 is
	generic (
		N: integer := 3);
	port(	D: in STD_LOGIC;
			E: in STD_LOGIC;
			CLK: in STD_LOGIC;
			RST: in STD_LOGIC;
			Q: out STD_LOGIC_VECTOR (N downto 0));
end N2;

architecture Behavioral of N2 is
	signal dopD: STD_LOGIC_VECTOR(N downto 0);
begin
	Main: process (CLK, D, E, RST)
	begin
		if RST = '1' then
			dopD <= (others => '0');
		elsif rising_edge(CLK) then
			if E = '1' then
				dopD <= D & dopD(N downto 1);
			end if;
		end if;
	end process;
	Q <= dopD;
end Behavioral;

architecture Structual of N2 is
	signal dopD: STD_LOGIC_VECTOR(N downto 0);
	component FF_Enable_CLR
		port (
			D: in STD_LOGIC;
			E: in STD_LOGIC;
			CLK: in STD_LOGIC;
			RST: in STD_LOGIC;
			Q: out STD_LOGIC);
	end component;
begin
	E1: FF_Enable_CLR 
	port map(
		CLK => CLK, 
		E => E, 
		RST => RST, 
		D => D,
		Q => dopD(N)
		);
		
	E2: for i in N-1 downto 0 generate			
		E3: FF_Enable_CLR
		port map (
			CLK => CLK, 
			E => E, 
			RST => RST, 
			D => dopD(i+1),
			Q => dopD(i)
			);
	end generate;
	
	Q <= dopD;
end Structual;
