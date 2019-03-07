--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:02:35 02/08/2019
-- Design Name:   
-- Module Name:   C:/Users/valentin.beynard/Documents/ESE_VHDL/Keyboard_controller/clk_divider_display_tb.vhd
-- Project Name:  Keyboard_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clk_divider_display
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
 
ENTITY clk_divider_display_tb IS
END clk_divider_display_tb;
 
ARCHITECTURE behavior OF clk_divider_display_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk_divider_display
    PORT(
         clk_50M : IN  std_logic;
         clk_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_50M : std_logic := '0';
	signal clk_out : std_logic := '0';

   -- Clock period definitions
   constant clk_50M_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clk_divider_display PORT MAP (
          clk_50M => clk_50M,
			 clk_out => clk_out
        );

   -- Clock process definitions
   clk_50M_process :process
   begin
		clk_50M <= '0';
		wait for clk_50M_period/2;
		clk_50M <= '1';
		wait for clk_50M_period/2;
   end process;
 
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.

      --wait for clk_50M_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
