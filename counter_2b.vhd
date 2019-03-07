----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:54:17 02/27/2018 
-- Design Name: 
-- Module Name:    counter_2b - Behavioral 
-- Project Name: 
-- Target Devirsts: 
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

entity counter_2b is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  block_counter : in STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (1 downto 0));
end counter_2b;

architecture Behavioral of counter_2b is

    COMPONENT clk_divider
	 generic ( N : INTEGER range 0 to 50000000);
    PORT(
         clk_50M : IN  std_logic;
         clk_out : OUT  std_logic
        );
    END COMPONENT;

signal count_int : unsigned (1 downto 0) :="00";
signal clk_25ms : STD_LOGIC := '0';

begin

   U0: clk_divider 
			GENERIC MAP(N => 1250000)
			PORT MAP (
          clk_50M => clk,
			 clk_out => clk_25ms
        );

	

process (clk_25ms, rst, count_int)

	begin 
		if rising_edge(clk_25ms) then 
			if rst='0' then
				if block_counter = '0' then
					count_int <= count_int +1;
				else
					count_int <= count_int;
				end if;
			else
				count_int <= "00";
			end if; 
		end if;
end process;

count  <= STD_LOGIC_VECTOR(count_int)  ;

end Behavioral;

