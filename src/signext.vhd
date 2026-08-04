
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity signext is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : out  STD_LOGIC_VECTOR (31 downto 0));
end signext;

architecture Behavioral of signext is

begin

b <= X"ffff" & a 	WHEN a(15) = '1' ELSE
	  X"0000" & a;


end Behavioral;

