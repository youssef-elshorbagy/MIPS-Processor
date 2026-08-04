----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.mainpackage.ALL;

entity main is
    Port ( clk: in STD_LOGIC;
			  reset: in STD_LOGIC;
			  Writedata,dataadr: out STD_LOGIC_VECTOR(31 downto 0);
			  memwrite: out STD_LOGIC);
end main;

architecture Behavioral of main is

signal memwrites : STD_LOGIC;
signal pc, pcout, instr, readdata, dataadrs, writedatas : STD_LOGIC_VECTOR (31 downto 0);


begin

pcout <= "00" & pc(31 downto 2);

im1: imem port map( pcout(5 downto 0), instr );

mips1: mips port map ( clk, reset, pc, instr, memwrites, dataadrs, writedatas, readdata );

dm1: dmem port map ( clk, memwrites, dataadrs, writedatas, readdata);

Writedata <= writedatas;
dataadr <= dataadrs;
memwrite <= memwrites;

end Behavioral;

