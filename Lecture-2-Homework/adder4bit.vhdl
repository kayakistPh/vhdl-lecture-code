library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top is
port (
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        add_sub : in std_logic; -- add when 0 subtract when 1
        s : out std_logic_vector(3 downto 0);
        cout: out std_logic
     );
end;

architecture behavioural of top is
  component full_adder
    port (  a : in std_logic;
            b : in std_logic;
            cin : in std_logic;
            s : out std_logic;
            cout: out std_logic
          );
   end component full_adder;
   
   signal a_mux_int : std_logic_vector(3 downto 0) := "0000";
   signal cout_int  : std_logic_vector(2 downto 0) := "000";
   
   begin
   
   --Import the 4 adders
   --The Cin of the first is connected to the add_sub in this makes it do 2'complement
   --The Cout of the last goes to the output
   adder0 : full_adder
   port map (
              a => a_mux_int(0),
              b => b(0),
              cin => add_sub,
              s => s(0),
              cout => cout_int(0)
             );
   adder1 : full_adder
   port map (
              a => a_mux_int(1),
              b => b(1),
              cin => count_int(0),
              s => s(1),
              cout => cout_int(1)
             );
   adder2 : full_adder
   port map (
              a => a_mux_int(2),
              b => b(2),
              cin => count_int(1),
              s => s(2),
              cout => cout_int(2)
             );
   adder3 : full_adder
   port map (
              a => a_mux_int(3),
              b => b(3),
              cin => count_int(2),
              s => s(3),
              cout => cout
             );  
  --Now the muxes this could be done in many lines or one
  a_mux_int <= NOT a when (add_sub = '1') else a;
end architecture;             
