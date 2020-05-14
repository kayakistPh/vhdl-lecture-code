library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity OrGate is

port (
	a : in std_ulogic;
	b : in std_ulogic;
	q : out std_ulogic
);

end;
architecture RTL of OrGate is

begin
	q <= a OR b;
end architecture;
