--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: counter_2b_timesim.vhd
-- /___/   /\     Timestamp: Wed Mar 06 18:07:53 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf counter_2b.pcf -rpw 100 -tpw 0 -ar Structure -tm counter_2b -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim counter_2b.ncd counter_2b_timesim.vhd 
-- Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-06-08)
-- Input file	: counter_2b.ncd
-- Output file	: C:\Users\valentin.beynard\Documents\Keyboard_controller\netgen\par\counter_2b_timesim.vhd
-- # of Entities	: 1
-- Design Name	: counter_2b
-- Xilinx	: C:\Xilinx\14.6\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity counter_2b is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    count : out STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end counter_2b;

architecture Structure of counter_2b is
  signal clk_BUFGP : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal count_0_O : STD_LOGIC; 
  signal count_1_O : STD_LOGIC; 
  signal rst_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal count_int_0_DXMUX_87 : STD_LOGIC; 
  signal count_int_0_DYMUX_81 : STD_LOGIC; 
  signal count_int_0_SRINV_71 : STD_LOGIC; 
  signal count_int_0_CLKINV_70 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal count_int : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  count_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => count_0_O,
      O => count(0)
    );
  count_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD23"
    )
    port map (
      I => count_1_O,
      O => count(1)
    );
  rst_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst,
      O => rst_INBUF
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_BUFG_I0_INV
    );
  Mcount_count_int_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X18Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => count_int(1),
      ADR3 => count_int(0),
      O => Result(1)
    );
  count_int_1 : X_SFF
    generic map(
      LOC => "SLICE_X18Y46",
      INIT => '0'
    )
    port map (
      I => count_int_0_DYMUX_81,
      CE => VCC,
      CLK => count_int_0_CLKINV_70,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => count_int_0_SRINV_71,
      O => count_int(1)
    );
  count_int_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X18Y46",
      PATHPULSE => 605 ps
    )
    port map (
      I => count_int(0),
      O => count_int_0_DXMUX_87
    );
  count_int_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X18Y46",
      PATHPULSE => 605 ps
    )
    port map (
      I => Result(1),
      O => count_int_0_DYMUX_81
    );
  count_int_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y46",
      PATHPULSE => 605 ps
    )
    port map (
      I => rst_INBUF,
      O => count_int_0_SRINV_71
    );
  count_int_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y46",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => count_int_0_CLKINV_70
    );
  count_int_0 : X_SFF
    generic map(
      LOC => "SLICE_X18Y46",
      INIT => '0'
    )
    port map (
      I => count_int_0_DXMUX_87,
      CE => VCC,
      CLK => count_int_0_CLKINV_70,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => count_int_0_SRINV_71,
      O => count_int(0)
    );
  count_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 605 ps
    )
    port map (
      I => count_int(0),
      O => count_0_O
    );
  count_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 605 ps
    )
    port map (
      I => count_int(1),
      O => count_1_O
    );
  NlwBlock_counter_2b_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_counter_2b_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

