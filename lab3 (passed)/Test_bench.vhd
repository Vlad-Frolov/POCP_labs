--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:19:26 10/31/2020
-- Design Name:   
-- Module Name:   C:/Users/anduser/Desktop/POCP/thirdLab/Test_bench.vhd
-- Project Name:  thirdLab
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: V74x148
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
--USE ieee.numeric_std.ALL;
 
ENTITY Test_bench IS
END Test_bench;
 
ARCHITECTURE behavior OF Test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT V74x148
    PORT(
         EI_L : IN  std_logic;
         I_L : IN  std_logic_vector(7 downto 0);
         A_L : OUT  std_logic_vector(2 downto 0);
         EO_L : OUT  std_logic;
         GS_L : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal EI_L : std_logic := '0';
   signal I_L : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal A_L : std_logic_vector(2 downto 0);
   signal EO_L : std_logic;
   signal GS_L : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: V74x148 PORT MAP (
          EI_L => EI_L,
          I_L => I_L,
          A_L => A_L,
          EO_L => EO_L,
          GS_L => GS_L
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
