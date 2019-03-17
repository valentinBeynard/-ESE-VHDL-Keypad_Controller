----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:25:42 03/16/2019 
-- Design Name: 
-- Module Name:    sequence_detector - Behavioral 
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

entity sequence_detector is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           valid_out : out  STD_LOGIC_VECTOR (5 downto 0));
end sequence_detector;

architecture Behavioral of sequence_detector is

type state_machine is (idle, code_init, code1, code2, code3, code_end, succeed, failed);
signal current_state, next_state : state_machine;
signal data : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal tempo : INTEGER range 0 to 20 := 0;

begin

-- State Register
process (reset, data_in) 
begin 
	data <= data_in;
	if (reset = '1') then 
		current_state <= idle;
	else 
		current_state <= next_state; 		
	end if; 
end process;



process (data_in, current_state)
begin

	case current_state is
	
	when  idle => 
		if (data_in = "1100") then 
			next_state <= code_init;
		else 
			next_state <= idle;
		end if;
		valid_out <= "000000";
		tempo <= 0;

	when  code_init => 
		if (data_in = "0000") then
			next_state <= code1;
		else
			next_state <= idle;
		end if;
		valid_out <= "000001";
		data <= "1111";

	when  code1 => 
		if (data_in = "0001") then
			next_state <= code2;
		else
			next_state <= idle;
		end if;
		valid_out <= "000011";
		
	when  code2 => 
		if (data_in = "0010") then
			next_state <= code3;
		else
			next_state <= idle;
		end if;
		valid_out <= "000111";		
		
	when  code3 => 
		if (data_in = "0100") then
			next_state <= code_end;
		else
			next_state <= idle;
		end if;
		valid_out <= "001111";
		
	when  code_end => 
		if (data_in = "1110") then
			next_state <= succeed;
		else
			next_state <= succeed;
		end if;
		valid_out <= "011111";
		
	when  succeed => 
		if (tempo < 15) then
			next_state <= current_state;
			tempo <= tempo + 1;
		else
			next_state <= idle;
		end if;
		valid_out <= "111111";
		
	when  failed => 
		if (tempo < 5) then
			next_state <= failed;
			valid_out <= "111111";
			tempo <= tempo + 1;

		elsif (tempo < 10) then
			next_state <= failed;
			valid_out <= "000000";
			tempo <= tempo + 1;
			
		elsif (tempo < 16) then
			next_state <= failed;
			valid_out <= "111111";
			tempo <= tempo + 1;
		
		else
			next_state <= idle;			
		end if;
	
		
	when others => 
		next_state <= idle;

end case;
end process;

end Behavioral;


