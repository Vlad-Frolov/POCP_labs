library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity BiStable is
	port(				
		Q, nQ: out std_logic
	);
end BiStable;

architecture Behavioral of BiStable is
COMPONENT inv 
	port(
		I: in std_logic;
		O: out std_logic);						
END COMPONENT;
	
signal S: std_logic := '0';
signal nS: std_logic;

begin
	U1: inv port map (S, nS);
	U2: inv port map (nS, Q);
	nQ <=  not S; 
end Behavioral;

