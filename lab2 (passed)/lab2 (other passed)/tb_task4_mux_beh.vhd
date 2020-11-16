--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:48:30 09/14/2020
-- Design Name:   
-- Module Name:   E:/POCP/secondLab/tb_task4_mux_beh.vhd
-- Project Name:  secondLab
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task4_mux_beh
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb_task4_mux_beh IS
END tb_task4_mux_beh;
 
ARCHITECTURE behavior OF tb_task4_mux_beh IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task4_mux_beh
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Z : OUT  std_logic
        );
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
   uut: task4_mux_beh PORT MAP (
          A => A,
          B => B,
          S => S,
          Z => Z
        );

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
