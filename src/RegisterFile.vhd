----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use work.RegisterFilepackage.ALL;


entity RegisterFile is
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end RegisterFile;

architecture Behavioral of RegisterFile is

signal D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31,D32: std_LOGIC;

               -- enabling registers
signal temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10,temp11,temp12,temp13,temp14,temp15,temp16,temp17,temp18,temp19,temp20,temp21,temp22,temp23,temp24,temp25,temp26,temp27,temp28,temp29,temp30,temp31,temp32 : std_LOGIC;

               -- registers outputs

signal register_temp1,register_temp2,register_temp3,register_temp4,register_temp5,register_temp6,register_temp7,register_temp8,register_temp9,register_temp10,register_temp11,register_temp12,register_temp13,register_temp14,register_temp15,register_temp16,register_temp17,register_temp18,register_temp19,register_temp20,register_temp21,register_temp22,register_temp23,register_temp24,register_temp25,register_temp26,register_temp27,register_temp28,register_temp29,register_temp30,register_temp31,register_temp32 : std_LOGIC_VECTOR (31 downto 0);					

signal decoder_out : std_LOGIC_VECTOR (31 downto 0);					


begin

                             -- decoder
d: decoder port map ( D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,D16,D17,D18,D19,D20,D21,D22,D23,D24,D25,D26,D27,D28,D29,D30,D31,D32,write_sel);


                            

		
                          -- enabling registers

e1: enablingregisters port map (temp1,D1,write_ena);
e2: enablingregisters port map (temp2,D2,write_ena);
e3: enablingregisters port map (temp3,D3,write_ena);
e4: enablingregisters port map (temp4,D4,write_ena);
e5: enablingregisters port map (temp5,D5,write_ena);
e6: enablingregisters port map (temp6,D6,write_ena);
e7: enablingregisters port map (temp7,D7,write_ena);
e8: enablingregisters port map (temp8,D8,write_ena);
e9: enablingregisters port map (temp9,D9,write_ena);
e10: enablingregisters port map (temp10,D10,write_ena);
e11: enablingregisters port map (temp11,D11,write_ena);
e12: enablingregisters port map (temp12,D12,write_ena);
e13: enablingregisters port map (temp13,D13,write_ena);
e14: enablingregisters port map (temp14,D14,write_ena);
e15: enablingregisters port map (temp15,D15,write_ena);
e16: enablingregisters port map (temp16,D16,write_ena);
e17: enablingregisters port map (temp17,D17,write_ena);
e18: enablingregisters port map (temp18,D18,write_ena);
e19: enablingregisters port map (temp19,D19,write_ena);
e20: enablingregisters port map (temp20,D20,write_ena);
e21: enablingregisters port map (temp21,D21,write_ena);
e22: enablingregisters port map (temp22,D22,write_ena);
e23: enablingregisters port map (temp23,D23,write_ena);
e24: enablingregisters port map (temp24,D24,write_ena);
e25: enablingregisters port map (temp25,D25,write_ena);
e26: enablingregisters port map (temp26,D26,write_ena);
e27: enablingregisters port map (temp27,D27,write_ena);
e28: enablingregisters port map (temp28,D28,write_ena);
e29: enablingregisters port map (temp29,D29,write_ena);
e30: enablingregisters port map (temp30,D30,write_ena);
e31: enablingregisters port map (temp31,D31,write_ena);
e32: enablingregisters port map (temp32,D32,write_ena);



			-- declaring registers                                              
r1: flopr port map ( reset,clk,temp1,write_data,register_temp1);
r2: flopr port map ( reset,clk,temp2,write_data,register_temp2);
r3: flopr port map ( reset,clk,temp3,write_data,register_temp3);
r4: flopr port map ( reset,clk,temp4,write_data,register_temp4);
r5: flopr port map ( reset,clk,temp5,write_data,register_temp5);
r6: flopr port map ( reset,clk,temp6,write_data,register_temp6);
r7: flopr port map ( reset,clk,temp7,write_data,register_temp7);	
r8: flopr port map ( reset,clk,temp8,write_data,register_temp8);
r9: flopr port map ( reset,clk,temp9,write_data,register_temp9);
r10: flopr port map ( reset,clk,temp10,write_data,register_temp10);
r11: flopr port map ( reset,clk,temp11,write_data,register_temp11);
r12: flopr port map ( reset,clk,temp12,write_data,register_temp12);
r13: flopr port map ( reset,clk,temp13,write_data,register_temp13);
r14: flopr port map ( reset,clk,temp14,write_data,register_temp14);
r15: flopr port map ( reset,clk,temp15,write_data,register_temp15);
r16: flopr port map ( reset,clk,temp16,write_data,register_temp16);
r17: flopr port map ( reset,clk,temp17,write_data,register_temp17);
r18: flopr port map ( reset,clk,temp18,write_data,register_temp18);
r19: flopr port map ( reset,clk,temp19,write_data,register_temp19);
r20: flopr port map ( reset,clk,temp20,write_data,register_temp20);
r21: flopr port map ( reset,clk,temp21,write_data,register_temp21);
r22: flopr port map ( reset,clk,temp22,write_data,register_temp22);								 
r23: flopr port map ( reset,clk,temp23,write_data,register_temp23);
r24: flopr port map ( reset,clk,temp24,write_data,register_temp24);								 
r25: flopr port map ( reset,clk,temp25,write_data,register_temp25);								 
r26: flopr port map ( reset,clk,temp26,write_data,register_temp26);								 
r27: flopr port map ( reset,clk,temp27,write_data,register_temp27);								 
r28: flopr port map ( reset,clk,temp28,write_data,register_temp28);								 
r29: flopr port map ( reset,clk,temp29,write_data,register_temp29);								 
r30: flopr port map ( reset,clk,temp30,write_data,register_temp30);								 
r31: flopr port map ( reset,clk,temp31,write_data,register_temp31);								 
r32: flopr port map ( reset,clk,temp32,write_data,register_temp32);								 



                               -- MUXs
m1: MUX port map (register_temp1,register_temp2,register_temp3,register_temp4,register_temp5,register_temp6,register_temp7,register_temp8,register_temp9,register_temp10,register_temp11,register_temp12,register_temp13,register_temp14,register_temp15,register_temp16,register_temp17,register_temp18,register_temp19,register_temp20,register_temp21,register_temp22,register_temp23,register_temp24,register_temp25,register_temp26,register_temp27,register_temp28,register_temp29,register_temp30,register_temp31,register_temp32,data1,read_sel1);
m2: MUX port map (register_temp1,register_temp2,register_temp3,register_temp4,register_temp5,register_temp6,register_temp7,register_temp8,register_temp9,register_temp10,register_temp11,register_temp12,register_temp13,register_temp14,register_temp15,register_temp16,register_temp17,register_temp18,register_temp19,register_temp20,register_temp21,register_temp22,register_temp23,register_temp24,register_temp25,register_temp26,register_temp27,register_temp28,register_temp29,register_temp30,register_temp31,register_temp32,data2,read_sel2);



end Behavioral;

 