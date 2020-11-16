library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity AND3 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
			  invert: in STD_LOGIC_VECTOR(0 to 2);
           z : out  STD_LOGIC);
end AND3;

architecture Behavioral of AND3 is
	signal usable: std_logic_vector(2 downto 0);
begin
	usable(0) <= a when invert(0) = '0' else not a;
	usable(1) <= b when invert(1) = '0' else not b;
	usable(2) <= c when invert(2) = '0' else not c;
	z <= usable(0) and usable(1) and usable(2);
end Behavioral;

