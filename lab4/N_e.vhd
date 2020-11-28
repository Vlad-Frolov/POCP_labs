library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;

entity N3_e is
	generic (
		N1: integer := 4;
		N3: integer := 4;
		qN: integer := 4);
	port(	
		CLK: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR (0 to qN));
end N3_e;

architecture Behavioral of N3_e is
	signal firD: STD_LOGIC_VECTOR(0 to N1) := "10101";
	signal secD: STD_LOGIC := '0';	
	signal thrD: STD_LOGIC_VECTOR(0 to N3) := "00000";
begin
	Main: process (CLK)
	begin
		if rising_edge(CLK) then
			thrD <= (secD xor thrD(N3)) & thrD(0) & (thrD(1) xor thrD(N3)) & thrD(2 to N3-1);
			secD <= not ((not (firD(0) and firD(1))) and (not (firD(2) and firD(3) and firD(4))));
			firD <= firD(N1) & firD(0) & (firD(1) xor firD(N1)) & firD(2 to N1-1);
		end if;
	end process;
	Q <= thrD;
end Behavioral;

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--library UNISIM;
--use UNISIM.VComponents.all;
--
--entity N_e is
--	port(	
--		CLK: in STD_LOGIC;
--		Q: out STD_LOGIC_VECTOR (31 downto 0));
--end N_e;
--
--architecture Behavioral of N_e is
--	signal exitQ: STD_LOGIC_VECTOR(31 downto 0);
--	signal firD: STD_LOGIC_VECTOR(4 downto 0);
--	signal secD: STD_LOGIC_VECTOR(4 downto 0);	
--	signal thrD: STD_LOGIC_VECTOR(7 downto 0);
--	signal X, Y, Z: STD_LOGIC;
--	signal k: integer := 4;
--	signal i: integer;
--begin
--	Main: process (CLK)
--	begin
--		if rising_edge(CLK) then
--			for k in 0 to 31 loop
--				
--				for i in 7 downto 0 loop
--					if i /= 0 then
--						if i = 7 then
--							Z <= thrD(i);
--							exitQ(k) <= thrD(i);
--							thrD(i) <= thrD(i-1);
--						end if;
--						if i = 6 then
--							Z <= thrD(i) xor Z;
--							thrD(i) <= thrD(i-1);
--						end if;
--						if i = 5 then
--							Z <= thrD(i) xor Z;
--							thrD(i) <= thrD(i-1);
--						end if;
--						if i = 4 then
--							Z <= thrD(i) xor Z;
--							thrD(i) <= thrD(i-1);
--						end if;
--						if i = 3 then
--							Z <= thrD(i) xor Z;
--							thrD(i) <= thrD(i-1);
--						end if;
--						if i = 1 then
--							Z <= thrD(i) xor Z;
--							thrD(i) <= thrD(i-1);
--						end if;
--						if i = 2 then
--							thrD(i) <= thrD(i-1);
--						end if;
--					else
--						thrD(i) <= secD(k) xor Z;
--					end if;
--				end loop;
--				
--				for i in k downto 0 loop
--					if i /= 0 then
--						if i = 4 then
--							Y <= secD(i);
--						end if;
--						if i = 2 then
--							secD(i) <= secD(i-1) xor Y;
--						else
--							secD(i) <= secD(i-1);
--						end if;
--					else
--						secD(i) <= firD(k) xor Y;
--					end if;
--				end loop;
--				
--				for i in k downto 0 loop
--					if i /= 0 then
--						if i = 4 then
--							Z <= firD(i);
--						end if;
--						if i = 3 then
--							Z <= firD(i) xor Z;
--							firD(i) <= firD(i-1);
--						else
--							firD(i) <= firD(i-1);
--						end if;
--					else
--						firD(i) <= Z;
--					end if;
--				end loop;
--				
--			end loop;
--		end if;
--	end process;
--	Q <= exitQ;
--end Behavioral;
