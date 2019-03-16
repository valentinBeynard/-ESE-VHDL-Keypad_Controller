--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:20:15 03/06/2019
-- Design Name:   
-- Module Name:   L:/CPE 4ETI/Keyboard_controller/keydetector_tb.vhd
-- Project Name:  Keyboard_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: keydetector
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
 
ENTITY keydetector_tb IS
END keydetector_tb;
 
ARCHITECTURE behavior OF keydetector_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keydetector
    PORT(
         lines : IN  std_logic_vector(3 downto 0);
         hexa_id : OUT  std_logic_vector(3 downto 0);
         colums_counter : IN  std_logic_vector(1 downto 0);
         key_is_pressed : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal lines : std_logic_vector(3 downto 0) := (others => '0');
   signal colums_counter : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal hexa_id : std_logic_vector(3 downto 0);
   signal key_is_pressed : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keydetector PORT MAP (
          lines => lines,
          hexa_id => hexa_id,
          colums_counter => colums_counter,
          key_is_pressed => key_is_pressed
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		lines <= "0000", "0001" after 1 ms, "0000" after 2 ms, "0001" after 5 ms, "0000" after 5.5 ms, "0001" after 7 ms;
		colums_counter <= "00" , "01" after 1 ms, "10" after 2 ms, "11" after 3 ms;
      -- insert stimulus here 

      wait;
   end process;

END;
