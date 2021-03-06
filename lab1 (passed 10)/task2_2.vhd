----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:14 09/20/2020 
-- Design Name: 
-- Module Name:    task2_2 - Behavioral 
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

--a	b	c	d	avb	(avb)vc	((avb)vc)vd
--0	0	0	0	0	         0	0
--0	0	0	1	0	         0	1
--0	0	1	0	0	         1	1
--0	0	1	1	0	         1	1
--0	1	0	0	1	         1	1
--0	1	0	1	1	         1	1
--0	1	1	0	1	         1	1
--0	1	1	1	1	         1	1
--1	0	0	0	1	         1	1
--1	0	0	1	1	         1	1

entity task2_2 is
	port(
		a,b,c,d: in std_logic;
		z: out std_logic
	);
end task2_2;

architecture Behavioral of task2_2 is

begin
	Z <= A or B or C or D;
end Behavioral;

