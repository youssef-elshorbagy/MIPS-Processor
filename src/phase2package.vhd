library IEEE;
use IEEE.STD_LOGIC_1164.all;

package phase2package is

component maindecoder is
    Port ( opcode : in  STD_LOGIC_VECTOR (5 downto 0);         
           MemtoReg : out  STD_LOGIC;
			  MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
			  ALUSrc : out  STD_LOGIC;
           RegDst : out  STD_LOGIC;
			  RegWrite : out  STD_LOGIC;
			  Jump : out  STD_LOGIC;
			  ALUOp : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

--

component aludecoder is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           alucontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end component;


end phase2package;

