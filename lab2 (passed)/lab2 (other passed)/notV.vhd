Library IEEE;
Use IEEE.std_logic_1164.all;
Entity notV is
port (
	A : in std_logic;
	Z : out std_logic );

End notV;
Architecture behavioral of notV is
Begin
	Z <= not A;
End behavioral;