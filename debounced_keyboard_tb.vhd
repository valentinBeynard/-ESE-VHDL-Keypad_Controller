--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:35:45 03/06/2019
-- Design Name:   
-- Module Name:   C:/Users/valentin.beynard/Documents/Keyboard_controller/debounced_keyboard_tb.vhd
-- Project Name:  Keyboard_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: debounced_keyboard
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY debounced_keyboard_tb IS
END debounced_keyboard_tb;
 
ARCHITECTURE behavior OF debounced_keyboard_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT debounced_keyboard
    PORT(
         raw_lines : IN  std_logic_vector(3 downto 0);
         lines : OUT  std_logic_vector(3 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal raw_lines : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal lines : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: debounced_keyboard PORT MAP (
          raw_lines => raw_lines,
          lines => lines,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold rst state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		
		-- insert stimulus here 
		raw_lines <= "0000", "0001" after 1 ms, "0000" after 2 ms, "0001" after 3 ms, "0000" after 5 ms, "0001" after 8 ms, "0000" after 9 ms, "0001" after 10 ms, "0000" after 59 ms;



      wait;
   end process;

END;
