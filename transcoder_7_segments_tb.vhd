--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:40:11 03/07/2019
-- Design Name:   
-- Module Name:   L:/CPE 4ETI/Keyboard_controller/transcoder_7_segments_tb.vhd
-- Project Name:  Keyboard_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: transcoder_7_segments
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
 
ENTITY transcoder_7_segments_tb IS
END transcoder_7_segments_tb;
 
ARCHITECTURE behavior OF transcoder_7_segments_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT transcoder_7_segments
    PORT(
         hex_code : IN  std_logic_vector(3 downto 0);
         segments_data : OUT  std_logic_vector(6 downto 0);
         key_detected : IN  std_logic;
         digit_selec : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal hex_code : std_logic_vector(3 downto 0) := (others => '0');
   signal key_detected : std_logic := '0';
   signal digit_selec : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal segments_data : std_logic_vector(6 downto 0);
   

   constant columns_process_period : time := 5 ms;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: transcoder_7_segments PORT MAP (
          hex_code => hex_code,
          segments_data => segments_data,
          key_detected => key_detected,
          digit_selec => digit_selec
        );
		  
	columns_process :process
   begin
		digit_selec <= "00";
		wait for columns_process_period/4;
		digit_selec <= "01";
		wait for columns_process_period/4;
		digit_selec <= "10";
		wait for columns_process_period/4;		
		digit_selec <= "11";
		wait for columns_process_period/4;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		key_detected <= '0', '1' after 5 ms, '0' after 20 ms, '1' after 45 ms, '0' after 60 ms;
		hex_code <= "0000", "0101" after 1 ms, "0000" after 10 ms, "1111" after 30 ms;

      wait;
   end process;

END;
