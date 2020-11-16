LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY inv IS
    port(
		I: in std_logic;
		O: out std_logic);
END inv;

ARCHITECTURE Beh OF inv IS
BEGIN
	O <= transport NOT I after 5ns;
END Beh;

