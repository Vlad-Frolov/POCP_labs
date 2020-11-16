library ieee;
use ieee.std_logic_1164.all;

entity dop_2 is

port(
	inl : in std_logic_vecotr(0 to 8);
	out1 : out STD_LOGIC
	);

end dop_2;

architecture behave of dop_2 is

begin

process (in1)
	 begin
	 if in1(8) = '1' then out1 <= "111";
	 elsif in1(7) = '1' then out1 <= "111";
	 elsif in1(6) = '1' then out1 <= "110";
	 elsif in1(5) = '1' then out1 <= "101";
	 elsif in1(4) = '1' then out1 <= "100";
	 elsif in1(3) = '1' then out1 <= "011";
	 elsif in1(2) = '1' then out1 <= "100";
	 elsif in1(1) = '1' then out1 <= "001";
	 elsif in1(0) = '1' then out1 <= "000";
	 end if;
 end process;
end;