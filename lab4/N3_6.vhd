library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity N3_6 is
	generic (
		N: integer := 4;
		x1: integer := 1);
	port(	
		CLK: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR (0 to N));
end N3_6;

architecture Behavioral of N3_6 is
	signal dopD: STD_LOGIC_VECTOR(0 to N) := "10101";
begin
	Main: process (CLK)
	begin
		if rising_edge(CLK) then
			dopD <= (dopD(x1) xor dopD(N)) & dopD(0 to N-1);
		end if;                     
	end process;

	Q <= dopD;
end Behavioral;


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--library UNISIM;
--use UNISIM.VComponents.all;
--
--entity N3_6 is
--	port(	
--		CLK: in STD_LOGIC;
--		Q: out STD_LOGIC_VECTOR (4 downto 0));
--end N3_6;
--
--architecture Behavioral of N3_6 is
--	signal dopD: STD_LOGIC_VECTOR(0 to 4) := (others => '0');
--	signal exitQ: STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
--	signal x1: STD_LOGIC;
--	signal x3: STD_LOGIC;
--	signal x4: STD_LOGIC;
--begin
--	Main: process (CLK, dopD)
--	begin
--		if rising_edge(CLK) then
--			for k in 4 downto 0 loop
--				for i in 4 downto 0 loop
--					if i /= 0 then
--						if i = 4 then
--							x4 <= dopD(i);
--							exitQ(k) <= dopD(i);
--						end if;
--						if i = 3 then
--							x3 <= dopD(i);
--						end if;
--						if i = 1 then
--							x1 <= dopD(i);
--						end if;
--						dopD(i) <= dopD(i-1);
--					else
--						dopD(i) <= x1 xor (x4 xor x3);
--					end if;
--				end loop;
--			end loop;
--		end if;
--	end process;
--
--	Q <= exitQ;
--end Behavioral;


