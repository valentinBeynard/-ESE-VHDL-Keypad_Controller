--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:30:05 03/16/2019
-- Design Name:   
-- Module Name:   C:/Users/pierr/Documents/Ecole/ESE/TECHNUM/-ESE-VHDL-Keypad_Controller/sequence_detector_tb.vhd
-- Project Name:  Keyboard_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sequence_detector
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
 
ENTITY sequence_detector_tb IS
END sequence_detector_tb;
 
ARCHITECTURE behavior OF sequence_detector_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sequence_detector
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         data_in : IN  std_logic_vector(3 downto 0);
         valid_out : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal data_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal valid_out : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sequence_detector PORT MAP (
          clk => clk,
          reset => reset,
          data_in => data_in,
          valid_out => valid_out
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

      -- insert stimulus here 

		data_in <= "1000", "1010" after  100 ms, "1100" after 200 ms, "0000" after 300 ms, "0001" after 500 ms, "0010" after 800 ms, "0100" after 900 ms, "1110" after 1000 ms;

      wait;
   end process;

END;
