--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: transcoder_2v4_timesim.vhd
-- /___/   /\     Timestamp: Wed Mar 06 18:17:33 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf transcoder_2v4.pcf -rpw 100 -tpw 0 -ar Structure -tm transcoder_2v4 -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim transcoder_2v4.ncd transcoder_2v4_timesim.vhd 
-- Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-06-08)
-- Input file	: transcoder_2v4.ncd
-- Output file	: C:\Users\valentin.beynard\Documents\Keyboard_controller\netgen\par\transcoder_2v4_timesim.vhd
-- # of Entities	: 1
-- Design Name	: transcoder_2v4
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

entity transcoder_2v4 is
  port (
    C : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    count : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end transcoder_2v4;

architecture Structure of transcoder_2v4 is
  signal count_0_IBUF_34 : STD_LOGIC; 
  signal count_1_IBUF_35 : STD_LOGIC; 
  signal C_0_O : STD_LOGIC; 
  signal C_1_O : STD_LOGIC; 
  signal C_2_O : STD_LOGIC; 
  signal C_3_O : STD_LOGIC; 
  signal count_0_INBUF : STD_LOGIC; 
  signal count_1_INBUF : STD_LOGIC; 
  signal C_0_OBUF_101 : STD_LOGIC; 
  signal C_1_OBUF_92 : STD_LOGIC; 
  signal C_3_OBUF_125 : STD_LOGIC; 
  signal C_2_OBUF_116 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  C_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => C_0_O,
      O => C(0)
    );
  C_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => C_1_O,
      O => C(1)
    );
  C_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD23"
    )
    port map (
      I => C_2_O,
      O => C(2)
    );
  C_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => C_3_O,
      O => C(3)
    );
  count_0_IBUF : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 757 ps
    )
    port map (
      I => count(0),
      O => count_0_INBUF
    );
  count_1_IBUF : X_BUF
    generic map(
      LOC => "PAD20",
      PATHPULSE => 757 ps
    )
    port map (
      I => count(1),
      O => count_1_INBUF
    );
  count_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 757 ps
    )
    port map (
      I => count_0_INBUF,
      O => count_0_IBUF_34
    );
  count_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD20",
      PATHPULSE => 757 ps
    )
    port map (
      I => count_1_INBUF,
      O => count_1_IBUF_35
    );
  Mrom_C111 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X16Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => count_0_IBUF_34,
      ADR2 => count_1_IBUF_35,
      ADR3 => VCC,
      O => C_1_OBUF_92
    );
  Mrom_C11 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X16Y46"
    )
    port map (
      ADR0 => VCC,
      ADR1 => count_0_IBUF_34,
      ADR2 => count_1_IBUF_35,
      ADR3 => VCC,
      O => C_0_OBUF_101
    );
  Mrom_C21 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X17Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => count_1_IBUF_35,
      ADR2 => count_0_IBUF_34,
      ADR3 => VCC,
      O => C_2_OBUF_116
    );
  Mrom_C31 : X_LUT4
    generic map(
      INIT => X"0303",
      LOC => "SLICE_X17Y47"
    )
    port map (
      ADR0 => VCC,
      ADR1 => count_1_IBUF_35,
      ADR2 => count_0_IBUF_34,
      ADR3 => VCC,
      O => C_3_OBUF_125
    );
  C_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 757 ps
    )
    port map (
      I => C_0_OBUF_101,
      O => C_0_O
    );
  C_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 757 ps
    )
    port map (
      I => C_1_OBUF_92,
      O => C_1_O
    );
  C_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 757 ps
    )
    port map (
      I => C_2_OBUF_116,
      O => C_2_O
    );
  C_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 757 ps
    )
    port map (
      I => C_3_OBUF_125,
      O => C_3_O
    );
  NlwBlock_transcoder_2v4_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

