LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nor2 IS
    port(
		A, B: in std_logic;
		Z: out std_logic);
END nor2;

ARCHITECTURE Beh OF nor2 IS
BEGIN
	Z <= transport A nor B after 1ns;
END Beh;