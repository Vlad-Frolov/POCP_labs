LIBRARY ieee;
USE ieee.std_logic_1164.all;

library UNISIM;
use UNISIM.VComponents.all;

ENTITY D IS 			  
	port(
		D: in std_logic;
		Q, nQ: out std_logic);
END D;

ARCHITECTURE Str OF D IS 

	COMPONENT RS 
		port(
			R, S: in std_logic;
			Q, nQ: out std_logic);						
	END COMPONENT; 
	
	COMPONENT inv
		port(
			I: in std_logic;
			O: out std_logic);						
	END COMPONENT;
	
	Signal nD: std_logic;
	
BEGIN
	U1: inv port map (D, nD);	  
	U2: RS port map (nD, D, Q, nQ);	
END Str; 

ARCHITECTURE Beh OF D IS 
	Signal nD, F, nF: std_logic;
BEGIN
	nD <= not D;
	nF <= nD nor F;
	F <= D nor nF;	
	Q <= F;
	nQ <= nF;
END Beh;