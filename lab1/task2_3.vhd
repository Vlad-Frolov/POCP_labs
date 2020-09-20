----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:16 09/20/2020 
-- Design Name: 
-- Module Name:    task2_3 - Behavioral 
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

-- a b c d  | XOR |
--|---------+-----+
--| 0 0 0 0 |   0 |
--| 0 0 0 1 |   1 |
--| 0 0 1 0 |   1 |
--| 0 0 1 1 |   0 |
--| 0 1 0 0 |   1 |
--| 0 1 0 1 |   0 |
--| 0 1 1 0 |   0 |
--| 0 1 1 1 |   1 |
--| 1 0 0 0 |   1 |
--| 1 0 0 1 |   0 |
--| 1 0 1 0 |   0 |
--| 1 0 1 1 |   1 |
--| 1 1 0 0 |   0 |
--| 1 1 0 1 |   1 |
--| 1 1 1 0 |   1 |
--| 1 1 1 1 |   0 |

entity task2_3 is
	port(
		a,b,c,d: in std_logic;
		z: out std_logic
	);
end task2_3;

architecture Behavioral of task2_3 is

begin
	Z <= A xor B xor C xor D;
end Behavioral;

