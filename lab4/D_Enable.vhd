library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity D_Enable is
    Port ( D: in  STD_LOGIC;
           E: in  STD_LOGIC;
           Q: out  STD_LOGIC);
end D_Enable;

architecture Behavioral of D_Enable is
begin

	Main : process(D, E)
	begin
		if E = '1' then 
			Q <= D;
		end if;
	end process;

end Behavioral;

