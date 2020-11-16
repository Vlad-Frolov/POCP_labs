----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:38:28 09/15/2020 
-- Design Name: 
-- Module Name:    task4_demux_struc - Behavioral 
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

entity task4_demux_struc is
Port ( sig : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           outVec : out  STD_LOGIC_VECTOR(3 downto 0));
end task4_demux_struc;

architecture structural of task4_demux_struc is
component AND3
	port(
		a,b,c: in  STD_LOGIC;
		invert: in STD_LOGIC_VECTOR(2 downto 0);
		z : out  STD_LOGIC
	);
end component;
begin

	A: AND3 port map (sig, s(1), s(0), "011", outVec(0));
	B: AND3 port map (sig, s(1), s(0), "010", outVec(1));
	C: AND3 port map (sig, s(1), s(0), "001", outVec(2));
	D: AND3 port map (sig, s(1), s(0), "000", outVec(3));

end structural;

