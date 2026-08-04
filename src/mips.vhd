----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mipsprocessor.ALL;


entity mips is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pc : inout  STD_LOGIC_VECTOR (31 downto 0);
           instr : in  STD_LOGIC_VECTOR (31 downto 0);
           memwrite : out  STD_LOGIC;
           aluout : inout  STD_LOGIC_VECTOR (31 downto 0);
           writedata : inout  STD_LOGIC_VECTOR (31 downto 0);
           readdata : in  STD_LOGIC_VECTOR (31 downto 0));
end mips;

architecture Behavioral of mips is

signal memtoreg, alusrc, regdst, regwrite, jump, pcsrc : STD_LOGIC;
signal zero : STD_LOGIC;
signal alucontrol : STD_LOGIC_VECTOR (3 downto 0);

begin

control: Controller port map ( instr(31 downto 26), instr(5 downto 0), zero, memtoreg, memwrite, pcsrc, alusrc, regdst, regwrite, jump, alucontrol );

dp: datapath port map ( clk, reset, readdata, instr, memtoreg, pcsrc, alusrc, regwrite, regdst, jump, alucontrol, zero, pc, aluout, writedata );

end Behavioral;

