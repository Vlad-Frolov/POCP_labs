library ieee;
use ieee.std_logic_1164.all;  

entity tb_D is
end tb_D;

architecture Test of tb_D is

	component D
	port(
		D : in STD_LOGIC;
		Q : out STD_LOGIC;
		nQ : out STD_LOGIC);
	end component;

	signal Din: std_logic := '0';

	signal Q, nQ: STD_LOGIC;

	constant period : time := 10 ns;
	
begin

	UUTB : entity work.D(Beh)
		port map (
			D => Din,
			Q => Q,
			nQ => nQ
		);
		
	UUTS : entity work.D(Str)
		port map (
			D => Din,
			Q => Q,
			nQ => nQ
		);

	Main: process
	begin  
		  	wait for period;		   
			Din <= not Din;
	end	process;
end Test;