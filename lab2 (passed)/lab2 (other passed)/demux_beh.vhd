LIBRARY ieee; 
USE ieee.std_logic_1164.all;
ENTITY task4_demux_beh IS 
port( 
	A,B,C, D, a, b: in std_logic;
	Z: out std_logic 
);
END task4_demux_beh;
--
ARCHITECTURE beh OF task4_demux_beh IS 
BEGIN
	Z <= (NOT(a AND b) AND A) OR 
		  (NOT(a) AND b AND B) OR
		  (a AND NOT(b) AND C) OR
		  (a AND b AND D);
END beh;