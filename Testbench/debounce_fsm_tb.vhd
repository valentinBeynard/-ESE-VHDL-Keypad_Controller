--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:34 02/08/2019
-- Design Name:   
-- Module Name:   C:/Users/valentin.beynard/Documents/ESE_VHDL/Keyboard_controller/debounce_fsm_tb.vhd
-- Project Name:  Keyboard_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: debounce_fsm
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
 
ENTITY debounce_fsm_tb IS
END debounce_fsm_tb;
 
ARCHITECTURE behavior OF debounce_fsm_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT debounce_fsm
    PORT(
         sw : IN  std_logic;
         clk : IN  std_logic;
			clk_10ms : in STD_LOGIC;
         debounce_sw : OUT  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sw : std_logic := '0';
   signal clk : std_logic := '0';
	signal clk_10ms : std_logic := '0';
   signal reset : std_logic := '0';


 	--Outputs
   signal debounce_sw : std_logic;

   -- Clock period definitions
   constant clk_period_10ms : time := 10 ms;
	constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: debounce_fsm PORT MAP (
          sw => sw,
          clk => clk,
          debounce_sw => debounce_sw,
			 clk_10ms => clk_10ms,
          reset => reset
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
    -- Clock process definitions
   clk_process_10ms :process
   begin
		clk_10ms <= '0';
		wait for clk_period_10ms/2;
		clk_10ms <= '1';
		wait for clk_period_10ms/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		sw <= '0', '1' after 1 ms, '0' after 2 ms, '1' after 3 ms, '0' after 5 ms, '1' after 8 ms, '0' after 9 ms, '1' after 10 ms, '0' after 59 ms;

      -- insert stimulus here 

      wait;
   end process;

END;
