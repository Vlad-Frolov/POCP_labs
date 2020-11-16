--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:38:39 09/15/2020
-- Design Name:   
-- Module Name:   E:/POCP/secondLab/tb_task4_demux_struc.vhd
-- Project Name:  secondLab
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task4_demux_struc
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
 
ENTITY tb_task4_demux_struc IS
END tb_task4_demux_struc;
 
ARCHITECTURE behavior OF tb_task4_demux_struc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task4_demux_struc
    PORT(
         sig : IN  std_logic;
         s : IN  std_logic_vector(1 downto 0);
         outVec : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sig : std_logic := '0';
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal outVec : std_logic_vector(3 downto 0);
	signal test_vector: std_logic_vector (2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task4_demux_struc PORT MAP (
          sig => sig,
          s => s,
          outVec => outVec
        );

	sig<=test_vector(0);
	s(0)<=test_vector(1);
	s(1)<=test_vector(2);

   -- Stimulus process
   stim_proc: process
   begin	

		for i in 0 to 7 loop
      
        test_vector <= std_logic_vector(to_unsigned(i, test_vector'length)); 
      wait for period;
    end loop;
  
	report "End of simulation" severity failure;
    
   end process;

END;
