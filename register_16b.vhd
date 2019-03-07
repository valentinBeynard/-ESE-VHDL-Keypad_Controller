----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:02:55 03/06/2019 
-- Design Name: 
-- Module Name:    register_16b - Behavioral 
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

entity register_16b is
    Port ( D : in  STD_LOGIC_VECTOR (15 downto 0);
           C : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (15 downto 0));
end register_16b;

architecture Behavioral of register_16b is

begin

process(C)
	begin 
		if (rising_edge(C)) then 
			Q<=D;
		end if; 
		
end process;

end Behavioral;

