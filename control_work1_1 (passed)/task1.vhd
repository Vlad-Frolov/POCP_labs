----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:46:37 10/03/2020 
-- Design Name: 
-- Module Name:    task1 - Behavioral 
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

entity task1 is
	port(
		R, CE, D, C: in STD_LOGIC;
		Q: out STD_LOGIC
	);
end task1;

architecture Behavioral of task1 is
begin
	p1: process(R, CE, D, C)
	begin
		if(rising_edge(C)) then
			if (R = '1') then Q <= '0';
			elsif (CE = '1') then Q <= D;
			end if;
		end if;
	end process;
end Behavioral;

