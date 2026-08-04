library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity maindecoder is
    Port ( opcode : in  STD_LOGIC_VECTOR (5 downto 0);         
           MemtoReg : out  STD_LOGIC;
			  MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
			  ALUSrc : out  STD_LOGIC;
           RegDst : out  STD_LOGIC;
			  RegWrite : out  STD_LOGIC;
			  Jump : out  STD_LOGIC;
			  ALUOp : out  STD_LOGIC_VECTOR (1 downto 0));
end maindecoder;

architecture Behavioral of maindecoder is

signal controls : STD_LOGIC_VECTOR ( 8 downto 0 );

begin

process ( opcode )
begin
case opcode is
                when "000000" => controls <= "110000010";    ---- R-type instr
					 when "100011" => controls <= "101001000";    ---- lw
					 when "101011" => controls <= "001010000";    ---- sw
					 when "000100" => controls <= "000100001";    ---- beq
					 when "001000" => controls <= "101000000";    ---- addi
					 when "000010" => controls <= "000000100";    ---- j
					 when others => controls <= "---------";
					 
end case;
end process;

(RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg, Jump, ALUOp(1), ALUOp(0)) <= controls;					 
					 
end Behavioral;

