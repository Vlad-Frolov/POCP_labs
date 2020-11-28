LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tbN3_6 IS
	generic (
		N: integer := 4);
END tbN3_6;
 
ARCHITECTURE behavior OF tbN3_6 IS 
	COMPONENT N3_6
	generic (N : integer := 4);
	PORT(
		CLK: IN  std_logic;
		Q: OUT  std_logic_vector(0 to N));
	END COMPONENT;
	 
   signal CLK: std_logic := '0';
   signal Q: std_logic_vector(0 to N);
   constant period: time := 10 ns;
 
BEGIN
   uut: N3_6 PORT MAP (
          CLK => CLK,
          Q => Q
        );

	CLK <= not CLK after period;

END;
