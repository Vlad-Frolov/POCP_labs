LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tbN3_1 IS
	generic (
		N: integer := 3);
END tbN3_1;

ARCHITECTURE behavior OF tbN3_1 IS 
 
    COMPONENT N3_1
    PORT(
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic_vector(0 to N)
        );
    END COMPONENT;
    
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

   signal Q : std_logic_vector(0 to N);

   constant period : time := 10 ns;
 
BEGIN
   uut: N3_1 PORT MAP (
          CLK => CLK,
          RST => RST,
          Q => Q
        );

	CLK <= not CLK after period;

   stim_proc: process
   begin		
		RST <= '1';
		wait for period;
		RST <= '0';
		wait for period * 20;
   end process;

END;
