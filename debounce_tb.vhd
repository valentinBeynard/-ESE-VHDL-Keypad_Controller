--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:47:54 02/15/2019
-- Design Name:   
-- Module Name:   C:/Users/valentin.beynard/Documents/ESE_VHDL/Keyboard_controller/debounce_tb.vhd
-- Project Name:  Keyboard_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: debounce
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
 
ENTITY debounce_tb IS
END debounce_tb;
 
ARCHITECTURE behavior OF debounce_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT debounce
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         sw : IN  std_logic;
         sw_out : OUT  std_logic;
         sw_debounce : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal sw : std_logic := '0';

 	--Outputs
   signal sw_out : std_logic;
   signal sw_debounce : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: debounce PORT MAP (
          clk => clk,
          reset => reset,
          sw => sw,
          sw_out => sw_out,
          sw_debounce => sw_debounce
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		reset <= '0';
		sw <= '0', '1' after 1 ms, '0' after 2 ms, '1' after 3 ms, '0' after 5 ms, '1' after 8 ms, '0' after 9 ms, '1' after 10 ms, '0' after 59 ms;

      -- insert stimulus here 

      wait;
   end process;

END;
