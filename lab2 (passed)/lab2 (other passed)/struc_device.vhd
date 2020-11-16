Library IEEE;
Use IEEE.std_logic_1164.all;
Entity struc_device is
port (
	X,Y,Z,W : in std_logic;
	G : out std_logic );
End struc_device;
Architecture structural of struc_device is

component xor_gate
port (
	A,B : in std_logic;
	Z : out std_logic );
end component;

component mux3
port (
	A,B,C : in std_logic;
	Z : out std_logic );
end component;

component mux2
port (
	A,B : in std_logic;
	Z : out std_logic );
end component;

component notV
port (
	A : in std_logic;
	Z : out std_logic );
end component;

signal s1, s2, s3, s4: std_logic;

Begin

U1: mux3 port map (X,W,Y,s1);
U2: notV port map (s1,s2);
U3: mux2 port map (Y,Z,s3);
U4: notV port map (s3,s4);
U5: xor_gate port map (s2,s4,G);

End structural;