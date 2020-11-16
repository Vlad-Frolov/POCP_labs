----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:02:12 09/15/2020 
-- Design Name: 
-- Module Name:    task4_AND5_struc - Behavioral 
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

entity task4_AND5_struc is
port (
    A,B,C,D,E : in  std_logic;
    Z : out std_logic);
end task4_AND5_struc;


architecture structural of task4_AND5_struc is


component mux2
port (
	A,B : in std_logic;
	Z : out std_logic );
end component;

signal s : std_logic_vector(0 to 4);
begin

U1: for I in 0 to 3 generate
		U2: mux2 port map(s(i),s(i+1),s(i+1));
	end generate;
	
	Z <= s(4);

end structural;

