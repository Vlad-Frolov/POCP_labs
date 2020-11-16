library ieee;
use ieee.std_logic_1164.all;	 
use ieee.std_logic_signed.all;

entity tb_DE is
end tb_DE;

architecture Test of tb_DE is

	component DE
	port(
		D : in STD_LOGIC;
		E : in STD_LOGIC;
		Q : out STD_LOGIC;
		nQ : out STD_LOGIC);
	end component;

	signal D, E: std_logic := '0';

	signal Q, nQ: STD_LOGIC;

	constant period : time := 10 ns;
	
begin

	UUTB : entity work.DE(Beh)
		port map (
			D => D,
			E => E,
			Q => Q,
			nQ => nQ
		);
		
	UUTS : entity work.DE(Str)
		port map (
			D => D,
			E => E,
			Q => Q,
			nQ => nQ
		);

	Main: process
	begin  
		  	wait for period;		   
			D <= not D;
	end	process;
	Main1: process
	begin  
		  	wait for period*2;		   
			E <= not E;
	end	process;
end Test;