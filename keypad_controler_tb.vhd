--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:12:12 03/07/2019
-- Design Name:   
-- Module Name:   L:/CPE 4ETI/Keyboard_controller/keypad_controler_tb.vhd
-- Project Name:  Keyboard_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: keypad_controler
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
 
ENTITY keypad_controler_tb IS
END keypad_controler_tb;
 
ARCHITECTURE behavior OF keypad_controler_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT keypad_controler
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
			segments_7_data : out  STD_LOGIC_VECTOR (6 downto 0);
         AN_control_display : out  STD_LOGIC_VECTOR (3 downto 0);
         --hexa_code : OUT  std_logic_vector(3 downto 0);
         columns : OUT  std_logic_vector(3 downto 0);
         lines : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal lines : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal hexa_code : std_logic_vector(3 downto 0);
   signal columns : std_logic_vector(3 downto 0);
	signal segments_7_data : STD_LOGIC_VECTOR (6 downto 0);
   signal AN_control_display : STD_LOGIC_VECTOR (3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: keypad_controler PORT MAP (
          clk => clk,
          rst => rst,
			 segments_7_data => segments_7_data,
			 AN_control_display => AN_control_display,
          --hexa_code => hexa_code,
          columns => columns,
          lines => lines
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
		lines(0) <= '0', '1' after 1 ms, '0' after 2 ms, '1' after 3 ms, '0' after 5 ms, '1' after 8 ms, '0' after 9 ms, '1' after 10 ms, '0' after 65 ms;


      wait;
   end process;

END;
