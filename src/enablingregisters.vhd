----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:23:42 04/24/2024 
-- Design Name: 
-- Module Name:    enablingregisters - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity enablingregisters is

Port ( temp :out std_LOGIC;
       D : in  STD_LOGIC;
       write_ena : in  STD_LOGIC);
end enablingregisters;

architecture Behavioral of enablingregisters is

begin

temp <= write_ena AND D ;


end Behavioral;