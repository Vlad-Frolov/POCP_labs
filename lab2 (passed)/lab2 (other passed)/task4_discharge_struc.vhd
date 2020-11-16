library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity task4_discharge_struc is
    Port ( a : in  STD_LOGIC_VECTOR(1 downto 0);
           b : in  STD_LOGIC_VECTOR(1 downto 0);
           c : out  STD_LOGIC_VECTOR(1 downto 0);
           p : out  STD_LOGIC);
end task4_discharge_struc;

architecture Structure of task4_discharge_struc is
	component one_discharge
	port(
		a, b, s: in  STD_LOGIC;
		c, p : out  STD_LOGIC
	);
	end component;
	
	signal firstOverflow: STD_LOGIC;
	
begin
	firstDischarge: one_discharge port map (a(0), b(0),'0', c(0), firstOverflow);
	secondDischarge: one_discharge port map (a(1), b(1), firstOverflow, c(1), p);
end Structure;

