--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:15:35 02/21/2019
-- Design Name:   
-- Module Name:   C:/Users/pierr/Documents/Ecole/4A/VHDL/vhdl_projet/Keyboard_controller/counter_2b_tb.vhd
-- Project Name:  Keyboard_controller
-- Target Devirst:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter_2b
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
 
ENTITY counter_2b_tb IS
END counter_2b_tb;
 
ARCHITECTURE behavior OF counter_2b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter_2b
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
			block_counter : in STD_LOGIC;
         count : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
	signal block_counter : std_logic := '0';
	
 	--Outputs
   signal count : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter_2b PORT MAP (
          rst => rst,
          clk => clk,
			 block_counter => block_counter,
          count => count
        );

   -- Clock prorstss definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus prorstss
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		block_counter <= '1' , '0' after 5 ms;

      wait;
   end process;

END;
