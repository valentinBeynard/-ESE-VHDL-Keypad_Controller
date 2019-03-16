----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:20 02/08/2019 
-- Design Name: 
-- Module Name:    clk_divider - Behavioral 
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

entity clk_divider is
	 generic ( N : INTEGER range 0 to 50000000 := 25000 );
    Port ( clk_50M : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end clk_divider;

architecture Behavioral of clk_divider is

constant DIV_VAL : INTEGER := N;--25000;
signal vcount : INTEGER range 0 to DIV_VAL;
signal clk_out_int : STD_LOGIC := '0';

begin

process (clk_50M, clk_out_int)
	begin
	if rising_edge(clk_50M) then
		if(vcount < DIV_VAL) then
			vcount <= vcount + 1;
		else
			clk_out_int <= NOT clk_out_int;
			vcount <= 0;
		end if;
	end if;
		
end process;

clk_out <= clk_out_int;

end Behavioral;

