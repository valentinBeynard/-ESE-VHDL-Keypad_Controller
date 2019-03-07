----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:06:47 02/19/2019 
-- Design Name: 
-- Module Name:    keydetector - Behavioral 
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

entity keydetector is
    Port ( lines : in  STD_LOGIC_VECTOR (3 downto 0);
           hexa_id : out  STD_LOGIC_VECTOR (3 downto 0);
			  colums_counter : in  STD_LOGIC_VECTOR (1 downto 0);
			  key_is_pressed : out STD_LOGIC);
end keydetector;

architecture Behavioral of keydetector is

begin


process (lines, colums_counter) 
begin 

case colums_counter is
	
	when "00" => hexa_id(0) <= (lines(0) or lines(2) or lines(3)); 
					 hexa_id(1) <= (lines(2) or lines(3));
					 hexa_id(2) <= (lines(1) or lines(2) or lines(3));
					 hexa_id(3) <= lines(3);
					 
	when "01" => hexa_id(0) <= lines(1); 
					 hexa_id(1) <= lines(0);
					 hexa_id(2) <= lines(1);
					 hexa_id(3) <= lines(2);
					 
	when "10" => hexa_id(0) <= (lines(1) or lines(2)); 
					 hexa_id(1) <= (lines(0) or lines(1) or lines(3));
					 hexa_id(2) <= (lines(1) or lines(3));
					 hexa_id(3) <= (lines(2) or lines(3));
					 
	when "11" => hexa_id(0) <= (lines(1) or lines(3)); 
					 hexa_id(1) <= (lines(0) or lines(1));
					 hexa_id(2) <= (lines(2) or lines(3));
					 hexa_id(3) <= (lines(0) or lines(1) or lines(2) or lines(3));
					 
	when others => hexa_id <= "0000";

end case;

end process;

key_is_pressed <= lines(0) or lines(1) or lines(2) or lines(3);


end Behavioral;

