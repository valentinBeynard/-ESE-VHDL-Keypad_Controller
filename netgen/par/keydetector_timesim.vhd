--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: keydetector_timesim.vhd
-- /___/   /\     Timestamp: Wed Mar 06 22:35:35 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf keydetector.pcf -rpw 100 -tpw 0 -ar Structure -tm keydetector -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim keydetector.ncd keydetector_timesim.vhd 
-- Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-10-13)
-- Input file	: keydetector.ncd
-- Output file	: L:\CPE 4ETI\Keyboard_controller\netgen\par\keydetector_timesim.vhd
-- # of Entities	: 1
-- Design Name	: keydetector
-- Xilinx	: F:\Programmes\Xilinx\14.7\ISE_DS\ISE\
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

entity keydetector is
  port (
    non_activated : out STD_LOGIC; 
    hexa_id : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    lines : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    colums_counter : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end keydetector;

architecture Structure of keydetector is
  signal colums_counter_0_IBUF_93 : STD_LOGIC; 
  signal colums_counter_1_IBUF_94 : STD_LOGIC; 
  signal lines_0_IBUF_95 : STD_LOGIC; 
  signal lines_1_IBUF_96 : STD_LOGIC; 
  signal lines_2_IBUF_97 : STD_LOGIC; 
  signal lines_3_IBUF_99 : STD_LOGIC; 
  signal hexa_id_3_or0000_0 : STD_LOGIC; 
  signal hexa_id_0_or0002_0 : STD_LOGIC; 
  signal lines_1_INBUF : STD_LOGIC; 
  signal lines_2_INBUF : STD_LOGIC; 
  signal lines_0_INBUF : STD_LOGIC; 
  signal colums_counter_0_INBUF : STD_LOGIC; 
  signal colums_counter_1_INBUF : STD_LOGIC; 
  signal hexa_id_0_or0002 : STD_LOGIC; 
  signal non_activated_OBUF_303 : STD_LOGIC; 
  signal hexa_id_3_or0000 : STD_LOGIC; 
  signal hexa_id_1_OBUF_F5MUX_230 : STD_LOGIC; 
  signal Mmux_hexa_id_1_3_228 : STD_LOGIC; 
  signal hexa_id_1_OBUF_BXINV_223 : STD_LOGIC; 
  signal Mmux_hexa_id_1_4_221 : STD_LOGIC; 
  signal hexa_id_3_OBUF_F5MUX_255 : STD_LOGIC; 
  signal Mmux_hexa_id_3_3_253 : STD_LOGIC; 
  signal hexa_id_3_OBUF_BXINV_248 : STD_LOGIC; 
  signal Mmux_hexa_id_3_4_246 : STD_LOGIC; 
  signal non_activated_O : STD_LOGIC; 
  signal hexa_id_0_OBUF_F5MUX_280 : STD_LOGIC; 
  signal Mmux_hexa_id_0_3_278 : STD_LOGIC; 
  signal hexa_id_0_OBUF_BXINV_273 : STD_LOGIC; 
  signal Mmux_hexa_id_0_4_271 : STD_LOGIC; 
  signal hexa_id_3_O : STD_LOGIC; 
  signal hexa_id_1_O : STD_LOGIC; 
  signal lines_3_INBUF : STD_LOGIC; 
  signal hexa_id_2_OBUF_F5MUX_205 : STD_LOGIC; 
  signal Mmux_hexa_id_2_3_203 : STD_LOGIC; 
  signal hexa_id_2_OBUF_BXINV_198 : STD_LOGIC; 
  signal Mmux_hexa_id_2_4_196 : STD_LOGIC; 
  signal hexa_id_2_O : STD_LOGIC; 
  signal hexa_id_0_O : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  lines_1_IBUF : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 757 ps
    )
    port map (
      I => lines(1),
      O => lines_1_INBUF
    );
  lines_2_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 757 ps
    )
    port map (
      I => lines(2),
      O => lines_2_INBUF
    );
  lines_0_IBUF : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 757 ps
    )
    port map (
      I => lines(0),
      O => lines_0_INBUF
    );
  colums_counter_0_IBUF : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 757 ps
    )
    port map (
      I => colums_counter(0),
      O => colums_counter_0_INBUF
    );
  colums_counter_1_IBUF : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 757 ps
    )
    port map (
      I => colums_counter(1),
      O => colums_counter_1_INBUF
    );
  hexa_id_0_or0002_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X17Y47",
      PATHPULSE => 757 ps
    )
    port map (
      I => hexa_id_0_or0002,
      O => hexa_id_0_or0002_0
    );
  non_activated_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X16Y46",
      PATHPULSE => 757 ps
    )
    port map (
      I => hexa_id_3_or0000,
      O => hexa_id_3_or0000_0
    );
  hexa_id_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y47"
    )
    port map (
      IA => Mmux_hexa_id_1_4_221,
      IB => Mmux_hexa_id_1_3_228,
      SEL => hexa_id_1_OBUF_BXINV_223,
      O => hexa_id_1_OBUF_F5MUX_230
    );
  hexa_id_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y47",
      PATHPULSE => 757 ps
    )
    port map (
      I => colums_counter_1_IBUF_94,
      O => hexa_id_1_OBUF_BXINV_223
    );
  hexa_id_3_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y46"
    )
    port map (
      IA => Mmux_hexa_id_3_4_246,
      IB => Mmux_hexa_id_3_3_253,
      SEL => hexa_id_3_OBUF_BXINV_248,
      O => hexa_id_3_OBUF_F5MUX_255
    );
  hexa_id_3_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y46",
      PATHPULSE => 757 ps
    )
    port map (
      I => colums_counter_1_IBUF_94,
      O => hexa_id_3_OBUF_BXINV_248
    );
  non_activated_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => non_activated_O,
      O => non_activated
    );
  hexa_id_0_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X14Y47"
    )
    port map (
      IA => Mmux_hexa_id_0_4_271,
      IB => Mmux_hexa_id_0_3_278,
      SEL => hexa_id_0_OBUF_BXINV_273,
      O => hexa_id_0_OBUF_F5MUX_280
    );
  hexa_id_0_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y47",
      PATHPULSE => 757 ps
    )
    port map (
      I => colums_counter_1_IBUF_94,
      O => hexa_id_0_OBUF_BXINV_273
    );
  hexa_id_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => hexa_id_3_O,
      O => hexa_id(3)
    );
  hexa_id_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => hexa_id_1_O,
      O => hexa_id(1)
    );
  lines_3_IBUF : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 757 ps
    )
    port map (
      I => lines(3),
      O => lines_3_INBUF
    );
  hexa_id_2_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X15Y46"
    )
    port map (
      IA => Mmux_hexa_id_2_4_196,
      IB => Mmux_hexa_id_2_3_203,
      SEL => hexa_id_2_OBUF_BXINV_198,
      O => hexa_id_2_OBUF_F5MUX_205
    );
  hexa_id_2_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y46",
      PATHPULSE => 757 ps
    )
    port map (
      I => colums_counter_1_IBUF_94,
      O => hexa_id_2_OBUF_BXINV_198
    );
  hexa_id_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD20"
    )
    port map (
      I => hexa_id_2_O,
      O => hexa_id(2)
    );
  hexa_id_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => hexa_id_0_O,
      O => hexa_id(0)
    );
  colums_counter_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 757 ps
    )
    port map (
      I => colums_counter_0_INBUF,
      O => colums_counter_0_IBUF_93
    );
  lines_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 757 ps
    )
    port map (
      I => lines_2_INBUF,
      O => lines_2_IBUF_97
    );
  colums_counter_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 757 ps
    )
    port map (
      I => colums_counter_1_INBUF,
      O => colums_counter_1_IBUF_94
    );
  lines_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 757 ps
    )
    port map (
      I => lines_3_INBUF,
      O => lines_3_IBUF_99
    );
  lines_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 757 ps
    )
    port map (
      I => lines_0_INBUF,
      O => lines_0_IBUF_95
    );
  lines_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD23",
      PATHPULSE => 757 ps
    )
    port map (
      I => lines_1_INBUF,
      O => lines_1_IBUF_96
    );
  non_activated1 : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X16Y46"
    )
    port map (
      ADR0 => lines_2_IBUF_97,
      ADR1 => lines_1_IBUF_96,
      ADR2 => lines_3_IBUF_99,
      ADR3 => lines_0_IBUF_95,
      O => non_activated_OBUF_303
    );
  Mmux_hexa_id_1_4 : X_LUT4
    generic map(
      INIT => X"AFAC",
      LOC => "SLICE_X15Y47"
    )
    port map (
      ADR0 => lines_0_IBUF_95,
      ADR1 => lines_2_IBUF_97,
      ADR2 => colums_counter_0_IBUF_93,
      ADR3 => lines_3_IBUF_99,
      O => Mmux_hexa_id_1_4_221
    );
  Mmux_hexa_id_1_3 : X_LUT4
    generic map(
      INIT => X"EFEE",
      LOC => "SLICE_X15Y47"
    )
    port map (
      ADR0 => lines_0_IBUF_95,
      ADR1 => lines_1_IBUF_96,
      ADR2 => colums_counter_0_IBUF_93,
      ADR3 => lines_3_IBUF_99,
      O => Mmux_hexa_id_1_3_228
    );
  Mmux_hexa_id_3_4 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X14Y46"
    )
    port map (
      ADR0 => lines_3_IBUF_99,
      ADR1 => colums_counter_0_IBUF_93,
      ADR2 => lines_2_IBUF_97,
      ADR3 => VCC,
      O => Mmux_hexa_id_3_4_246
    );
  Mmux_hexa_id_2_3 : X_LUT4
    generic map(
      INIT => X"FFCA",
      LOC => "SLICE_X15Y46"
    )
    port map (
      ADR0 => lines_1_IBUF_96,
      ADR1 => lines_2_IBUF_97,
      ADR2 => colums_counter_0_IBUF_93,
      ADR3 => lines_3_IBUF_99,
      O => Mmux_hexa_id_2_3_203
    );
  Mmux_hexa_id_0_3 : X_LUT4
    generic map(
      INIT => X"FFB8",
      LOC => "SLICE_X14Y47"
    )
    port map (
      ADR0 => lines_3_IBUF_99,
      ADR1 => colums_counter_0_IBUF_93,
      ADR2 => lines_2_IBUF_97,
      ADR3 => lines_1_IBUF_96,
      O => Mmux_hexa_id_0_3_278
    );
  hexa_id_0_or00021 : X_LUT4
    generic map(
      INIT => X"FFEE",
      LOC => "SLICE_X17Y47"
    )
    port map (
      ADR0 => lines_0_IBUF_95,
      ADR1 => lines_3_IBUF_99,
      ADR2 => VCC,
      ADR3 => lines_2_IBUF_97,
      O => hexa_id_0_or0002
    );
  hexa_id_3_or00001 : X_LUT4
    generic map(
      INIT => X"FFFE",
      LOC => "SLICE_X16Y46"
    )
    port map (
      ADR0 => lines_2_IBUF_97,
      ADR1 => lines_1_IBUF_96,
      ADR2 => lines_3_IBUF_99,
      ADR3 => lines_0_IBUF_95,
      O => hexa_id_3_or0000
    );
  Mmux_hexa_id_3_3 : X_LUT4
    generic map(
      INIT => X"FE32",
      LOC => "SLICE_X14Y46"
    )
    port map (
      ADR0 => lines_3_IBUF_99,
      ADR1 => colums_counter_0_IBUF_93,
      ADR2 => lines_2_IBUF_97,
      ADR3 => hexa_id_3_or0000_0,
      O => Mmux_hexa_id_3_3_253
    );
  Mmux_hexa_id_2_4 : X_LUT4
    generic map(
      INIT => X"AFAE",
      LOC => "SLICE_X15Y46"
    )
    port map (
      ADR0 => lines_1_IBUF_96,
      ADR1 => lines_2_IBUF_97,
      ADR2 => colums_counter_0_IBUF_93,
      ADR3 => lines_3_IBUF_99,
      O => Mmux_hexa_id_2_4_196
    );
  Mmux_hexa_id_0_4 : X_LUT4
    generic map(
      INIT => X"E2E2",
      LOC => "SLICE_X14Y47"
    )
    port map (
      ADR0 => hexa_id_0_or0002_0,
      ADR1 => colums_counter_0_IBUF_93,
      ADR2 => lines_1_IBUF_96,
      ADR3 => VCC,
      O => Mmux_hexa_id_0_4_271
    );
  non_activated_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 757 ps
    )
    port map (
      I => non_activated_OBUF_303,
      O => non_activated_O
    );
  hexa_id_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 757 ps
    )
    port map (
      I => hexa_id_3_OBUF_F5MUX_255,
      O => hexa_id_3_O
    );
  hexa_id_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 757 ps
    )
    port map (
      I => hexa_id_1_OBUF_F5MUX_230,
      O => hexa_id_1_O
    );
  hexa_id_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD20",
      PATHPULSE => 757 ps
    )
    port map (
      I => hexa_id_2_OBUF_F5MUX_205,
      O => hexa_id_2_O
    );
  hexa_id_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 757 ps
    )
    port map (
      I => hexa_id_0_OBUF_F5MUX_280,
      O => hexa_id_0_O
    );
  NlwBlock_keydetector_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

