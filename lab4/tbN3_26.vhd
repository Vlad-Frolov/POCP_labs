LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tbN3_26 IS
	generic (
		N: integer := 4);
END tbN3_26;
 
ARCHITECTURE behavior OF tbN3_26 IS  
	COMPONENT N3_26
	generic (N : integer := 4);
	PORT(
		CLK: IN  std_logic;
		P: IN  std_logic;
		Q: OUT  std_logic_vector(0 to N));
	END COMPONENT;
    
   signal CLK: std_logic := '0';
   signal P: std_logic := '0';
   signal Q: std_logic_vector(0 to N);
   constant period : time := 10 ns;
	
	constant testD : std_logic_vector := "1011101011";
 
BEGIN
   uut: N3_26 PORT MAP (
          CLK => CLK,
			 P => P,
          Q => Q
        );

	stim_proc: process
	begin	
		wait for period;
		for i in testD'length-1 downto 0 loop
			P <= testD(i);					
			wait for period * 2;
		end loop;	
	end process;
	
	CLK <= not CLK after period;
	
END;