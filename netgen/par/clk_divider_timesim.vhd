--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: clk_divider_timesim.vhd
-- /___/   /\     Timestamp: Thu Mar 07 16:26:50 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf clk_divider.pcf -rpw 100 -tpw 0 -ar Structure -tm clk_divider -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim clk_divider.ncd clk_divider_timesim.vhd 
-- Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-06-08)
-- Input file	: clk_divider.ncd
-- Output file	: E:\CPE 4ETI\Keyboard_controller\netgen\par\clk_divider_timesim.vhd
-- # of Entities	: 1
-- Design Name	: clk_divider
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

entity clk_divider is
  port (
    clk_out : out STD_LOGIC; 
    clk_50M : in STD_LOGIC := 'X' 
  );
end clk_divider;

architecture Structure of clk_divider is
  signal Mcompar_clk_out_int_cmp_lt0000_cy_6_Q : STD_LOGIC; 
  signal clk_50M_BUFGP : STD_LOGIC; 
  signal clk_out_int_193 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ZERO_223 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_1_CYINIT_222 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELF_213 : STD_LOGIC; 
  signal vcount_3_rt_212 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_1_BXINV_211 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXG_210 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ONE_208 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELG_199 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_lut_1_Q : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO_254 : STD_LOGIC; 
  signal vcount_5_rt_245 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF_244 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXFAST_243 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_3_CYAND_242 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_3_FASTCARRY_241 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXG2_240 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXF2_239 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ONE_238 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG_229 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_lut_3_Q : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO_285 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_lut_4_Q_277 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF_276 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXFAST_275 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_5_CYAND_274 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_5_FASTCARRY_273 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXG2_272 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXF2_271 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ONE_270 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG_264 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_lut_5_Q_263 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_6_LOGIC_ZERO_300 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_6_CYINIT_299 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_cy_6_CYSELF_291 : STD_LOGIC; 
  signal Mcompar_clk_out_int_cmp_lt0000_lut_6_Q_290 : STD_LOGIC; 
  signal vcount_0_DXMUX_346 : STD_LOGIC; 
  signal vcount_0_XORF_344 : STD_LOGIC; 
  signal vcount_0_LOGIC_ONE_343 : STD_LOGIC; 
  signal vcount_0_CYINIT_342 : STD_LOGIC; 
  signal vcount_0_CYSELF_333 : STD_LOGIC; 
  signal vcount_0_BXINV_331 : STD_LOGIC; 
  signal vcount_0_DYMUX_326 : STD_LOGIC; 
  signal vcount_0_XORG_324 : STD_LOGIC; 
  signal vcount_0_CYMUXG_323 : STD_LOGIC; 
  signal vcount_0_LOGIC_ZERO_321 : STD_LOGIC; 
  signal vcount_0_CYSELG_312 : STD_LOGIC; 
  signal vcount_0_G : STD_LOGIC; 
  signal vcount_0_SRINV_310 : STD_LOGIC; 
  signal vcount_0_CLKINV_309 : STD_LOGIC; 
  signal vcount_2_DXMUX_398 : STD_LOGIC; 
  signal vcount_2_XORF_396 : STD_LOGIC; 
  signal vcount_2_CYINIT_395 : STD_LOGIC; 
  signal vcount_2_F : STD_LOGIC; 
  signal vcount_2_DYMUX_381 : STD_LOGIC; 
  signal vcount_2_XORG_379 : STD_LOGIC; 
  signal vcount_2_CYSELF_377 : STD_LOGIC; 
  signal vcount_2_CYMUXFAST_376 : STD_LOGIC; 
  signal vcount_2_CYAND_375 : STD_LOGIC; 
  signal vcount_2_FASTCARRY_374 : STD_LOGIC; 
  signal vcount_2_CYMUXG2_373 : STD_LOGIC; 
  signal vcount_2_CYMUXF2_372 : STD_LOGIC; 
  signal vcount_2_LOGIC_ZERO_371 : STD_LOGIC; 
  signal vcount_2_CYSELG_362 : STD_LOGIC; 
  signal vcount_2_G : STD_LOGIC; 
  signal vcount_2_SRINV_360 : STD_LOGIC; 
  signal vcount_2_CLKINV_359 : STD_LOGIC; 
  signal vcount_4_DXMUX_450 : STD_LOGIC; 
  signal vcount_4_XORF_448 : STD_LOGIC; 
  signal vcount_4_CYINIT_447 : STD_LOGIC; 
  signal vcount_4_F : STD_LOGIC; 
  signal vcount_4_DYMUX_433 : STD_LOGIC; 
  signal vcount_4_XORG_431 : STD_LOGIC; 
  signal vcount_4_CYSELF_429 : STD_LOGIC; 
  signal vcount_4_CYMUXFAST_428 : STD_LOGIC; 
  signal vcount_4_CYAND_427 : STD_LOGIC; 
  signal vcount_4_FASTCARRY_426 : STD_LOGIC; 
  signal vcount_4_CYMUXG2_425 : STD_LOGIC; 
  signal vcount_4_CYMUXF2_424 : STD_LOGIC; 
  signal vcount_4_LOGIC_ZERO_423 : STD_LOGIC; 
  signal vcount_4_CYSELG_414 : STD_LOGIC; 
  signal vcount_4_G : STD_LOGIC; 
  signal vcount_4_SRINV_412 : STD_LOGIC; 
  signal vcount_4_CLKINV_411 : STD_LOGIC; 
  signal vcount_6_DXMUX_502 : STD_LOGIC; 
  signal vcount_6_XORF_500 : STD_LOGIC; 
  signal vcount_6_CYINIT_499 : STD_LOGIC; 
  signal vcount_6_F : STD_LOGIC; 
  signal vcount_6_DYMUX_485 : STD_LOGIC; 
  signal vcount_6_XORG_483 : STD_LOGIC; 
  signal vcount_6_CYSELF_481 : STD_LOGIC; 
  signal vcount_6_CYMUXFAST_480 : STD_LOGIC; 
  signal vcount_6_CYAND_479 : STD_LOGIC; 
  signal vcount_6_FASTCARRY_478 : STD_LOGIC; 
  signal vcount_6_CYMUXG2_477 : STD_LOGIC; 
  signal vcount_6_CYMUXF2_476 : STD_LOGIC; 
  signal vcount_6_LOGIC_ZERO_475 : STD_LOGIC; 
  signal vcount_6_CYSELG_466 : STD_LOGIC; 
  signal vcount_6_G : STD_LOGIC; 
  signal vcount_6_SRINV_464 : STD_LOGIC; 
  signal vcount_6_CLKINV_463 : STD_LOGIC; 
  signal vcount_8_DXMUX_554 : STD_LOGIC; 
  signal vcount_8_XORF_552 : STD_LOGIC; 
  signal vcount_8_CYINIT_551 : STD_LOGIC; 
  signal vcount_8_F : STD_LOGIC; 
  signal vcount_8_DYMUX_537 : STD_LOGIC; 
  signal vcount_8_XORG_535 : STD_LOGIC; 
  signal vcount_8_CYSELF_533 : STD_LOGIC; 
  signal vcount_8_CYMUXFAST_532 : STD_LOGIC; 
  signal vcount_8_CYAND_531 : STD_LOGIC; 
  signal vcount_8_FASTCARRY_530 : STD_LOGIC; 
  signal vcount_8_CYMUXG2_529 : STD_LOGIC; 
  signal vcount_8_CYMUXF2_528 : STD_LOGIC; 
  signal vcount_8_LOGIC_ZERO_527 : STD_LOGIC; 
  signal vcount_8_CYSELG_518 : STD_LOGIC; 
  signal vcount_8_G : STD_LOGIC; 
  signal vcount_8_SRINV_516 : STD_LOGIC; 
  signal vcount_8_CLKINV_515 : STD_LOGIC; 
  signal vcount_10_DXMUX_606 : STD_LOGIC; 
  signal vcount_10_XORF_604 : STD_LOGIC; 
  signal vcount_10_CYINIT_603 : STD_LOGIC; 
  signal vcount_10_F : STD_LOGIC; 
  signal vcount_10_DYMUX_589 : STD_LOGIC; 
  signal vcount_10_XORG_587 : STD_LOGIC; 
  signal vcount_10_CYSELF_585 : STD_LOGIC; 
  signal vcount_10_CYMUXFAST_584 : STD_LOGIC; 
  signal vcount_10_CYAND_583 : STD_LOGIC; 
  signal vcount_10_FASTCARRY_582 : STD_LOGIC; 
  signal vcount_10_CYMUXG2_581 : STD_LOGIC; 
  signal vcount_10_CYMUXF2_580 : STD_LOGIC; 
  signal vcount_10_LOGIC_ZERO_579 : STD_LOGIC; 
  signal vcount_10_CYSELG_570 : STD_LOGIC; 
  signal vcount_10_G : STD_LOGIC; 
  signal vcount_10_SRINV_568 : STD_LOGIC; 
  signal vcount_10_CLKINV_567 : STD_LOGIC; 
  signal vcount_12_DXMUX_658 : STD_LOGIC; 
  signal vcount_12_XORF_656 : STD_LOGIC; 
  signal vcount_12_CYINIT_655 : STD_LOGIC; 
  signal vcount_12_F : STD_LOGIC; 
  signal vcount_12_DYMUX_641 : STD_LOGIC; 
  signal vcount_12_XORG_639 : STD_LOGIC; 
  signal vcount_12_CYSELF_637 : STD_LOGIC; 
  signal vcount_12_CYMUXFAST_636 : STD_LOGIC; 
  signal vcount_12_CYAND_635 : STD_LOGIC; 
  signal vcount_12_FASTCARRY_634 : STD_LOGIC; 
  signal vcount_12_CYMUXG2_633 : STD_LOGIC; 
  signal vcount_12_CYMUXF2_632 : STD_LOGIC; 
  signal vcount_12_LOGIC_ZERO_631 : STD_LOGIC; 
  signal vcount_12_CYSELG_622 : STD_LOGIC; 
  signal vcount_12_G : STD_LOGIC; 
  signal vcount_12_SRINV_620 : STD_LOGIC; 
  signal vcount_12_CLKINV_619 : STD_LOGIC; 
  signal vcount_14_DXMUX_682 : STD_LOGIC; 
  signal vcount_14_XORF_680 : STD_LOGIC; 
  signal vcount_14_CYINIT_679 : STD_LOGIC; 
  signal vcount_14_rt_677 : STD_LOGIC; 
  signal vcount_14_SRINV_669 : STD_LOGIC; 
  signal vcount_14_CLKINV_668 : STD_LOGIC; 
  signal clk_50M_INBUF : STD_LOGIC; 
  signal clk_out_O : STD_LOGIC; 
  signal clk_50M_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_50M_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal clk_out_int_DYMUX_713 : STD_LOGIC; 
  signal clk_out_int_CLKINV_711 : STD_LOGIC; 
  signal clk_out_int_CEINV_710 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal vcount : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Mcount_vcount_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal Mcount_vcount_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X18Y6"
    )
    port map (
      O => Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ONE_208
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y6"
    )
    port map (
      O => Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ZERO_223
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y6"
    )
    port map (
      IA => Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ZERO_223,
      IB => Mcompar_clk_out_int_cmp_lt0000_cy_1_CYINIT_222,
      SEL => Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELF_213,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_0_Q
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_1_BXINV_211,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_1_CYINIT_222
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_3_rt_212,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELF_213
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => Mcompar_clk_out_int_cmp_lt0000_cy_1_BXINV_211
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X18Y6"
    )
    port map (
      IA => Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ONE_208,
      IB => Mcompar_clk_out_int_cmp_lt0000_cy_0_Q,
      SEL => Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELG_199,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXG_210
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_lut_1_Q,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELG_199
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X18Y7"
    )
    port map (
      O => Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ONE_238
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y7"
    )
    port map (
      O => Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO_254
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y7"
    )
    port map (
      IA => Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO_254,
      IB => Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO_254,
      SEL => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF_244,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXF2_239
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_5_rt_245,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF_244
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXG_210,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_3_FASTCARRY_241
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y7"
    )
    port map (
      I0 => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG_229,
      I1 => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF_244,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYAND_242
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y7"
    )
    port map (
      IA => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXG2_240,
      IB => Mcompar_clk_out_int_cmp_lt0000_cy_3_FASTCARRY_241,
      SEL => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYAND_242,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXFAST_243
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y7"
    )
    port map (
      IA => Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ONE_238,
      IB => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXF2_239,
      SEL => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG_229,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXG2_240
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_lut_3_Q,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG_229
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X18Y8"
    )
    port map (
      O => Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ONE_270
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y8"
    )
    port map (
      O => Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO_285
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y8"
    )
    port map (
      IA => Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO_285,
      IB => Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO_285,
      SEL => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF_276,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXF2_271
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_lut_4_Q_277,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF_276
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXFAST_243,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_5_FASTCARRY_273
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X18Y8"
    )
    port map (
      I0 => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG_264,
      I1 => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF_276,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYAND_274
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X18Y8"
    )
    port map (
      IA => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXG2_272,
      IB => Mcompar_clk_out_int_cmp_lt0000_cy_5_FASTCARRY_273,
      SEL => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYAND_274,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXFAST_275
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y8"
    )
    port map (
      IA => Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ONE_270,
      IB => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXF2_271,
      SEL => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG_264,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXG2_272
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X18Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_lut_5_Q_263,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG_264
    );
  Mcompar_clk_out_int_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"A0A0",
      LOC => "SLICE_X18Y8"
    )
    port map (
      ADR0 => vcount(8),
      ADR1 => VCC,
      ADR2 => vcount(7),
      ADR3 => VCC,
      O => Mcompar_clk_out_int_cmp_lt0000_lut_4_Q_277
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X18Y9"
    )
    port map (
      O => Mcompar_clk_out_int_cmp_lt0000_cy_6_LOGIC_ZERO_300
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X18Y9"
    )
    port map (
      IA => Mcompar_clk_out_int_cmp_lt0000_cy_6_LOGIC_ZERO_300,
      IB => Mcompar_clk_out_int_cmp_lt0000_cy_6_CYINIT_299,
      SEL => Mcompar_clk_out_int_cmp_lt0000_cy_6_CYSELF_291,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X18Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXFAST_275,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_6_CYINIT_299
    );
  Mcompar_clk_out_int_cmp_lt0000_cy_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X18Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_lut_6_Q_290,
      O => Mcompar_clk_out_int_cmp_lt0000_cy_6_CYSELF_291
    );
  Mcompar_clk_out_int_cmp_lt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X18Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vcount(14),
      ADR2 => VCC,
      ADR3 => vcount(13),
      O => Mcompar_clk_out_int_cmp_lt0000_lut_6_Q_290
    );
  vcount_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y4"
    )
    port map (
      O => vcount_0_LOGIC_ZERO_321
    );
  vcount_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X19Y4"
    )
    port map (
      O => vcount_0_LOGIC_ONE_343
    );
  vcount_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_0_XORF_344,
      O => vcount_0_DXMUX_346
    );
  vcount_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X19Y4"
    )
    port map (
      I0 => vcount_0_CYINIT_342,
      I1 => Mcount_vcount_lut(0),
      O => vcount_0_XORF_344
    );
  vcount_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y4"
    )
    port map (
      IA => vcount_0_LOGIC_ONE_343,
      IB => vcount_0_CYINIT_342,
      SEL => vcount_0_CYSELF_333,
      O => Mcount_vcount_cy(0)
    );
  vcount_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_0_BXINV_331,
      O => vcount_0_CYINIT_342
    );
  vcount_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_lut(0),
      O => vcount_0_CYSELF_333
    );
  vcount_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => vcount_0_BXINV_331
    );
  vcount_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_0_XORG_324,
      O => vcount_0_DYMUX_326
    );
  vcount_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X19Y4"
    )
    port map (
      I0 => Mcount_vcount_cy(0),
      I1 => vcount_0_G,
      O => vcount_0_XORG_324
    );
  vcount_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_0_CYMUXG_323,
      O => Mcount_vcount_cy(1)
    );
  vcount_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X19Y4"
    )
    port map (
      IA => vcount_0_LOGIC_ZERO_321,
      IB => Mcount_vcount_cy(0),
      SEL => vcount_0_CYSELG_312,
      O => vcount_0_CYMUXG_323
    );
  vcount_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_0_G,
      O => vcount_0_CYSELG_312
    );
  vcount_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => vcount_0_SRINV_310
    );
  vcount_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_BUFGP,
      O => vcount_0_CLKINV_309
    );
  vcount_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y5"
    )
    port map (
      O => vcount_2_LOGIC_ZERO_371
    );
  vcount_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_2_XORF_396,
      O => vcount_2_DXMUX_398
    );
  vcount_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X19Y5"
    )
    port map (
      I0 => vcount_2_CYINIT_395,
      I1 => vcount_2_F,
      O => vcount_2_XORF_396
    );
  vcount_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y5"
    )
    port map (
      IA => vcount_2_LOGIC_ZERO_371,
      IB => vcount_2_CYINIT_395,
      SEL => vcount_2_CYSELF_377,
      O => Mcount_vcount_cy(2)
    );
  vcount_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y5"
    )
    port map (
      IA => vcount_2_LOGIC_ZERO_371,
      IB => vcount_2_LOGIC_ZERO_371,
      SEL => vcount_2_CYSELF_377,
      O => vcount_2_CYMUXF2_372
    );
  vcount_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(1),
      O => vcount_2_CYINIT_395
    );
  vcount_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_2_F,
      O => vcount_2_CYSELF_377
    );
  vcount_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_2_XORG_379,
      O => vcount_2_DYMUX_381
    );
  vcount_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X19Y5"
    )
    port map (
      I0 => Mcount_vcount_cy(2),
      I1 => vcount_2_G,
      O => vcount_2_XORG_379
    );
  vcount_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_2_CYMUXFAST_376,
      O => Mcount_vcount_cy(3)
    );
  vcount_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(1),
      O => vcount_2_FASTCARRY_374
    );
  vcount_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y5"
    )
    port map (
      I0 => vcount_2_CYSELG_362,
      I1 => vcount_2_CYSELF_377,
      O => vcount_2_CYAND_375
    );
  vcount_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y5"
    )
    port map (
      IA => vcount_2_CYMUXG2_373,
      IB => vcount_2_FASTCARRY_374,
      SEL => vcount_2_CYAND_375,
      O => vcount_2_CYMUXFAST_376
    );
  vcount_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y5"
    )
    port map (
      IA => vcount_2_LOGIC_ZERO_371,
      IB => vcount_2_CYMUXF2_372,
      SEL => vcount_2_CYSELG_362,
      O => vcount_2_CYMUXG2_373
    );
  vcount_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_2_G,
      O => vcount_2_CYSELG_362
    );
  vcount_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => vcount_2_SRINV_360
    );
  vcount_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_BUFGP,
      O => vcount_2_CLKINV_359
    );
  vcount_2 : X_SFF
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => '0'
    )
    port map (
      I => vcount_2_DXMUX_398,
      CE => VCC,
      CLK => vcount_2_CLKINV_359,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_2_SRINV_360,
      O => vcount(2)
    );
  vcount_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y6"
    )
    port map (
      O => vcount_4_LOGIC_ZERO_423
    );
  vcount_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_4_XORF_448,
      O => vcount_4_DXMUX_450
    );
  vcount_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X19Y6"
    )
    port map (
      I0 => vcount_4_CYINIT_447,
      I1 => vcount_4_F,
      O => vcount_4_XORF_448
    );
  vcount_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y6"
    )
    port map (
      IA => vcount_4_LOGIC_ZERO_423,
      IB => vcount_4_CYINIT_447,
      SEL => vcount_4_CYSELF_429,
      O => Mcount_vcount_cy(4)
    );
  vcount_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y6"
    )
    port map (
      IA => vcount_4_LOGIC_ZERO_423,
      IB => vcount_4_LOGIC_ZERO_423,
      SEL => vcount_4_CYSELF_429,
      O => vcount_4_CYMUXF2_424
    );
  vcount_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(3),
      O => vcount_4_CYINIT_447
    );
  vcount_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_4_F,
      O => vcount_4_CYSELF_429
    );
  vcount_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_4_XORG_431,
      O => vcount_4_DYMUX_433
    );
  vcount_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X19Y6"
    )
    port map (
      I0 => Mcount_vcount_cy(4),
      I1 => vcount_4_G,
      O => vcount_4_XORG_431
    );
  vcount_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_4_CYMUXFAST_428,
      O => Mcount_vcount_cy(5)
    );
  vcount_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(3),
      O => vcount_4_FASTCARRY_426
    );
  vcount_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y6"
    )
    port map (
      I0 => vcount_4_CYSELG_414,
      I1 => vcount_4_CYSELF_429,
      O => vcount_4_CYAND_427
    );
  vcount_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y6"
    )
    port map (
      IA => vcount_4_CYMUXG2_425,
      IB => vcount_4_FASTCARRY_426,
      SEL => vcount_4_CYAND_427,
      O => vcount_4_CYMUXFAST_428
    );
  vcount_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y6"
    )
    port map (
      IA => vcount_4_LOGIC_ZERO_423,
      IB => vcount_4_CYMUXF2_424,
      SEL => vcount_4_CYSELG_414,
      O => vcount_4_CYMUXG2_425
    );
  vcount_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_4_G,
      O => vcount_4_CYSELG_414
    );
  vcount_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => vcount_4_SRINV_412
    );
  vcount_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_BUFGP,
      O => vcount_4_CLKINV_411
    );
  vcount_4 : X_SFF
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => '0'
    )
    port map (
      I => vcount_4_DXMUX_450,
      CE => VCC,
      CLK => vcount_4_CLKINV_411,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_4_SRINV_412,
      O => vcount(4)
    );
  vcount_7 : X_SFF
    generic map(
      LOC => "SLICE_X19Y7",
      INIT => '0'
    )
    port map (
      I => vcount_6_DYMUX_485,
      CE => VCC,
      CLK => vcount_6_CLKINV_463,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_6_SRINV_464,
      O => vcount(7)
    );
  vcount_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y7"
    )
    port map (
      O => vcount_6_LOGIC_ZERO_475
    );
  vcount_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_6_XORF_500,
      O => vcount_6_DXMUX_502
    );
  vcount_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X19Y7"
    )
    port map (
      I0 => vcount_6_CYINIT_499,
      I1 => vcount_6_F,
      O => vcount_6_XORF_500
    );
  vcount_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y7"
    )
    port map (
      IA => vcount_6_LOGIC_ZERO_475,
      IB => vcount_6_CYINIT_499,
      SEL => vcount_6_CYSELF_481,
      O => Mcount_vcount_cy(6)
    );
  vcount_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y7"
    )
    port map (
      IA => vcount_6_LOGIC_ZERO_475,
      IB => vcount_6_LOGIC_ZERO_475,
      SEL => vcount_6_CYSELF_481,
      O => vcount_6_CYMUXF2_476
    );
  vcount_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(5),
      O => vcount_6_CYINIT_499
    );
  vcount_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_6_F,
      O => vcount_6_CYSELF_481
    );
  vcount_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_6_XORG_483,
      O => vcount_6_DYMUX_485
    );
  vcount_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X19Y7"
    )
    port map (
      I0 => Mcount_vcount_cy(6),
      I1 => vcount_6_G,
      O => vcount_6_XORG_483
    );
  vcount_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_6_CYMUXFAST_480,
      O => Mcount_vcount_cy(7)
    );
  vcount_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(5),
      O => vcount_6_FASTCARRY_478
    );
  vcount_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y7"
    )
    port map (
      I0 => vcount_6_CYSELG_466,
      I1 => vcount_6_CYSELF_481,
      O => vcount_6_CYAND_479
    );
  vcount_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y7"
    )
    port map (
      IA => vcount_6_CYMUXG2_477,
      IB => vcount_6_FASTCARRY_478,
      SEL => vcount_6_CYAND_479,
      O => vcount_6_CYMUXFAST_480
    );
  vcount_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y7"
    )
    port map (
      IA => vcount_6_LOGIC_ZERO_475,
      IB => vcount_6_CYMUXF2_476,
      SEL => vcount_6_CYSELG_466,
      O => vcount_6_CYMUXG2_477
    );
  vcount_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_6_G,
      O => vcount_6_CYSELG_466
    );
  vcount_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => vcount_6_SRINV_464
    );
  vcount_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_BUFGP,
      O => vcount_6_CLKINV_463
    );
  vcount_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y8"
    )
    port map (
      O => vcount_8_LOGIC_ZERO_527
    );
  vcount_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_8_XORF_552,
      O => vcount_8_DXMUX_554
    );
  vcount_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X19Y8"
    )
    port map (
      I0 => vcount_8_CYINIT_551,
      I1 => vcount_8_F,
      O => vcount_8_XORF_552
    );
  vcount_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y8"
    )
    port map (
      IA => vcount_8_LOGIC_ZERO_527,
      IB => vcount_8_CYINIT_551,
      SEL => vcount_8_CYSELF_533,
      O => Mcount_vcount_cy(8)
    );
  vcount_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y8"
    )
    port map (
      IA => vcount_8_LOGIC_ZERO_527,
      IB => vcount_8_LOGIC_ZERO_527,
      SEL => vcount_8_CYSELF_533,
      O => vcount_8_CYMUXF2_528
    );
  vcount_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(7),
      O => vcount_8_CYINIT_551
    );
  vcount_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_8_F,
      O => vcount_8_CYSELF_533
    );
  vcount_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_8_XORG_535,
      O => vcount_8_DYMUX_537
    );
  vcount_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X19Y8"
    )
    port map (
      I0 => Mcount_vcount_cy(8),
      I1 => vcount_8_G,
      O => vcount_8_XORG_535
    );
  vcount_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_8_CYMUXFAST_532,
      O => Mcount_vcount_cy(9)
    );
  vcount_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(7),
      O => vcount_8_FASTCARRY_530
    );
  vcount_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y8"
    )
    port map (
      I0 => vcount_8_CYSELG_518,
      I1 => vcount_8_CYSELF_533,
      O => vcount_8_CYAND_531
    );
  vcount_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y8"
    )
    port map (
      IA => vcount_8_CYMUXG2_529,
      IB => vcount_8_FASTCARRY_530,
      SEL => vcount_8_CYAND_531,
      O => vcount_8_CYMUXFAST_532
    );
  vcount_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y8"
    )
    port map (
      IA => vcount_8_LOGIC_ZERO_527,
      IB => vcount_8_CYMUXF2_528,
      SEL => vcount_8_CYSELG_518,
      O => vcount_8_CYMUXG2_529
    );
  vcount_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_8_G,
      O => vcount_8_CYSELG_518
    );
  vcount_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => vcount_8_SRINV_516
    );
  vcount_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_BUFGP,
      O => vcount_8_CLKINV_515
    );
  vcount_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y9"
    )
    port map (
      O => vcount_10_LOGIC_ZERO_579
    );
  vcount_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_10_XORF_604,
      O => vcount_10_DXMUX_606
    );
  vcount_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X19Y9"
    )
    port map (
      I0 => vcount_10_CYINIT_603,
      I1 => vcount_10_F,
      O => vcount_10_XORF_604
    );
  vcount_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y9"
    )
    port map (
      IA => vcount_10_LOGIC_ZERO_579,
      IB => vcount_10_CYINIT_603,
      SEL => vcount_10_CYSELF_585,
      O => Mcount_vcount_cy(10)
    );
  vcount_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y9"
    )
    port map (
      IA => vcount_10_LOGIC_ZERO_579,
      IB => vcount_10_LOGIC_ZERO_579,
      SEL => vcount_10_CYSELF_585,
      O => vcount_10_CYMUXF2_580
    );
  vcount_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(9),
      O => vcount_10_CYINIT_603
    );
  vcount_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_10_F,
      O => vcount_10_CYSELF_585
    );
  vcount_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_10_XORG_587,
      O => vcount_10_DYMUX_589
    );
  vcount_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X19Y9"
    )
    port map (
      I0 => Mcount_vcount_cy(10),
      I1 => vcount_10_G,
      O => vcount_10_XORG_587
    );
  vcount_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_10_CYMUXFAST_584,
      O => Mcount_vcount_cy(11)
    );
  vcount_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(9),
      O => vcount_10_FASTCARRY_582
    );
  vcount_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y9"
    )
    port map (
      I0 => vcount_10_CYSELG_570,
      I1 => vcount_10_CYSELF_585,
      O => vcount_10_CYAND_583
    );
  vcount_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y9"
    )
    port map (
      IA => vcount_10_CYMUXG2_581,
      IB => vcount_10_FASTCARRY_582,
      SEL => vcount_10_CYAND_583,
      O => vcount_10_CYMUXFAST_584
    );
  vcount_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y9"
    )
    port map (
      IA => vcount_10_LOGIC_ZERO_579,
      IB => vcount_10_CYMUXF2_580,
      SEL => vcount_10_CYSELG_570,
      O => vcount_10_CYMUXG2_581
    );
  vcount_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_10_G,
      O => vcount_10_CYSELG_570
    );
  vcount_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => vcount_10_SRINV_568
    );
  vcount_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_BUFGP,
      O => vcount_10_CLKINV_567
    );
  vcount_10 : X_SFF
    generic map(
      LOC => "SLICE_X19Y9",
      INIT => '0'
    )
    port map (
      I => vcount_10_DXMUX_606,
      CE => VCC,
      CLK => vcount_10_CLKINV_567,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_10_SRINV_568,
      O => vcount(10)
    );
  vcount_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X19Y10"
    )
    port map (
      O => vcount_12_LOGIC_ZERO_631
    );
  vcount_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_12_XORF_656,
      O => vcount_12_DXMUX_658
    );
  vcount_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X19Y10"
    )
    port map (
      I0 => vcount_12_CYINIT_655,
      I1 => vcount_12_F,
      O => vcount_12_XORF_656
    );
  vcount_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X19Y10"
    )
    port map (
      IA => vcount_12_LOGIC_ZERO_631,
      IB => vcount_12_CYINIT_655,
      SEL => vcount_12_CYSELF_637,
      O => Mcount_vcount_cy(12)
    );
  vcount_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y10"
    )
    port map (
      IA => vcount_12_LOGIC_ZERO_631,
      IB => vcount_12_LOGIC_ZERO_631,
      SEL => vcount_12_CYSELF_637,
      O => vcount_12_CYMUXF2_632
    );
  vcount_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(11),
      O => vcount_12_CYINIT_655
    );
  vcount_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_12_F,
      O => vcount_12_CYSELF_637
    );
  vcount_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_12_XORG_639,
      O => vcount_12_DYMUX_641
    );
  vcount_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X19Y10"
    )
    port map (
      I0 => Mcount_vcount_cy(12),
      I1 => vcount_12_G,
      O => vcount_12_XORG_639
    );
  vcount_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcount_vcount_cy(11),
      O => vcount_12_FASTCARRY_634
    );
  vcount_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X19Y10"
    )
    port map (
      I0 => vcount_12_CYSELG_622,
      I1 => vcount_12_CYSELF_637,
      O => vcount_12_CYAND_635
    );
  vcount_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X19Y10"
    )
    port map (
      IA => vcount_12_CYMUXG2_633,
      IB => vcount_12_FASTCARRY_634,
      SEL => vcount_12_CYAND_635,
      O => vcount_12_CYMUXFAST_636
    );
  vcount_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X19Y10"
    )
    port map (
      IA => vcount_12_LOGIC_ZERO_631,
      IB => vcount_12_CYMUXF2_632,
      SEL => vcount_12_CYSELG_622,
      O => vcount_12_CYMUXG2_633
    );
  vcount_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_12_G,
      O => vcount_12_CYSELG_622
    );
  vcount_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => vcount_12_SRINV_620
    );
  vcount_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y10",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_BUFGP,
      O => vcount_12_CLKINV_619
    );
  vcount_12 : X_SFF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      I => vcount_12_DXMUX_658,
      CE => VCC,
      CLK => vcount_12_CLKINV_619,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_12_SRINV_620,
      O => vcount(12)
    );
  vcount_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X19Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_14_XORF_680,
      O => vcount_14_DXMUX_682
    );
  vcount_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X19Y11"
    )
    port map (
      I0 => vcount_14_CYINIT_679,
      I1 => vcount_14_rt_677,
      O => vcount_14_XORF_680
    );
  vcount_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X19Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => vcount_12_CYMUXFAST_636,
      O => vcount_14_CYINIT_679
    );
  vcount_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => vcount_14_SRINV_669
    );
  vcount_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X19Y11",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_BUFGP,
      O => vcount_14_CLKINV_668
    );
  clk_50M_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M,
      O => clk_50M_INBUF
    );
  clk_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD133"
    )
    port map (
      I => clk_out_O,
      O => clk_out
    );
  clk_50M_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX0"
    )
    port map (
      I0 => clk_50M_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clk_50M_BUFGP_BUFG_S_INVNOT,
      O => clk_50M_BUFGP
    );
  clk_50M_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => clk_50M_BUFGP_BUFG_S_INVNOT
    );
  clk_50M_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX0",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_INBUF,
      O => clk_50M_BUFGP_BUFG_I0_INV
    );
  clk_out_int_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_out_int_193,
      O => clk_out_int_DYMUX_713
    );
  clk_out_int_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_50M_BUFGP,
      O => clk_out_int_CLKINV_711
    );
  clk_out_int_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X18Y0",
      PATHPULSE => 605 ps
    )
    port map (
      I => Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => clk_out_int_CEINV_710
    );
  vcount_3_rt : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X18Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vcount(3),
      ADR3 => VCC,
      O => vcount_3_rt_212
    );
  vcount_0 : X_SFF
    generic map(
      LOC => "SLICE_X19Y4",
      INIT => '0'
    )
    port map (
      I => vcount_0_DXMUX_346,
      CE => VCC,
      CLK => vcount_0_CLKINV_309,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_0_SRINV_310,
      O => vcount(0)
    );
  vcount_9 : X_SFF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      I => vcount_8_DYMUX_537,
      CE => VCC,
      CLK => vcount_8_CLKINV_515,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_8_SRINV_516,
      O => vcount(9)
    );
  clk_out_int : X_FF
    generic map(
      LOC => "SLICE_X18Y0",
      INIT => '0'
    )
    port map (
      I => clk_out_int_DYMUX_713,
      CE => clk_out_int_CEINV_710,
      CLK => clk_out_int_CLKINV_711,
      SET => GND,
      RST => GND,
      O => clk_out_int_193
    );
  Mcompar_clk_out_int_cmp_lt0000_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"0F0F",
      LOC => "SLICE_X18Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vcount(4),
      ADR3 => VCC,
      O => Mcompar_clk_out_int_cmp_lt0000_lut_1_Q
    );
  Mcompar_clk_out_int_cmp_lt0000_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X18Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vcount(6),
      O => Mcompar_clk_out_int_cmp_lt0000_lut_3_Q
    );
  vcount_5_rt : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X18Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vcount(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vcount_5_rt_245
    );
  Mcompar_clk_out_int_cmp_lt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X18Y8"
    )
    port map (
      ADR0 => vcount(12),
      ADR1 => vcount(9),
      ADR2 => vcount(10),
      ADR3 => vcount(11),
      O => Mcompar_clk_out_int_cmp_lt0000_lut_5_Q_263
    );
  vcount_1 : X_SFF
    generic map(
      LOC => "SLICE_X19Y4",
      INIT => '0'
    )
    port map (
      I => vcount_0_DYMUX_326,
      CE => VCC,
      CLK => vcount_0_CLKINV_309,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_0_SRINV_310,
      O => vcount(1)
    );
  Mcount_vcount_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X19Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vcount(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Mcount_vcount_lut(0)
    );
  vcount_3 : X_SFF
    generic map(
      LOC => "SLICE_X19Y5",
      INIT => '0'
    )
    port map (
      I => vcount_2_DYMUX_381,
      CE => VCC,
      CLK => vcount_2_CLKINV_359,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_2_SRINV_360,
      O => vcount(3)
    );
  vcount_5 : X_SFF
    generic map(
      LOC => "SLICE_X19Y6",
      INIT => '0'
    )
    port map (
      I => vcount_4_DYMUX_433,
      CE => VCC,
      CLK => vcount_4_CLKINV_411,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_4_SRINV_412,
      O => vcount(5)
    );
  vcount_6 : X_SFF
    generic map(
      LOC => "SLICE_X19Y7",
      INIT => '0'
    )
    port map (
      I => vcount_6_DXMUX_502,
      CE => VCC,
      CLK => vcount_6_CLKINV_463,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_6_SRINV_464,
      O => vcount(6)
    );
  vcount_8 : X_SFF
    generic map(
      LOC => "SLICE_X19Y8",
      INIT => '0'
    )
    port map (
      I => vcount_8_DXMUX_554,
      CE => VCC,
      CLK => vcount_8_CLKINV_515,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_8_SRINV_516,
      O => vcount(8)
    );
  vcount_11 : X_SFF
    generic map(
      LOC => "SLICE_X19Y9",
      INIT => '0'
    )
    port map (
      I => vcount_10_DYMUX_589,
      CE => VCC,
      CLK => vcount_10_CLKINV_567,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_10_SRINV_568,
      O => vcount(11)
    );
  vcount_13 : X_SFF
    generic map(
      LOC => "SLICE_X19Y10",
      INIT => '0'
    )
    port map (
      I => vcount_12_DYMUX_641,
      CE => VCC,
      CLK => vcount_12_CLKINV_619,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_12_SRINV_620,
      O => vcount(13)
    );
  vcount_14_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X19Y11"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vcount(14),
      O => vcount_14_rt_677
    );
  vcount_14 : X_SFF
    generic map(
      LOC => "SLICE_X19Y11",
      INIT => '0'
    )
    port map (
      I => vcount_14_DXMUX_682,
      CE => VCC,
      CLK => vcount_14_CLKINV_668,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => vcount_14_SRINV_669,
      O => vcount(14)
    );
  vcount_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X19Y4"
    )
    port map (
      ADR0 => vcount(1),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vcount_0_G
    );
  vcount_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X19Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vcount(2),
      O => vcount_2_F
    );
  vcount_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X19Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vcount(3),
      ADR3 => VCC,
      O => vcount_2_G
    );
  vcount_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X19Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vcount(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vcount_4_F
    );
  vcount_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X19Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vcount(5),
      ADR3 => VCC,
      O => vcount_4_G
    );
  vcount_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X19Y7"
    )
    port map (
      ADR0 => vcount(6),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vcount_6_F
    );
  vcount_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X19Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vcount(7),
      O => vcount_6_G
    );
  vcount_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X19Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => vcount(8),
      O => vcount_8_F
    );
  vcount_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X19Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => vcount(9),
      ADR3 => VCC,
      O => vcount_8_G
    );
  vcount_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X19Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vcount(10),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vcount_10_F
    );
  vcount_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X19Y9"
    )
    port map (
      ADR0 => vcount(11),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vcount_10_G
    );
  vcount_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X19Y10"
    )
    port map (
      ADR0 => VCC,
      ADR1 => vcount(12),
      ADR2 => VCC,
      ADR3 => VCC,
      O => vcount_12_F
    );
  vcount_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X19Y10"
    )
    port map (
      ADR0 => vcount(13),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => vcount_12_G
    );
  clk_out_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD133",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_out_int_193,
      O => clk_out_O
    );
  NlwBlock_clk_divider_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_clk_divider_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

