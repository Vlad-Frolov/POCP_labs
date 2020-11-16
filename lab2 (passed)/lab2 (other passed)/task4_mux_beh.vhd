LIBRARY ieee; 
USE ieee.std_logic_1164.all;
ENTITY task4_mux_beh IS 
port( 
	A,B,S: in std_logic;
	Z: out std_logic 
);
END task4_mux_beh;
--
ARCHITECTURE beh OF task4_mux_beh IS 
BEGIN
	Z <= A when S='0' else B; 
END beh;