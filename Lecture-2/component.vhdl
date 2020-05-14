library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is

port (
	a : in std_logic;
	b : in std_logic;
	qOR : out std_logic;
	qAND : out std_logic
);

end;
architecture RTL of top is
component OrGate
port (
	a : in std_logic;
	b : in std_logic;
	q : out std_logic
);
end component OrGate;	
begin
qAND <= a AND b;

NotCalledOrGate : OrGate
port map (
	a => a,
	b => b,
	q => qOR
);
end architecture;
