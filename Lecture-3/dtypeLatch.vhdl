Library IEEE;
USE IEEE.Std_logic_1164.all;
entity RisingEdge_DFlipFlop is 
   port(
      Q : out std_logic;    
      Clk :in std_logic;   
      D :in  std_logic    
   );
end RisingEdge_DFlipFlop;

architecture RTL of RisingEdge_DFlipFlop is  
begin  
 d_type: process(Clk)
 begin 
    if(rising_edge(Clk)) then
    Q <= D; 
    end if;       
 end process;  
end RTL; 
