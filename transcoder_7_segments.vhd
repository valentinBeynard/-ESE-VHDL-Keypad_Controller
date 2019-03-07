----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:50:06 03/06/2019 
-- Design Name: 
-- Module Name:    transcoder_7_segments - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity transcoder_7_segments is
		Port ( hex_code : in  STD_LOGIC_VECTOR (3 downto 0);
				 segments_data : out  STD_LOGIC_VECTOR (6 downto 0);
				 key_detected : in STD_LOGIC;
				 digit_selec : in STD_LOGIC_VECTOR (1 downto 0));
end transcoder_7_segments;

architecture Behavioral of transcoder_7_segments is

signal first_digit : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal second_digit : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal third_digit : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal fourth_digit : STD_LOGIC_VECTOR (3 downto 0) := "0000";

signal current_digit_code : STD_LOGIC_VECTOR (3 downto 0);
signal counter : unsigned (1 downto 0) :="00";

begin

process (key_detected, counter)
	begin
	if rising_edge(key_detected) then
			counter <= counter + 1;
			case counter is
	
				when "00" => first_digit <= hex_code; 
						
				when "01" => second_digit <= hex_code; 
					
				when "10" => third_digit <= hex_code; 
					
				when "11" => fourth_digit <= hex_code; 			 
							 
				when others => first_digit <= "0000";

			end case;
	end if;
		
end process;

process (digit_selec)
	begin

	case digit_selec is
	
		when "00" => current_digit_code <= first_digit; 
			
		when "01" => current_digit_code <= second_digit; 
		
		when "10" => current_digit_code <= third_digit; 
		
		when "11" => current_digit_code <= fourth_digit; 
		
		when others => current_digit_code <= "0000";
	
	end case;
	
end process;

segments_data <= 	"1000000" when current_digit_code = "0000" else
		"1111001" when current_digit_code = "0001" else
		"0100100" when current_digit_code = "0010" else
		"0110000" when current_digit_code = "0011" else
		"0011001" when current_digit_code = "0100" else
		"0010010" when current_digit_code = "0101" else
		"0000010" when current_digit_code = "0110" else
		"1111000" when current_digit_code = "0111" else
		"0000000" when current_digit_code = "1000" else
		"0010000" when current_digit_code = "1001" else
		"0001000" when current_digit_code = "1010" else
		"0000011" when current_digit_code = "1011" else
		"1000110" when current_digit_code = "1100" else
		"0100001" when current_digit_code = "1101" else
		"0000110" when current_digit_code = "1110" else
		"0001110" when current_digit_code = "1111";
		

		
end Behavioral;

