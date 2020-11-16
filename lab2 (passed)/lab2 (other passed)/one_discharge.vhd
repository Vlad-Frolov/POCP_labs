library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity one_discharge is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  s: in STD_LOGIC;
           c : out  STD_LOGIC;
           p : out  STD_LOGIC);
end one_discharge;

architecture Behavioral of one_discharge is

begin
	c <= a xor b xor s;
	p <= (a and b and s) or ((not a xor not b xor not s) and not (not a and not b and not s));
end Behavioral;
