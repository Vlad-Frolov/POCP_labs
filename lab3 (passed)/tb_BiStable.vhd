library ieee;
use ieee.std_logic_1164.all;

entity tb_BiStable is
end tb_BiStable;

architecture Test of tb_BiStable is

	component BiStable
	port(
		Q : out STD_LOGIC;
		nQ : out STD_LOGIC);
	end component;

	signal Q: STD_LOGIC := '1';
	signal nQ: STD_LOGIC;

	constant period : time := 10 ns;

begin

	UUT : BiStable
		port map (
			Q => Q,
			nQ => nQ
		);
		
	Main: process
	begin				 
		wait for period;	 		 
	end process;
	
end Test;