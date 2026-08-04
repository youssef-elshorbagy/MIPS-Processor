----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:50:27 04/24/2024 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX is

Port ( register_temp1,register_temp2,register_temp3,register_temp4,register_temp5,register_temp6,register_temp7,register_temp8,register_temp9,register_temp10,register_temp11,register_temp12,register_temp13,register_temp14,register_temp15,register_temp16,register_temp17,register_temp18,register_temp19,register_temp20,register_temp21,register_temp22,register_temp23,register_temp24,register_temp25,register_temp26,register_temp27,register_temp28,register_temp29,register_temp30,register_temp31,register_temp32 : std_LOGIC_VECTOR (31 downto 0);
       data : out  STD_LOGIC_VECTOR (31 downto 0);
       read_sel : in  STD_LOGIC_VECTOR (4 downto 0));                                       
end MUX;

architecture Behavioral of MUX is

begin

data <=  register_temp1 when read_sel="00000" else
         register_temp2 when read_sel="00001" else
         register_temp3 when read_sel="00010" else
         register_temp4 when read_sel="00011" else
         register_temp5 when read_sel="00100" else
         register_temp6 when read_sel="00101" else
         register_temp7 when read_sel="00110" else
         register_temp8 when read_sel="00111" else
         register_temp9	when read_sel="01000" else
			register_temp10 when read_sel="01001" else
         register_temp11 when read_sel="01010" else
         register_temp12 when read_sel="01011" else
         register_temp13 when read_sel="01100" else
         register_temp14 when read_sel="01101" else
         register_temp15 when read_sel="01110" else
         register_temp16 when read_sel="01111" else
         register_temp17 when read_sel="10000" else
         register_temp18 when read_sel="10001" else
         register_temp19 when read_sel="10010" else
         register_temp20 when read_sel="10011" else
         register_temp21 when read_sel="10100" else
         register_temp22 when read_sel="10101" else
         register_temp23 when read_sel="10110" else
         register_temp24 when read_sel="10111" else
         register_temp25 when read_sel="11000" else
         register_temp26 when read_sel="11001" else
         register_temp27 when read_sel="11010" else
         register_temp28 when read_sel="11011" else
         register_temp29 when read_sel="11100" else
         register_temp30 when read_sel="11101" else
         register_temp31 when read_sel="11110" else
         register_temp32; --when read_sel1="11111"


end Behavioral;

