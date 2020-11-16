Library IEEE;
Use IEEE.std_logic_1164.all;
Entity task4_mux_struc is
port (
	A,B,S : in std_logic;
	Z : out std_logic );

End task4_mux_struc;
Architecture structural of task4_mux_struc is

component notV
port (
	A : in std_logic;
	Z : out std_logic );
end component;

component or2_gate
port (
	A, B : in std_logic;
	Z : out std_logic );
end component;

component mux2
port (
	A,B : in std_logic;
	Z : out std_logic );
end component;

signal s1, s2, s3: std_logic;

Begin

U1: notV port map (S,s1);
U2: mux2 port map (B,s1,s2);
U3: mux2 port map (A,S,s3);
U4: or2_gate port map (s2,s3,Z);

End structural;