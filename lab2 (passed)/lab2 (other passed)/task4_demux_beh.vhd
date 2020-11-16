----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:42 09/14/2020 
-- Design Name: 
-- Module Name:    task4_demux_beh - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity task4_demux_beh is
  port (
    x : in  std_logic;
    a : in  std_logic_vector(1 downto 0);
    y : out std_logic_vector(3 downto 0));
end task4_demux_beh;
 
architecture beh of task4_demux_beh is
begin
  y <=
    "000" & x      when a = "00" else
    "00" & x & '0' when a = "01" else
    '0' & x & "00" when a = "10" else
    x & "000"      when a = "11" else
    "0000";
end beh;

