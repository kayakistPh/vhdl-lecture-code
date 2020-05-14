library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity full_adder is

port (
	a : in std_logic;
	b : in std_logic;
	cin : in std_logic;
	s : out std_logic;
	cout: out std_logic
);

end;
architecture behavioural of full_adder is

begin
	S <= A XOR B XOR Cin ;
  Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
end architecture;

