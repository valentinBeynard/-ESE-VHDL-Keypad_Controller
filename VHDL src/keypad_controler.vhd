----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:13 02/21/2019 
-- Design Name: 
-- Module Name:    keypad_controler - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity keypad_controler is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           segments_7_data : out  STD_LOGIC_VECTOR (6 downto 0);
           AN_control_display : out  STD_LOGIC_VECTOR (3 downto 0);
           columns : out  STD_LOGIC_VECTOR (3 downto 0);
           lines : in  STD_LOGIC_VECTOR (3 downto 0));
end keypad_controler;

architecture Behavioral of keypad_controler is


    COMPONENT counter_2b
    PORT(
         rst : IN  std_logic;
         clk : IN  std_logic;
			block_counter : in STD_LOGIC;
         count : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
	 
	 
    COMPONENT transcoder_2v4
    PORT(
         count : IN  std_logic_vector(1 downto 0);
         C : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

	 COMPONENT debounced_keyboard
    PORT(
         raw_lines : IN  std_logic_vector(3 downto 0);
         lines : OUT  std_logic_vector(3 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT keydetector
    PORT(
         lines : IN  std_logic_vector(3 downto 0);
         hexa_id : OUT  std_logic_vector(3 downto 0);
         colums_counter : IN  std_logic_vector(1 downto 0);
         key_is_pressed : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT display_controller
    PORT(
         clk : IN  std_logic;
         AN : OUT  std_logic_vector(3 downto 0);
         digit_select : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
	 
	 COMPONENT transcoder_7_segments
    PORT(
         hex_code : IN  std_logic_vector(3 downto 0);
         segments_data : OUT  std_logic_vector(6 downto 0);
         key_detected : IN  std_logic;
         digit_selec : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;

signal internal_counter_out: STD_LOGIC_VECTOR(1 downto 0);
signal internal_non_activated: STD_LOGIC;
signal internal_debounced_lines: STD_LOGIC_VECTOR(3 downto 0);
signal internal_hexa_code: STD_LOGIC_VECTOR(3 downto 0);
signal internal_AN_selector: STD_LOGIC_VECTOR(1 downto 0);

	 
begin

    U_counter_2b: counter_2b PORT MAP (
          rst => rst,
          clk => clk,
			 block_counter => internal_non_activated,
          count => internal_counter_out
        );

   U_trans_2v4: transcoder_2v4 PORT MAP (
          count => internal_counter_out,
          C => columns
        );
		  
	U_Key_Debounce: debounced_keyboard PORT MAP (
          raw_lines => lines,
          lines => internal_debounced_lines,
          clk => clk
        );
		  
	U_Key_Detector: keydetector PORT MAP (
          lines => internal_debounced_lines,
          hexa_id => internal_hexa_code,
          colums_counter => internal_counter_out,
          key_is_pressed => internal_non_activated
        );
		  
	U_Display_Controller: display_controller PORT MAP (
          clk => clk,
          AN => AN_control_display,
          digit_select => internal_AN_selector
        );

   U_Transcoder_7seg: transcoder_7_segments PORT MAP (
          hex_code => internal_hexa_code,
          segments_data => segments_7_data,
          key_detected => internal_non_activated,
          digit_selec => internal_AN_selector
        );		  

end Behavioral;

