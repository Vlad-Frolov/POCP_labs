library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end JK;

architecture Behavioral of JK is

	signal q_state : std_logic;

begin

	process (J, K, CLK)
	begin
		if rising_edge(CLK) then
			if J = '0' and K = '1' then
				q_state <= '0';
			elsif J = '1' and K = '0' then
				q_state <= '1';
			elsif J = '1' and K = '1' then
				q_state <= not q_state;
			end if;
		end if;
	end process;
	
	Q <= q_state;

end Behavioral;

