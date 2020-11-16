library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity tb_RS is
end tb_RS;

architecture Test of tb_RS is

	component RS
	port(
		R : in STD_LOGIC;
		S : in STD_LOGIC;
		Q : out STD_LOGIC;
		nQ : out STD_LOGIC);
	end component;

	signal R, S: std_logic := '0';

	signal Q, nQ: STD_LOGIC;

	constant period : time := 10 ns;
	
begin

	UUTB: entity work.RS(Beh)
		port map (
			R => R,
			S => S,
			Q => Q,
			nQ => nQ
		); 
		
	UUTS: entity work.RS(Str)
		port map (
			R => R,
			S => S,
			Q => Q,
			nQ => nQ
		);

	Main: process
	begin  
		wait for period;	
		R <= not R;
	end process; 
	
	Main1: process
	begin  
		wait for period*2;	  
		S <= not S;
	end process;
end Test;