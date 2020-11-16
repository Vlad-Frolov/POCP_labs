library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and2 is
	port(
			I0, I1: in std_logic;
			O: out std_logic);
end and2;

architecture Behavioral of and2 is

begin
	O <= I0 AND I1;
end Behavioral;

