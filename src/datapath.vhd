----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.datapathpackage.ALL;

entity datapath is
	 port( clk, reset: in STD_LOGIC;
		    readdata: in STD_LOGIC_VECTOR(31 downto 0);  
			 instr: in STD_LOGIC_VECTOR(31 downto 0);  
			 memtoreg, pcsrc, alusrc, regwrite, regdst, jump: in STD_LOGIC;  
			 aluoperation: in STD_LOGIC_VECTOR(3 downto 0);  
			 zero: out STD_LOGIC;
		    pc: inout STD_LOGIC_VECTOR(31 downto 0);
		    aluout, writedata: inout STD_LOGIC_VECTOR(31 downto 0));
end datapath;

architecture Behavioral of datapath is

---------- next pc
signal pcjump, pcnext, pcnextbr, pcplus4,  pcbranch: STD_LOGIC_VECTOR(31 downto 0);
signal signimm, signimmsh: STD_LOGIC_VECTOR(31 downto 0);
signal srca, srcb, result: STD_LOGIC_VECTOR(31 downto 0);

---------- registerfile
signal writereg: STD_LOGIC_VECTOR(4 downto 0);
signal data1: STD_LOGIC_VECTOR(31 downto 0);
signal data2: STD_LOGIC_VECTOR(31 downto 0);
signal data2out: STD_LOGIC_VECTOR(31 downto 0);
signal writedatainregisterfile: STD_LOGIC_VECTOR(31 downto 0);

begin

---------- next pc
pcjump <= pcplus4(31 downto 28) & instr(25 downto 0) & "00"; 
pcreg: flopr port map( reset, clk, '1', pcnext, pc); 
pcadd1: adder port map(pc, X"00000004", pcplus4);
immsh: sl2 port map(signimm, signimmsh);
pcadd2: adder port map(pcplus4, signimmsh, pcbranch);  
pcbrmux: mux2x1 generic map(32) port map(pcsrc, pcplus4, pcbranch, pcnextbr);
pcmux: mux2x1 generic map(32) port map(jump, pcnextbr, pcjump, pcnext);


---------- register file
reading: mux2x1 generic map(32) port map( memtoreg, aluout, readdata, writedatainregisterfile ); 
writeregister: mux2x1 generic map(5) port map( regdst, instr(20 downto 16), instr(15 downto 11), writereg );
regfile: RegisterFile port map( instr(25 downto 21), instr(20 downto 16), writereg, regwrite, clk, reset, writedatainregisterfile, data1, data2 );
extending: signext port map( instr(15 downto 0),signimm );
data2select: mux2x1 generic map(32) port map( alusrc, data2, signimm, data2out );

---------- ALU
alu1: ALU port map( data1, data2out, aluoperation, aluout, zero );
writedata <= data2;

end Behavioral;

