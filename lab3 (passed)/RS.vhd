LIBRARY ieee;
USE ieee.std_logic_1164.all;

library UNISIM;
use UNISIM.VComponents.all;

ENTITY RS IS 			  
	port(
		R, S: in std_logic;
		Q, nQ: out std_logic);
END RS;

ARCHITECTURE Str OF RS IS 

COMPONENT nor2 
	port(
		A, B: in std_logic;
		Z: out std_logic);					
END COMPONENT;
	
Signal F, nF: std_logic;
	
BEGIN	 
	U1: nor2 port map (S, F, nF);
	U2: nor2 port map (R, nF, F);
	Q <= F;
	nQ <= nF;
END Str; 

ARCHITECTURE Beh OF RS IS 	
	Signal F, nF: std_logic;
BEGIN			
	nF <= S nor F;	
	Q <= R nor nF;
	nQ <= S nor F;
END Beh;