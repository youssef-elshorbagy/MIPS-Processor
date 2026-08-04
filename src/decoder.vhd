
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder is

 Port ( D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31,D32 : out std_LOGIC;
        write_sel : in  STD_LOGIC_VECTOR (4 downto 0));

            
end decoder;

architecture Behavioral of decoder is

begin

D1  <= '1' when write_sel = ("00000") else '0';
D2  <= '1' when write_sel = ("00001") else '0';
D3  <= '1' when write_sel = ("00010") else '0';
D4  <= '1' when write_sel = ("00011") else '0';
D5  <= '1' when write_sel = ("00100") else '0';
D6  <= '1' when write_sel = ("00101") else '0';
D7  <= '1' when write_sel = ("00110") else '0';
D8  <= '1' when write_sel = ("00111") else '0';
D9  <= '1' when write_sel = ("01000") else '0';
D10 <= '1' when write_sel = ("01001") else '0';
D11 <= '1' when write_sel = ("01010") else '0';
D12 <= '1' when write_sel = ("01011") else '0';
D13 <= '1' when write_sel = ("01100") else '0';
D14 <= '1' when write_sel = ("01101") else '0';
D15 <= '1' when write_sel = ("01110") else '0';
D16 <= '1' when write_sel = ("01111") else '0';
D17 <= '1' when write_sel = ("10000") else '0';
D18 <= '1' when write_sel = ("10001") else '0';
D19 <= '1' when write_sel = ("10010") else '0';
D20 <= '1' when write_sel = ("10011") else '0';
D21 <= '1' when write_sel = ("10100") else '0';
D22 <= '1' when write_sel = ("10101") else '0';
D23 <= '1' when write_sel = ("10110") else '0';
D24 <= '1' when write_sel = ("10111") else '0';
D25 <= '1' when write_sel = ("11000") else '0';
D26 <= '1' when write_sel = ("11001") else '0';
D27 <= '1' when write_sel = ("11010") else '0';
D28 <= '1' when write_sel = ("11011") else '0';
D29 <= '1' when write_sel = ("11100") else '0';
D30 <= '1' when write_sel = ("11101") else '0';
D31 <= '1' when write_sel = ("11110") else '0';
D32 <= '1' when write_sel = ("11111") else '0';
end Behavioral;

