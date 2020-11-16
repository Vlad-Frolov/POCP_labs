----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:30:49 11/01/2020 
-- Design Name: 
-- Module Name:    task5 - Behavioral 
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

entity ANDN is
	Generic(N:integer:=10);
	port(
		A: in std_logic_vector(N-1 downto 0);
		Z: out std_logic
	);
end ANDN;

architecture Behavioral of ANDN is
	signal X: STD_LOGIC_VECTOR(N-2 downto 0);
begin
	GEN_0: AND2 port map (A(0), A(1), X(0));
	SCH: FOR J in 1 to N-2 GENERATE
		GEN_J: AND2 port map (X(J-1), A(J+1), X(J));
	end generate;
	Z <= X(N-2);
end Behavioral;

