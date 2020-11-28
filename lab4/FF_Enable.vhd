library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity FF_Enable is
    Port ( D: in  STD_LOGIC;
           E: in  STD_LOGIC;
           CLK: in  STD_LOGIC;
           Q: out  STD_LOGIC);
end FF_Enable;

architecture Behavioral of FF_Enable is
begin

	Main : process(D, E, CLK)
	begin
		if rising_edge(CLK) then 
			if E = '1' then 
				Q <= D;
			end if;
		end if;
	end process;

end Behavioral;

