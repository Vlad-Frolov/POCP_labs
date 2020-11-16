----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:29 09/15/2020 
-- Design Name: 
-- Module Name:    task4_AND5_beh - Behavioral 
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

entity task4_AND5_beh is
port (
    A,B,C,D,E : in  std_logic;
    Z : out std_logic);
end task4_AND5_beh;

architecture Behavioral of task4_AND5_beh is

begin

	Z <= A AND B AND C AND D AND E;

end Behavioral;

