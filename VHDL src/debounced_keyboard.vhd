----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:22:20 03/06/2019 
-- Design Name: 
-- Module Name:    debounced_keyboard - Behavioral 
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

entity debounced_keyboard is
    Port ( raw_lines : in  STD_LOGIC_VECTOR (3 downto 0);
           lines : out  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC);
end debounced_keyboard;

architecture Behavioral of debounced_keyboard is

    COMPONENT debounce
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         sw : IN  std_logic;
         sw_out : OUT  std_logic;
         sw_debounce : OUT  std_logic
        );
    END COMPONENT;
	 
signal internal_debounce_sw : std_logic_VECTOR (3 downto 0);
signal internal_raw_lines_out : std_logic_VECTOR (3 downto 0);

begin

	GEN_DEBOUCE_UNITY:
	for i in 0 to 3 generate
		UX: debounce PORT MAP (
          clk => clk,
          reset => '0',
          sw => raw_lines(i),
          sw_out => internal_raw_lines_out(i),
          sw_debounce => internal_debounce_sw(i)
        );
	end generate GEN_DEBOUCE_UNITY;
	
--   U1: debounce PORT MAP (
--          clk => clk,
--          rst => '0',
--          sw => raw_lines,
--          sw_out => internal_raw_lines_out,
--          sw_debounce => internal_internal_debounce_sw
--        );
--		  
	lines <= internal_debounce_sw;
	
	
end Behavioral;

