
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           zflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

signal s: std_LOGIC_vector (31 downto 0);

signal data_inclusive1: std_LOGIC_vector (31 downto 0);
signal data_inclusive2: std_LOGIC_vector (31 downto 0);

signal dataout_temp: std_LOGIC_vector (31 downto 0);

begin

data_inclusive1 <= data1 when aluop(3) ='0' else
not (data1);


data_inclusive2 <= data2 when aluop(2) ='0' else
not (data2);


s <= data_inclusive1 + data_inclusive2 + aluop(3) + aluop(2);


dataout_temp <= data_inclusive1 and data_inclusive2 when aluop(1 downto 0) ="00" else
           data_inclusive1 or data_inclusive2 when aluop( 1 downto 0) ="01" else
           s when aluop( 1 downto 0) ="10" else 
			  ("0000000000000000000000000000000" & s(31)) when aluop(1 downto 0) ="11" else
			  ("00000000000000000000000000000000");
			  
			  
zflag <= '1' when dataout_temp = ("00000000000000000000000000000000") else
         '0';			  
			  
dataout <= dataout_temp;			  

end Behavioral;

