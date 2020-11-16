Library IEEE;
Use IEEE.std_logic_1164.all;
Entity mux is
port (
	A,B,S : in std_logic;
	Z : out std_logic
);
End mux;
Architecture structural of mux is

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

U1: notV port map (B,s1);
U2: mux2 port map (A,s1,s2);
U3: mux2 port map (B,S,s3);
U4: or2_gate port map (s2,s3,Z);

End structural;