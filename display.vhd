----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:42:03 02/25/2019 
-- Design Name: 
-- Module Name:    display - Behavioral 
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

entity display is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk_out : out  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0);
			  digit_out : out  STD_LOGIC_VECTOR (3 downto 0));
end display;

architecture Behavioral of display is

constant DIV_VAL : INTEGER := 200000;
signal vcount : INTEGER range 0 to DIV_VAL;
signal clk_out_int : STD_LOGIC := '0';

begin


--Rafraichissement des digits

process (clk, clk_out_int)
	begin
	if rising_edge(clk) then
		if(vcount < DIV_VAL) then
			vcount <= vcount + 1;
		else
			clk_out_int <= NOT clk_out_int;
			vcount <= 0;
		end if;
	end if;
		
end process;

--transcoder 7 segments

process(A)
begin

WITH A SELECT O <=   "10000001" WHEN "0000", --0
							"11001111" WHEN "0001", --1
							"10010010" WHEN "0010", --2
							"10000110" WHEN "0011", --3
							"11001100" WHEN "0100", --4
							"10100100" WHEN "0101", --5
							"10100000" WHEN "0110", --6
							"10001111" WHEN "0111", --7
							"10000000" WHEN "1000", --8
							"10000100" WHEN "1001", --9
							"10001000" WHEN "1010", --A
							"11100000" WHEN "1011", --b
							"10110001" WHEN "1100", --C
							"11000010" WHEN "1101", --d
							"10110000" WHEN "1110", --E
							"10111000" WHEN "1111", --F
							"11111111" WHEN OTHERS;
end process;

process(clk_out)
	begin
		if (rising_edge(clk_out)) then
			digit_out <= digit_out + 1;
		end if;
end process;


clk_out <= clk_out_int;

end Behavioral;

