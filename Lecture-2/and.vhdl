library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is

port (
	a : in std_ulogic;
	b : in std_ulogic;
	q : out std_ulogic
);

end;
architecture behaviour of top is

begin
	q <= a AND b;

end architecture;
