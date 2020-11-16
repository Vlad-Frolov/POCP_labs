library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task4_discharge_beh is
    Port ( a : in  STD_LOGIC_VECTOR(1 downto 0);
           b : in  STD_LOGIC_VECTOR(1 downto 0);
           c : out  STD_LOGIC_VECTOR(1 downto 0);
           p : out  STD_LOGIC);
end task4_discharge_beh;

architecture Behavioral of task4_discharge_beh is

begin
	c(0)<= a(0) xor b(0);
	c(1)<= (a(0) and b(0)) xor (a(1) xor b(1));
	p <= (a(1) and b(1)) or (a(0) and b(0) and (a(1) or b(1)));
end Behavioral;

