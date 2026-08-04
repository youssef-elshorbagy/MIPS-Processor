library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.phase2package.ALL;


entity Controller is
    Port ( opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           zeroflag : in  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           pcsrc : out  STD_LOGIC;
           alusrc : out  STD_LOGIC;
           RegDst : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           Jump : out  STD_LOGIC;
           ALUcontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end Controller;

architecture Behavioral of Controller is

signal ALUOp : STD_LOGIC_VECTOR (1 downto 0);
signal Branch: STD_LOGIC;

begin

m: maindecoder port map ( opcode, MemtoReg, MemWrite, Branch, alusrc, RegDst, RegWrite, Jump, ALUOp );   
a: aludecoder port map ( funct, ALUOp, ALUcontrol );

pcsrc <= Branch AND zeroflag; 


end Behavioral;

