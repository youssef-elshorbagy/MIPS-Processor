library IEEE;
use IEEE.STD_LOGIC_1164.all;


package mipsprocessor is

component datapath is
	 port( clk, reset: in STD_LOGIC;
		    readdata: in STD_LOGIC_VECTOR(31 downto 0);  
			 instr: in STD_LOGIC_VECTOR(31 downto 0);  
			 memtoreg, pcsrc, alusrc, regwrite, regdst, jump: in STD_LOGIC;  
			 aluoperation: in STD_LOGIC_VECTOR(3 downto 0);  
			 zero: out STD_LOGIC;
		    pc: inout STD_LOGIC_VECTOR(31 downto 0);
		    aluout, writedata: inout STD_LOGIC_VECTOR(31 downto 0));
end component;

--

component Controller is
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
end component;

--

component adder is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           s : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--

component sl2 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--

component signext is
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--

component flopr is
    Port ( reset: in  STD_LOGIC;
	        clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--

component mux2x1 is
Generic (n: integer := 8);

    Port ( s : in  STD_LOGIC;
           I0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           I1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           O : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;


--

component ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           zflag : out  STD_LOGIC);
end component;

--

component RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end component;



end mipsprocessor;

