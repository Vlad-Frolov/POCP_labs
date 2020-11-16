LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_task4_mux_struc IS
END tb_task4_mux_struc;
 
ARCHITECTURE behavior OF tb_task4_mux_struc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task4_mux_struc
    port (
			A,B,S : in std_logic;
			Z : out std_logic );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
	signal test_vector: std_logic_vector (2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task4_mux_struc PORT MAP (
          A => A,
          B => B,
          S => S,
          Z => Z
        );
		  
	--A <= not A after period;
	--B <= not B after period * 2;	
	--S <= not S after period * 4;
	--D <= not D after period * 8;
	
	A<=test_vector(0);
	B<=test_vector(1);
	S<=test_vector(2);
	
	stim_proc: process
	begin
  
   for i in 0 to 7 loop
      
        test_vector <= std_logic_vector(to_unsigned(i, test_vector'length)); 
      wait for period;
    end loop;
  
	report "End of simulation" severity failure;
  
	end process;

END;
