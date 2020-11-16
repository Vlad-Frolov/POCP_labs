--var 8
Library IEEE;
Use IEEE.std_logic_1164.all;
Entity behav_device is
port (
	X,Y,Z,W : in std_logic;
	G : out std_logic
	);

End behav_device;
Architecture behavioral of behav_device is

Begin
	G <= (NOT (W AND X AND Y)) XOR (NOT (Y AND Z));
End behavioral;