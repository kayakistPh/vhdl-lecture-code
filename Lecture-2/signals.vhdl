library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is

port (
	a : in std_logic;
	b : in std_logic;
	cin : in std_logic;
	s : out std_logic;
	cout: out std_logic
);

end;
architecture behavioural of top is
signal axb : std_logic;
signal axbac : std_logic;
signal aab : std_logic;		
begin
	axb <= a XOR b;
	s <= axb XOR cin;
	axbac <= axb AND cin;
	aab <= a AND b;
	cout <= aab OR axbac;

end architecture;
-- S <= A XOR B XOR Cin ;
--Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
