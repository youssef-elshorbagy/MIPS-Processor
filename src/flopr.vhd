----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flopr is
    Port ( reset: in  STD_LOGIC;
	        clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end flopr;

architecture Behavioral of flopr is

signal temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10,temp11,temp12,temp13,temp14,temp15,temp16,temp17,temp18,temp19,temp20,temp21,temp22,temp23,temp24,temp25,temp26,temp27,temp28,temp29,temp30,temp31,temp32 : std_LOGIC_VECTOR (31 downto 0);

begin

process(clk, enable,reset) 

begin

if reset='1' then q <= (others => '0');

elsif ( clk'EVENT and clk='0' and enable='1') then

q <= d;

end if;

end process;

														 
end Behavioral;														  
														  
														  
														  
														  
														  
														  