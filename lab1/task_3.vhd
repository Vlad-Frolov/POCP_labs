----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:12 09/20/2020 
-- Design Name: 
-- Module Name:    task_3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--n1	n2	n3	n1&n2	?n2	n3&(?n2)	(n1&n2)v(n3&(?n2))
--0	0	0	0	     1	        0	0
--0	0	1	0	     1	        1	1
--0	1	0	0	     0	        0	0
--0	1	1	0	     0	        0	0
--1	0	0	0	     1	        0	0
--1	0	1	0	     1	        1	1
--1	1	0	1	     0	        0	1
--1	1	1	1	     0	        0	1

entity task_3 is
	port(
		a,b,c: in std_logic;
		z: out std_logic
	);
end task_3;

architecture Behavioral of task_3 is

begin
	Z <= (not B and C) or (A and B);
end Behavioral;

