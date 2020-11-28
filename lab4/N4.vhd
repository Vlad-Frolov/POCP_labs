library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity N4 is
	port(	
		D: in STD_LOGIC_VECTOR (4 downto 0);
		CLK: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR (4 downto 0));
end N4;

architecture Behavioral of N4 is
	signal dopD: STD_LOGIC_VECTOR(4 downto 0);
	signal exitQ: STD_LOGIC_VECTOR(4 downto 0);
	signal x4: STD_LOGIC;
	signal k: integer;
begin
	Main: process (D, CLK, dopD)
	begin
		if rising_edge(CLK) then
			k <= 0;
			dopD <= D;
			for i in 4 downto 0 loop
				if i /= 0 then
					if i = 4 then
						x4 <= dopD(i);
						exitQ(k) <= dopD(i);
					end if;
					if i = 2 then
						dopD(i) <= dopD(i-1) xor x4;
					else
						dopD(i) <= dopD(i-1);
					end if;
				else
					dopD(i) <= D(k) xor x4;
				end if; 
				k <= k + 1;
			end loop;
		end if;
	end process;
	Q <= exitQ;
end Behavioral;