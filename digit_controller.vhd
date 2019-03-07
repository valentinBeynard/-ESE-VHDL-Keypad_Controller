----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:24:12 02/24/2019 
-- Design Name: 
-- Module Name:    digit_controller - Behavioral 
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

entity digit_controller is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           display : out  STD_LOGIC_VECTOR (3 downto 0));
end digit_controller;

architecture Behavioral of digit_controller is


begin

if (rst = '1') then
	display_int <= "0000" ;
else
	display_int <= "1000";
end if; 

end Behavioral;

