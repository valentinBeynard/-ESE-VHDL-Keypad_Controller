----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:59 03/07/2019 
-- Design Name: 
-- Module Name:    display_controller - Behavioral 
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

entity display_controller is
    Port ( clk : in  STD_LOGIC;
           AN : out  STD_LOGIC_VECTOR (3 downto 0);
           digit_select : out  STD_LOGIC_VECTOR (1 downto 0));
end display_controller;

architecture Behavioral of display_controller is

    COMPONENT clk_divider
	 generic ( N : INTEGER range 0 to 50000000);
    PORT(
         clk_50M : IN  std_logic;
         clk_out : OUT  std_logic
        );
    END COMPONENT;
	 
signal clk_250Hz : STD_LOGIC;
signal counter : unsigned (1 downto 0) :="00";

begin

	u_clk_divider: clk_divider
		GENERIC MAP(N => 200000)
		PORT MAP ( 
		 clk_50M => clk,
		 clk_out => clk_250Hz
	  );

process (clk_250Hz) 
begin 

	if(rising_edge(clk_250Hz)) then
		counter <= counter + 1; 		
	end if;

end process;

digit_select <= STD_LOGIC_VECTOR(counter);

with counter select
	AN <= "1000" when "00",
		  "0100" when "01",
		  "0010" when "10",
		  "0001" when others;

end Behavioral;

