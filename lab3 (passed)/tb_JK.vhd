LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_JK IS
END tb_JK;
 
ARCHITECTURE behavior OF tb_JK IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
	
	signal check_vector : std_logic_vector (2 downto 0) := "000";
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK PORT MAP (
          J => J,
          K => K,
          CLK => CLK,
          Q => Q
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		
		for i in 0 to 8 loop
		
			check_vector <= std_logic_vector(to_unsigned(i, check_vector'length));
			CLK <= check_vector(0);
			J <= check_vector(1);
			K <= check_vector(2);
			wait for 10 ns;
		
		end loop;
		
   end process;

END;
