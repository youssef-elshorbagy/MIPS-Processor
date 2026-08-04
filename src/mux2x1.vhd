
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux2x1 is
Generic (n: integer );

    Port ( s : in  STD_LOGIC;
           I0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           O : out  STD_LOGIC_VECTOR (n-1 downto 0));
end mux2x1;

architecture Behavioral of mux2x1 is

begin

O <=	I1 WHEN S = '1' ELSE 
      I0;

end Behavioral;

