library IEEE;
use IEEE.STD_LOGIC_1164.all;


package datapathpackage is

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
Generic (n: integer );

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


end datapathpackage;

