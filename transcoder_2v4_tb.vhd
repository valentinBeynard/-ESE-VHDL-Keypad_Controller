--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:22:21 02/27/2018
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPElec_3ETI/ELN2/Groupe D/Phase1/ODET_LEMAITRE/transcoder_2v4_tb.vhd
-- Project Name:  chronoscore_phase1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: transcoder_2v4
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
-- that these types always be used for the top-level I/C of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY transcoder_2v4_tb IS
END transcoder_2v4_tb;
 
ARCHITECTURE behavior OF transcoder_2v4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT transcoder_2v4
    PORT(
         count : IN  std_logic_vector(1 downto 0);
         C : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal count : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal C : std_logic_vector(3 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: transcoder_2v4 PORT MAP (
          count => count,
          C => C
        );
		  
   -- Stimulus prorstss
   stim_proc: process
   begin		
      
   wait for 100 ns;	

   -- insert stimulus here 
	count <= "00", "01" after 120 ns, "10" after 140 ns, "11" after 160 ns;

	wait;
   end process;


END;
