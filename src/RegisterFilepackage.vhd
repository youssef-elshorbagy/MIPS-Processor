--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package RegisterFilepackage is


component flopr is
    Port ( reset: in  STD_LOGIC;
	        clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component MUX is

Port ( register_temp1,register_temp2,register_temp3,register_temp4,register_temp5,register_temp6,register_temp7,register_temp8,register_temp9,register_temp10,register_temp11,register_temp12,register_temp13,register_temp14,register_temp15,register_temp16,register_temp17,register_temp18,register_temp19,register_temp20,register_temp21,register_temp22,register_temp23,register_temp24,register_temp25,register_temp26,register_temp27,register_temp28,register_temp29,register_temp30,register_temp31,register_temp32 : std_LOGIC_VECTOR (31 downto 0);
       data : out  STD_LOGIC_VECTOR (31 downto 0);
       read_sel : in  STD_LOGIC_VECTOR (4 downto 0));                                       
end component;

component decoder is

 Port ( D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31,D32 : out std_LOGIC;
        write_sel : in  STD_LOGIC_VECTOR (4 downto 0));

            
end component;

component enablingregisters is

Port ( temp :out std_LOGIC;
       D : in  STD_LOGIC;
       write_ena : in  STD_LOGIC);
end component;


end RegisterFilepackage;

