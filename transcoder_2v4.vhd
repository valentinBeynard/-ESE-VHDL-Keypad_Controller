----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:13:58 02/27/2018 
-- Design Name: 
-- Module Name:    transcoder_2v4 - Behavioral 
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

entity transcoder_2v4 is
    Port ( count : in  STD_LOGIC_VECTOR (1 downto 0);
           C : out  STD_LOGIC_VECTOR (3 downto 0));
end transcoder_2v4;

architecture Behavioral of transcoder_2v4 is

begin
	with count select
		C <= "1000" when "00",
			  "0100" when "01",
			  "0010" when "10",
			  "0001" when others;
			


end Behavioral;

