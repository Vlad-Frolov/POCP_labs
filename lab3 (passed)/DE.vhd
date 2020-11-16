LIBRARY ieee;
USE ieee.std_logic_1164.all;

library UNISIM;
use UNISIM.VComponents.all;

ENTITY DE IS 			  
	port(
		D, E: in std_logic;
		Q, nQ: out std_logic
		);
END DE;

ARCHITECTURE Str OF DE IS 

	COMPONENT RS 
		port(
			R, S: in std_logic;
			Q, nQ: out std_logic
			);						
	END COMPONENT; 
	
	COMPONENT inv
		port(
			I: in std_logic;
			O: out std_logic
			);						
	END COMPONENT;	
	
	COMPONENT and2
		port(
			I0, I1: in std_logic;
			O: out std_logic
			);						
	END COMPONENT;
	
	Signal nD, S, R: std_logic;
	
BEGIN
	U1: inv port map (D, nD);
	U2: and2 port map (D, E, S);
	U3: and2 port map (nD, E, R);
	U4: RS port map (R, S, Q, nQ);	
END Str; 

ARCHITECTURE Beh OF DE IS	  
	Signal S: std_logic;
BEGIN	
	Main: process(D, E)
	begin
		if E = '1' then
			S <= D;	  
		end if;
	end process;
	Q <= S;
	nQ <= not S;
END Beh;