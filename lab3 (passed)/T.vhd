library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity T is
	port( T: in std_logic;
		�: in std_logic;
		Q: out std_logic
	);
end T;
 
architecture Behavioral of T is
signal tmp: std_logic;
	begin
	process (�)
	begin
		if rising_edge(�) then
			if T='0' then
				tmp <= tmp;
			elsif T='1' then
				tmp <= not (tmp);
			end if;
		end if;
	end process;
	Q <= tmp;
end Behavioral;
