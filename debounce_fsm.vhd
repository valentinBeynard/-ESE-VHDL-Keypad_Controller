----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:32:59 02/08/2019 
-- Design Name: 
-- Module Name:    debounce_fsm - Behavioral 
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

entity debounce_fsm is
    Port ( sw : in  STD_LOGIC;
			  clk_10ms : in STD_LOGIC;
           clk : in  STD_LOGIC;
           debounce_sw : out  STD_LOGIC;
			  reset : in STD_LOGIC);
end debounce_fsm;


architecture Behavioral of debounce_fsm is

type state_machine is (zero, wait_state_0, wait_state_1, one);
signal current_state, next_state : state_machine;

signal m_tick_0 : INTEGER range 0 to 20 := 0;
signal m_tick_1 : INTEGER range 0 to 20 := 0;

begin

-- Procees générant un tick tous les 10ms si ETAT = WAIT
process (clk_10ms, reset, m_tick_0, m_tick_1) 
begin 

	if (reset = '1') then 
			m_tick_0 <= 0;
			m_tick_1 <= 0;
	elsif (current_state = wait_state_0) then
		if (rising_edge(clk_10ms)) then
			m_tick_0 <= m_tick_0 + 1;
		end if;
	elsif (current_state = wait_state_1) then
		if (rising_edge(clk_10ms)) then
			m_tick_1 <= m_tick_1 + 1;
		end if;
	else
		m_tick_0 <= 0;
		m_tick_1 <= 0;
	end if;

--	if (reset = '1') then 
--			m_tick_0 <= 0;
--			m_tick_1 <= 0;
--	elsif (rising_edge(clk_10ms)) then
--		if (current_state = wait_state_0) then
--			m_tick_0 <= m_tick_0 + 1;
--		elsif(current_state = wait_state_1) then
--			m_tick_1 <= m_tick_1 + 1;
--		else
--			m_tick_0 <= 0;
--			m_tick_1 <= 0;
--		end if;
--	end if;
	
end process;

-- State Register
process (clk, reset) 
begin 
	if (reset = '1') then 
		current_state <= zero;
	elsif(rising_edge(clk)) then
		current_state <= next_state; 		
	end if; 
end process;

process (sw, current_state, m_tick_0, m_tick_1)
begin
	case current_state is
	
	when  zero => 
		if (sw = '0') then 
			next_state <= zero;
		else 
			next_state <= wait_state_1;
		end if;
		debounce_sw <= '0';

	when  wait_state_0 => if (sw = '0') then
		if(m_tick_0 = 20) then
			next_state <= zero;
		else
			next_state <= wait_state_0;
		end if;
	else
	next_state <= one;
	end if;

	when  wait_state_1 => 
		if (sw = '1') then
			if(m_tick_1 = 20) then
				next_state <= one;
			else
				next_state <= wait_state_1;
			end if;
		else
			next_state <= zero;
		end if;

		
	when  one => 
		if (sw = '1') then 
			next_state <= one;
		else 
			next_state <= wait_state_0;
		end if;
		debounce_sw <= '1';		
		
	when others => next_state<= zero;

end case;
end process;

end Behavioral;

