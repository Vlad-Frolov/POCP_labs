----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:28 10/03/2020 
-- Design Name: 
-- Module Name:    task3 - Behavioral 
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

entity task3 is
	port(
		A: in std_logic;
		B,D: buffer std_logic
	);
end task3;

architecture Behavioral of task3 is

begin
	p1: process(A) begin
	if (A='1') then
		B <= D;
	else
		D <= D;
	end if;
	end process;
end Behavioral;

