library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is

port (
	a : in std_ulogic;
	b : in std_ulogic;
	q : out ustd_logic_vector(4 downto 0) --this is a bus 5 bits wide
);

end;
architecture behaviour of top is

begin
	q(0) <= a AND b; --Q0 is the AND function
	q(1) <= a NAND b; --Q1 as NAND
	q(2) <= a OR b;
	q(3) <= NOT a;
	q(4) <= '1'; --Q4 is forced to the value 1.

end architecture;
