LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tbN3_e IS
	generic (
		N1: integer := 4;
		N3: integer := 4;
		qN: integer := 4);
END tbN3_e;
 
ARCHITECTURE behavior OF tbN3_e IS 

    COMPONENT N3_e
	generic (
		N1: integer := 4;
		N3: integer := 4;
		qN: integer := 4);
    PORT(
         CLK : IN  std_logic;
         Q : OUT  std_logic_vector(0 to qN)
        );
    END COMPONENT;
    
   signal CLK : std_logic := '0';
   signal Q : std_logic_vector(0 to qN);
	
   constant period : time := 10 ns;
 
BEGIN
   uut: N3_e PORT MAP (
          CLK => CLK,
          Q => Q
        );

	CLK <= not CLK after period;
	
END;
