----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:26:50 02/15/2019 
-- Design Name: 
-- Module Name:    debounce - Behavioral 
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

entity debounce is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sw : in STD_LOGIC;
			  sw_out : out STD_LOGIC;
           sw_debounce : out  STD_LOGIC);
end debounce;

architecture Behavioral of debounce is

    COMPONENT clk_divider
	 generic ( N : INTEGER range 0 to 50000000);
    PORT(
         clk_50M : IN  std_logic;
         clk_out : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT debounce_fsm
    PORT(
         sw : IN  std_logic;
         clk : IN  std_logic;
			clk_10ms : in STD_LOGIC;
         debounce_sw : OUT  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
	 
signal clk_10ms_int: std_logic:='0';



begin

	-- Instantiate the Unit Under Test (UUT)
   U0: clk_divider 
			GENERIC MAP(N => 25000)
			PORT MAP (
          clk_50M => clk,
			 clk_out => clk_10ms_int
        );
		  
	U1: debounce_fsm PORT MAP (
          sw => sw,
          clk => clk,
          debounce_sw => sw_debounce,
			 clk_10ms => clk_10ms_int,
          reset => reset
        );

	sw_out <= sw;

end Behavioral;

