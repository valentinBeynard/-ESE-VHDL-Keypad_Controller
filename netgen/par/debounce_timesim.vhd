--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: debounce_timesim.vhd
-- /___/   /\     Timestamp: Fri Feb 15 11:36:47 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf debounce.pcf -rpw 100 -tpw 0 -ar Structure -tm debounce -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim debounce.ncd debounce_timesim.vhd 
-- Device	: 3s200ft256-4 (PRODUCTION 1.39 2013-06-08)
-- Input file	: debounce.ncd
-- Output file	: C:\Users\valentin.beynard\Documents\ESE_VHDL\Keyboard_controller\netgen\par\debounce_timesim.vhd
-- # of Entities	: 1
-- Design Name	: debounce
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

entity debounce is
  port (
    clk : in STD_LOGIC := 'X'; 
    sw_out : out STD_LOGIC; 
    reset : in STD_LOGIC := 'X'; 
    sw_debounce : out STD_LOGIC; 
    sw : in STD_LOGIC := 'X' 
  );
end debounce;

architecture Structure of debounce is
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal sw_out_OBUF_324 : STD_LOGIC; 
  signal reset_IBUF_325 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In12 : STD_LOGIC; 
  signal U1_m_tick_1_not0001_0 : STD_LOGIC; 
  signal U0_clk_out_int_335 : STD_LOGIC; 
  signal U1_m_tick_1_or0000_0 : STD_LOGIC; 
  signal U1_Mcount_m_tick_1_cy_2_11_O : STD_LOGIC; 
  signal U1_m_tick_0_not0001_0 : STD_LOGIC; 
  signal U1_m_tick_0_or0000_0 : STD_LOGIC; 
  signal U1_Mcount_m_tick_0_cy_2_11_O : STD_LOGIC; 
  signal U1_current_state_FSM_FFd1_346 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In60_0 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_348 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In15_349 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In49_350 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ZERO_380 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYINIT_379 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELF_370 : STD_LOGIC; 
  signal U0_vcount_3_rt_369 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_BXINV_368 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXG_367 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_0_Q : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ONE_365 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELG_356 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_lut_1_Q : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO_411 : STD_LOGIC; 
  signal U0_vcount_5_rt_402 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF_401 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXFAST_400 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYAND_399 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_FASTCARRY_398 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXG2_397 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXF2_396 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ONE_395 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG_386 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_lut_3_Q : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO_442 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_lut_4_Q_434 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF_433 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXFAST_432 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYAND_431 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_FASTCARRY_430 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXG2_429 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXF2_428 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ONE_427 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG_421 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_lut_5_Q_420 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_LOGIC_ZERO_457 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_CYINIT_456 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_CYSELF_448 : STD_LOGIC; 
  signal U0_Mcompar_clk_out_int_cmp_lt0000_lut_6_Q_447 : STD_LOGIC; 
  signal U0_vcount_0_DXMUX_503 : STD_LOGIC; 
  signal U0_vcount_0_XORF_501 : STD_LOGIC; 
  signal U0_vcount_0_LOGIC_ONE_500 : STD_LOGIC; 
  signal U0_vcount_0_CYINIT_499 : STD_LOGIC; 
  signal U0_vcount_0_CYSELF_490 : STD_LOGIC; 
  signal U0_vcount_0_BXINV_488 : STD_LOGIC; 
  signal U0_vcount_0_DYMUX_483 : STD_LOGIC; 
  signal U0_vcount_0_XORG_481 : STD_LOGIC; 
  signal U0_vcount_0_CYMUXG_480 : STD_LOGIC; 
  signal U0_vcount_0_LOGIC_ZERO_478 : STD_LOGIC; 
  signal U0_vcount_0_CYSELG_469 : STD_LOGIC; 
  signal U0_vcount_0_G : STD_LOGIC; 
  signal U0_vcount_0_SRINV_467 : STD_LOGIC; 
  signal U0_vcount_0_CLKINV_466 : STD_LOGIC; 
  signal U0_vcount_2_DXMUX_555 : STD_LOGIC; 
  signal U0_vcount_2_XORF_553 : STD_LOGIC; 
  signal U0_vcount_2_CYINIT_552 : STD_LOGIC; 
  signal U0_vcount_2_F : STD_LOGIC; 
  signal U0_vcount_2_DYMUX_538 : STD_LOGIC; 
  signal U0_vcount_2_XORG_536 : STD_LOGIC; 
  signal U0_vcount_2_CYSELF_534 : STD_LOGIC; 
  signal U0_vcount_2_CYMUXFAST_533 : STD_LOGIC; 
  signal U0_vcount_2_CYAND_532 : STD_LOGIC; 
  signal U0_vcount_2_FASTCARRY_531 : STD_LOGIC; 
  signal U0_vcount_2_CYMUXG2_530 : STD_LOGIC; 
  signal U0_vcount_2_CYMUXF2_529 : STD_LOGIC; 
  signal U0_vcount_2_LOGIC_ZERO_528 : STD_LOGIC; 
  signal U0_vcount_2_CYSELG_519 : STD_LOGIC; 
  signal U0_vcount_2_G : STD_LOGIC; 
  signal U0_vcount_2_SRINV_517 : STD_LOGIC; 
  signal U0_vcount_2_CLKINV_516 : STD_LOGIC; 
  signal U0_vcount_4_DXMUX_607 : STD_LOGIC; 
  signal U0_vcount_4_XORF_605 : STD_LOGIC; 
  signal U0_vcount_4_CYINIT_604 : STD_LOGIC; 
  signal U0_vcount_4_F : STD_LOGIC; 
  signal U0_vcount_4_DYMUX_590 : STD_LOGIC; 
  signal U0_vcount_4_XORG_588 : STD_LOGIC; 
  signal U0_vcount_4_CYSELF_586 : STD_LOGIC; 
  signal U0_vcount_4_CYMUXFAST_585 : STD_LOGIC; 
  signal U0_vcount_4_CYAND_584 : STD_LOGIC; 
  signal U0_vcount_4_FASTCARRY_583 : STD_LOGIC; 
  signal U0_vcount_4_CYMUXG2_582 : STD_LOGIC; 
  signal U0_vcount_4_CYMUXF2_581 : STD_LOGIC; 
  signal U0_vcount_4_LOGIC_ZERO_580 : STD_LOGIC; 
  signal U0_vcount_4_CYSELG_571 : STD_LOGIC; 
  signal U0_vcount_4_G : STD_LOGIC; 
  signal U0_vcount_4_SRINV_569 : STD_LOGIC; 
  signal U0_vcount_4_CLKINV_568 : STD_LOGIC; 
  signal U0_vcount_6_DXMUX_659 : STD_LOGIC; 
  signal U0_vcount_6_XORF_657 : STD_LOGIC; 
  signal U0_vcount_6_CYINIT_656 : STD_LOGIC; 
  signal U0_vcount_6_F : STD_LOGIC; 
  signal U0_vcount_6_DYMUX_642 : STD_LOGIC; 
  signal U0_vcount_6_XORG_640 : STD_LOGIC; 
  signal U0_vcount_6_CYSELF_638 : STD_LOGIC; 
  signal U0_vcount_6_CYMUXFAST_637 : STD_LOGIC; 
  signal U0_vcount_6_CYAND_636 : STD_LOGIC; 
  signal U0_vcount_6_FASTCARRY_635 : STD_LOGIC; 
  signal U0_vcount_6_CYMUXG2_634 : STD_LOGIC; 
  signal U0_vcount_6_CYMUXF2_633 : STD_LOGIC; 
  signal U0_vcount_6_LOGIC_ZERO_632 : STD_LOGIC; 
  signal U0_vcount_6_CYSELG_623 : STD_LOGIC; 
  signal U0_vcount_6_G : STD_LOGIC; 
  signal U0_vcount_6_SRINV_621 : STD_LOGIC; 
  signal U0_vcount_6_CLKINV_620 : STD_LOGIC; 
  signal U0_vcount_8_DXMUX_711 : STD_LOGIC; 
  signal U0_vcount_8_XORF_709 : STD_LOGIC; 
  signal U0_vcount_8_CYINIT_708 : STD_LOGIC; 
  signal U0_vcount_8_F : STD_LOGIC; 
  signal U0_vcount_8_DYMUX_694 : STD_LOGIC; 
  signal U0_vcount_8_XORG_692 : STD_LOGIC; 
  signal U0_vcount_8_CYSELF_690 : STD_LOGIC; 
  signal U0_vcount_8_CYMUXFAST_689 : STD_LOGIC; 
  signal U0_vcount_8_CYAND_688 : STD_LOGIC; 
  signal U0_vcount_8_FASTCARRY_687 : STD_LOGIC; 
  signal U0_vcount_8_CYMUXG2_686 : STD_LOGIC; 
  signal U0_vcount_8_CYMUXF2_685 : STD_LOGIC; 
  signal U0_vcount_8_LOGIC_ZERO_684 : STD_LOGIC; 
  signal U0_vcount_8_CYSELG_675 : STD_LOGIC; 
  signal U0_vcount_8_G : STD_LOGIC; 
  signal U0_vcount_8_SRINV_673 : STD_LOGIC; 
  signal U0_vcount_8_CLKINV_672 : STD_LOGIC; 
  signal U0_vcount_10_DXMUX_763 : STD_LOGIC; 
  signal U0_vcount_10_XORF_761 : STD_LOGIC; 
  signal U0_vcount_10_CYINIT_760 : STD_LOGIC; 
  signal U0_vcount_10_F : STD_LOGIC; 
  signal U0_vcount_10_DYMUX_746 : STD_LOGIC; 
  signal U0_vcount_10_XORG_744 : STD_LOGIC; 
  signal U0_vcount_10_CYSELF_742 : STD_LOGIC; 
  signal U0_vcount_10_CYMUXFAST_741 : STD_LOGIC; 
  signal U0_vcount_10_CYAND_740 : STD_LOGIC; 
  signal U0_vcount_10_FASTCARRY_739 : STD_LOGIC; 
  signal U0_vcount_10_CYMUXG2_738 : STD_LOGIC; 
  signal U0_vcount_10_CYMUXF2_737 : STD_LOGIC; 
  signal U0_vcount_10_LOGIC_ZERO_736 : STD_LOGIC; 
  signal U0_vcount_10_CYSELG_727 : STD_LOGIC; 
  signal U0_vcount_10_G : STD_LOGIC; 
  signal U0_vcount_10_SRINV_725 : STD_LOGIC; 
  signal U0_vcount_10_CLKINV_724 : STD_LOGIC; 
  signal U0_vcount_12_DXMUX_815 : STD_LOGIC; 
  signal U0_vcount_12_XORF_813 : STD_LOGIC; 
  signal U0_vcount_12_CYINIT_812 : STD_LOGIC; 
  signal U0_vcount_12_F : STD_LOGIC; 
  signal U0_vcount_12_DYMUX_798 : STD_LOGIC; 
  signal U0_vcount_12_XORG_796 : STD_LOGIC; 
  signal U0_vcount_12_CYSELF_794 : STD_LOGIC; 
  signal U0_vcount_12_CYMUXFAST_793 : STD_LOGIC; 
  signal U0_vcount_12_CYAND_792 : STD_LOGIC; 
  signal U0_vcount_12_FASTCARRY_791 : STD_LOGIC; 
  signal U0_vcount_12_CYMUXG2_790 : STD_LOGIC; 
  signal U0_vcount_12_CYMUXF2_789 : STD_LOGIC; 
  signal U0_vcount_12_LOGIC_ZERO_788 : STD_LOGIC; 
  signal U0_vcount_12_CYSELG_779 : STD_LOGIC; 
  signal U0_vcount_12_G : STD_LOGIC; 
  signal U0_vcount_12_SRINV_777 : STD_LOGIC; 
  signal U0_vcount_12_CLKINV_776 : STD_LOGIC; 
  signal U0_vcount_14_DXMUX_839 : STD_LOGIC; 
  signal U0_vcount_14_XORF_837 : STD_LOGIC; 
  signal U0_vcount_14_CYINIT_836 : STD_LOGIC; 
  signal U0_vcount_14_rt_834 : STD_LOGIC; 
  signal U0_vcount_14_SRINV_826 : STD_LOGIC; 
  signal U0_vcount_14_CLKINV_825 : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal sw_INBUF : STD_LOGIC; 
  signal sw_out_O : STD_LOGIC; 
  signal reset_INBUF : STD_LOGIC; 
  signal sw_debounce_O : STD_LOGIC; 
  signal sw_debounce_OUTPUT_OFF_O1INV_881 : STD_LOGIC; 
  signal U1_debounce_sw_884 : STD_LOGIC; 
  signal sw_debounce_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In12_F5MUX_914 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In121_912 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In12_BXINV_907 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In12_G : STD_LOGIC; 
  signal U1_m_tick_1_4_FFX_RST : STD_LOGIC; 
  signal U1_m_tick_1_4_DXMUX_946 : STD_LOGIC; 
  signal U1_Mcount_m_tick_1_cy_2_11_O_pack_2 : STD_LOGIC; 
  signal U1_m_tick_1_4_CLKINV_928 : STD_LOGIC; 
  signal U1_m_tick_1_4_CEINV_927 : STD_LOGIC; 
  signal U1_m_tick_0_4_DXMUX_984 : STD_LOGIC; 
  signal U1_Result_4_1 : STD_LOGIC; 
  signal U1_Mcount_m_tick_0_cy_2_11_O_pack_2 : STD_LOGIC; 
  signal U1_m_tick_0_4_CLKINV_966 : STD_LOGIC; 
  signal U1_m_tick_0_4_CEINV_965 : STD_LOGIC; 
  signal U1_m_tick_0_3_DXMUX_1030 : STD_LOGIC; 
  signal U1_Result_3_1 : STD_LOGIC; 
  signal U1_m_tick_0_3_DYMUX_1015 : STD_LOGIC; 
  signal U1_Result_2_1 : STD_LOGIC; 
  signal U1_m_tick_0_3_SRINV_1006 : STD_LOGIC; 
  signal U1_m_tick_0_3_CLKINV_1005 : STD_LOGIC; 
  signal U1_m_tick_0_3_CEINV_1004 : STD_LOGIC; 
  signal U1_m_tick_1_3_DXMUX_1076 : STD_LOGIC; 
  signal U1_m_tick_1_3_DYMUX_1061 : STD_LOGIC; 
  signal U1_m_tick_1_3_SRINV_1052 : STD_LOGIC; 
  signal U1_m_tick_1_3_CLKINV_1051 : STD_LOGIC; 
  signal U1_m_tick_1_3_CEINV_1050 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_DXMUX_1122 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_DYMUX_1108 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In15_pack_4 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_SRINV_1097 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_CLKINV_1096 : STD_LOGIC; 
  signal U1_m_tick_0_0_DXMUX_1158 : STD_LOGIC; 
  signal U1_m_tick_0_0_DYMUX_1149 : STD_LOGIC; 
  signal U1_Result_1_1 : STD_LOGIC; 
  signal U1_m_tick_0_0_SRINV_1139 : STD_LOGIC; 
  signal U1_m_tick_0_0_CLKINV_1138 : STD_LOGIC; 
  signal U1_m_tick_0_0_CEINV_1137 : STD_LOGIC; 
  signal U1_m_tick_0_or0000 : STD_LOGIC; 
  signal U1_m_tick_1_or0000 : STD_LOGIC; 
  signal U1_m_tick_1_0_DXMUX_1219 : STD_LOGIC; 
  signal U1_m_tick_1_0_DYMUX_1210 : STD_LOGIC; 
  signal U1_m_tick_1_0_SRINV_1200 : STD_LOGIC; 
  signal U1_m_tick_1_0_CLKINV_1199 : STD_LOGIC; 
  signal U1_m_tick_1_0_CEINV_1198 : STD_LOGIC; 
  signal U1_debounce_sw_or0000 : STD_LOGIC; 
  signal U1_m_tick_0_not0001 : STD_LOGIC; 
  signal U1_current_state_cmp_eq0005 : STD_LOGIC; 
  signal U1_m_tick_1_not0001 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In60_1296 : STD_LOGIC; 
  signal U1_current_state_FSM_FFd2_In49_pack_1 : STD_LOGIC; 
  signal U0_clk_out_int_DYMUX_1306 : STD_LOGIC; 
  signal U0_clk_out_int_CLKINV_1304 : STD_LOGIC; 
  signal U0_clk_out_int_CEINV_1303 : STD_LOGIC; 
  signal U1_m_tick_0_4_FFX_RSTAND_990 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NlwInverterSignal_U1_debounce_sw_CLK : STD_LOGIC; 
  signal U0_vcount : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U0_Mcount_vcount_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal U1_m_tick_0 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U1_m_tick_1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_Mcount_vcount_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U1_Result : STD_LOGIC_VECTOR ( 4 downto 1 ); 
begin
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X21Y4"
    )
    port map (
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ONE_365
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y4"
    )
    port map (
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ZERO_380
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X21Y4"
    )
    port map (
      IA => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ZERO_380,
      IB => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYINIT_379,
      SEL => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELF_370,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_0_Q
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X21Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_BXINV_368,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYINIT_379
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_3_rt_369,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELF_370
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X21Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => '1',
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_BXINV_368
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X21Y4"
    )
    port map (
      IA => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_LOGIC_ONE_365,
      IB => U0_Mcompar_clk_out_int_cmp_lt0000_cy_0_Q,
      SEL => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELG_356,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXG_367
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_lut_1_Q,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYSELG_356
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X21Y5"
    )
    port map (
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ONE_395
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y5"
    )
    port map (
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO_411
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y5"
    )
    port map (
      IA => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO_411,
      IB => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ZERO_411,
      SEL => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF_401,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXF2_396
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_5_rt_402,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF_401
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X21Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_1_CYMUXG_367,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_FASTCARRY_398
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X21Y5"
    )
    port map (
      I0 => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG_386,
      I1 => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELF_401,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYAND_399
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X21Y5"
    )
    port map (
      IA => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXG2_397,
      IB => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_FASTCARRY_398,
      SEL => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYAND_399,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXFAST_400
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y5"
    )
    port map (
      IA => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_LOGIC_ONE_395,
      IB => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXF2_396,
      SEL => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG_386,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXG2_397
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_lut_3_Q,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYSELG_386
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X21Y6"
    )
    port map (
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ONE_427
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y6"
    )
    port map (
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO_442
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y6"
    )
    port map (
      IA => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO_442,
      IB => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ZERO_442,
      SEL => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF_433,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXF2_428
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_lut_4_Q_434,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF_433
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X21Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_3_CYMUXFAST_400,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_FASTCARRY_430
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X21Y6"
    )
    port map (
      I0 => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG_421,
      I1 => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELF_433,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYAND_431
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X21Y6"
    )
    port map (
      IA => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXG2_429,
      IB => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_FASTCARRY_430,
      SEL => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYAND_431,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXFAST_432
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X21Y6"
    )
    port map (
      IA => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_LOGIC_ONE_427,
      IB => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXF2_428,
      SEL => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG_421,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXG2_429
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X21Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_lut_5_Q_420,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYSELG_421
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X21Y7"
    )
    port map (
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_LOGIC_ZERO_457
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X21Y7"
    )
    port map (
      IA => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_LOGIC_ZERO_457,
      IB => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_CYINIT_456,
      SEL => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_CYSELF_448,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X21Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_5_CYMUXFAST_432,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_CYINIT_456
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X21Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_lut_6_Q_447,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_CYSELF_448
    );
  U0_vcount_0_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      O => U0_vcount_0_LOGIC_ZERO_478
    );
  U0_vcount_0_LOGIC_ONE : X_ONE
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      O => U0_vcount_0_LOGIC_ONE_500
    );
  U0_vcount_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_0_XORF_501,
      O => U0_vcount_0_DXMUX_503
    );
  U0_vcount_0_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      I0 => U0_vcount_0_CYINIT_499,
      I1 => U0_Mcount_vcount_lut(0),
      O => U0_vcount_0_XORF_501
    );
  U0_vcount_0_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      IA => U0_vcount_0_LOGIC_ONE_500,
      IB => U0_vcount_0_CYINIT_499,
      SEL => U0_vcount_0_CYSELF_490,
      O => U0_Mcount_vcount_cy(0)
    );
  U0_vcount_0_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_0_BXINV_488,
      O => U0_vcount_0_CYINIT_499
    );
  U0_vcount_0_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_lut(0),
      O => U0_vcount_0_CYSELF_490
    );
  U0_vcount_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => '0',
      O => U0_vcount_0_BXINV_488
    );
  U0_vcount_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_0_XORG_481,
      O => U0_vcount_0_DYMUX_483
    );
  U0_vcount_0_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      I0 => U0_Mcount_vcount_cy(0),
      I1 => U0_vcount_0_G,
      O => U0_vcount_0_XORG_481
    );
  U0_vcount_0_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_0_CYMUXG_480,
      O => U0_Mcount_vcount_cy(1)
    );
  U0_vcount_0_CYMUXG : X_MUX2
    generic map(
      LOC => "SLICE_X20Y2"
    )
    port map (
      IA => U0_vcount_0_LOGIC_ZERO_478,
      IB => U0_Mcount_vcount_cy(0),
      SEL => U0_vcount_0_CYSELG_469,
      O => U0_vcount_0_CYMUXG_480
    );
  U0_vcount_0_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_0_G,
      O => U0_vcount_0_CYSELG_469
    );
  U0_vcount_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => U0_vcount_0_SRINV_467
    );
  U0_vcount_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y2",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_vcount_0_CLKINV_466
    );
  U0_vcount_2_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      O => U0_vcount_2_LOGIC_ZERO_528
    );
  U0_vcount_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_2_XORF_553,
      O => U0_vcount_2_DXMUX_555
    );
  U0_vcount_2_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      I0 => U0_vcount_2_CYINIT_552,
      I1 => U0_vcount_2_F,
      O => U0_vcount_2_XORF_553
    );
  U0_vcount_2_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      IA => U0_vcount_2_LOGIC_ZERO_528,
      IB => U0_vcount_2_CYINIT_552,
      SEL => U0_vcount_2_CYSELF_534,
      O => U0_Mcount_vcount_cy(2)
    );
  U0_vcount_2_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      IA => U0_vcount_2_LOGIC_ZERO_528,
      IB => U0_vcount_2_LOGIC_ZERO_528,
      SEL => U0_vcount_2_CYSELF_534,
      O => U0_vcount_2_CYMUXF2_529
    );
  U0_vcount_2_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(1),
      O => U0_vcount_2_CYINIT_552
    );
  U0_vcount_2_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_2_F,
      O => U0_vcount_2_CYSELF_534
    );
  U0_vcount_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_2_XORG_536,
      O => U0_vcount_2_DYMUX_538
    );
  U0_vcount_2_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      I0 => U0_Mcount_vcount_cy(2),
      I1 => U0_vcount_2_G,
      O => U0_vcount_2_XORG_536
    );
  U0_vcount_2_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_2_CYMUXFAST_533,
      O => U0_Mcount_vcount_cy(3)
    );
  U0_vcount_2_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(1),
      O => U0_vcount_2_FASTCARRY_531
    );
  U0_vcount_2_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      I0 => U0_vcount_2_CYSELG_519,
      I1 => U0_vcount_2_CYSELF_534,
      O => U0_vcount_2_CYAND_532
    );
  U0_vcount_2_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      IA => U0_vcount_2_CYMUXG2_530,
      IB => U0_vcount_2_FASTCARRY_531,
      SEL => U0_vcount_2_CYAND_532,
      O => U0_vcount_2_CYMUXFAST_533
    );
  U0_vcount_2_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y3"
    )
    port map (
      IA => U0_vcount_2_LOGIC_ZERO_528,
      IB => U0_vcount_2_CYMUXF2_529,
      SEL => U0_vcount_2_CYSELG_519,
      O => U0_vcount_2_CYMUXG2_530
    );
  U0_vcount_2_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_2_G,
      O => U0_vcount_2_CYSELG_519
    );
  U0_vcount_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => U0_vcount_2_SRINV_517
    );
  U0_vcount_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y3",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_vcount_2_CLKINV_516
    );
  U0_vcount_4_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      O => U0_vcount_4_LOGIC_ZERO_580
    );
  U0_vcount_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_4_XORF_605,
      O => U0_vcount_4_DXMUX_607
    );
  U0_vcount_4_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      I0 => U0_vcount_4_CYINIT_604,
      I1 => U0_vcount_4_F,
      O => U0_vcount_4_XORF_605
    );
  U0_vcount_4_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      IA => U0_vcount_4_LOGIC_ZERO_580,
      IB => U0_vcount_4_CYINIT_604,
      SEL => U0_vcount_4_CYSELF_586,
      O => U0_Mcount_vcount_cy(4)
    );
  U0_vcount_4_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      IA => U0_vcount_4_LOGIC_ZERO_580,
      IB => U0_vcount_4_LOGIC_ZERO_580,
      SEL => U0_vcount_4_CYSELF_586,
      O => U0_vcount_4_CYMUXF2_581
    );
  U0_vcount_4_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(3),
      O => U0_vcount_4_CYINIT_604
    );
  U0_vcount_4_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_4_F,
      O => U0_vcount_4_CYSELF_586
    );
  U0_vcount_4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_4_XORG_588,
      O => U0_vcount_4_DYMUX_590
    );
  U0_vcount_4_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      I0 => U0_Mcount_vcount_cy(4),
      I1 => U0_vcount_4_G,
      O => U0_vcount_4_XORG_588
    );
  U0_vcount_4_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_4_CYMUXFAST_585,
      O => U0_Mcount_vcount_cy(5)
    );
  U0_vcount_4_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(3),
      O => U0_vcount_4_FASTCARRY_583
    );
  U0_vcount_4_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      I0 => U0_vcount_4_CYSELG_571,
      I1 => U0_vcount_4_CYSELF_586,
      O => U0_vcount_4_CYAND_584
    );
  U0_vcount_4_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      IA => U0_vcount_4_CYMUXG2_582,
      IB => U0_vcount_4_FASTCARRY_583,
      SEL => U0_vcount_4_CYAND_584,
      O => U0_vcount_4_CYMUXFAST_585
    );
  U0_vcount_4_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y4"
    )
    port map (
      IA => U0_vcount_4_LOGIC_ZERO_580,
      IB => U0_vcount_4_CYMUXF2_581,
      SEL => U0_vcount_4_CYSELG_571,
      O => U0_vcount_4_CYMUXG2_582
    );
  U0_vcount_4_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_4_G,
      O => U0_vcount_4_CYSELG_571
    );
  U0_vcount_4_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => U0_vcount_4_SRINV_569
    );
  U0_vcount_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y4",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_vcount_4_CLKINV_568
    );
  U0_vcount_6_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      O => U0_vcount_6_LOGIC_ZERO_632
    );
  U0_vcount_6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_6_XORF_657,
      O => U0_vcount_6_DXMUX_659
    );
  U0_vcount_6_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      I0 => U0_vcount_6_CYINIT_656,
      I1 => U0_vcount_6_F,
      O => U0_vcount_6_XORF_657
    );
  U0_vcount_6_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      IA => U0_vcount_6_LOGIC_ZERO_632,
      IB => U0_vcount_6_CYINIT_656,
      SEL => U0_vcount_6_CYSELF_638,
      O => U0_Mcount_vcount_cy(6)
    );
  U0_vcount_6_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      IA => U0_vcount_6_LOGIC_ZERO_632,
      IB => U0_vcount_6_LOGIC_ZERO_632,
      SEL => U0_vcount_6_CYSELF_638,
      O => U0_vcount_6_CYMUXF2_633
    );
  U0_vcount_6_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(5),
      O => U0_vcount_6_CYINIT_656
    );
  U0_vcount_6_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_6_F,
      O => U0_vcount_6_CYSELF_638
    );
  U0_vcount_6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_6_XORG_640,
      O => U0_vcount_6_DYMUX_642
    );
  U0_vcount_6_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      I0 => U0_Mcount_vcount_cy(6),
      I1 => U0_vcount_6_G,
      O => U0_vcount_6_XORG_640
    );
  U0_vcount_6_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_6_CYMUXFAST_637,
      O => U0_Mcount_vcount_cy(7)
    );
  U0_vcount_6_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(5),
      O => U0_vcount_6_FASTCARRY_635
    );
  U0_vcount_6_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      I0 => U0_vcount_6_CYSELG_623,
      I1 => U0_vcount_6_CYSELF_638,
      O => U0_vcount_6_CYAND_636
    );
  U0_vcount_6_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      IA => U0_vcount_6_CYMUXG2_634,
      IB => U0_vcount_6_FASTCARRY_635,
      SEL => U0_vcount_6_CYAND_636,
      O => U0_vcount_6_CYMUXFAST_637
    );
  U0_vcount_6_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y5"
    )
    port map (
      IA => U0_vcount_6_LOGIC_ZERO_632,
      IB => U0_vcount_6_CYMUXF2_633,
      SEL => U0_vcount_6_CYSELG_623,
      O => U0_vcount_6_CYMUXG2_634
    );
  U0_vcount_6_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_6_G,
      O => U0_vcount_6_CYSELG_623
    );
  U0_vcount_6_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => U0_vcount_6_SRINV_621
    );
  U0_vcount_6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y5",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_vcount_6_CLKINV_620
    );
  U0_vcount_8_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      O => U0_vcount_8_LOGIC_ZERO_684
    );
  U0_vcount_8_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_8_XORF_709,
      O => U0_vcount_8_DXMUX_711
    );
  U0_vcount_8_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      I0 => U0_vcount_8_CYINIT_708,
      I1 => U0_vcount_8_F,
      O => U0_vcount_8_XORF_709
    );
  U0_vcount_8_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      IA => U0_vcount_8_LOGIC_ZERO_684,
      IB => U0_vcount_8_CYINIT_708,
      SEL => U0_vcount_8_CYSELF_690,
      O => U0_Mcount_vcount_cy(8)
    );
  U0_vcount_8_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      IA => U0_vcount_8_LOGIC_ZERO_684,
      IB => U0_vcount_8_LOGIC_ZERO_684,
      SEL => U0_vcount_8_CYSELF_690,
      O => U0_vcount_8_CYMUXF2_685
    );
  U0_vcount_8_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(7),
      O => U0_vcount_8_CYINIT_708
    );
  U0_vcount_8_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_8_F,
      O => U0_vcount_8_CYSELF_690
    );
  U0_vcount_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_8_XORG_692,
      O => U0_vcount_8_DYMUX_694
    );
  U0_vcount_8_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      I0 => U0_Mcount_vcount_cy(8),
      I1 => U0_vcount_8_G,
      O => U0_vcount_8_XORG_692
    );
  U0_vcount_8_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_8_CYMUXFAST_689,
      O => U0_Mcount_vcount_cy(9)
    );
  U0_vcount_8_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(7),
      O => U0_vcount_8_FASTCARRY_687
    );
  U0_vcount_8_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      I0 => U0_vcount_8_CYSELG_675,
      I1 => U0_vcount_8_CYSELF_690,
      O => U0_vcount_8_CYAND_688
    );
  U0_vcount_8_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      IA => U0_vcount_8_CYMUXG2_686,
      IB => U0_vcount_8_FASTCARRY_687,
      SEL => U0_vcount_8_CYAND_688,
      O => U0_vcount_8_CYMUXFAST_689
    );
  U0_vcount_8_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y6"
    )
    port map (
      IA => U0_vcount_8_LOGIC_ZERO_684,
      IB => U0_vcount_8_CYMUXF2_685,
      SEL => U0_vcount_8_CYSELG_675,
      O => U0_vcount_8_CYMUXG2_686
    );
  U0_vcount_8_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_8_G,
      O => U0_vcount_8_CYSELG_675
    );
  U0_vcount_8_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => U0_vcount_8_SRINV_673
    );
  U0_vcount_8_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y6",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_vcount_8_CLKINV_672
    );
  U0_vcount_10_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      O => U0_vcount_10_LOGIC_ZERO_736
    );
  U0_vcount_10_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_10_XORF_761,
      O => U0_vcount_10_DXMUX_763
    );
  U0_vcount_10_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      I0 => U0_vcount_10_CYINIT_760,
      I1 => U0_vcount_10_F,
      O => U0_vcount_10_XORF_761
    );
  U0_vcount_10_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      IA => U0_vcount_10_LOGIC_ZERO_736,
      IB => U0_vcount_10_CYINIT_760,
      SEL => U0_vcount_10_CYSELF_742,
      O => U0_Mcount_vcount_cy(10)
    );
  U0_vcount_10_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      IA => U0_vcount_10_LOGIC_ZERO_736,
      IB => U0_vcount_10_LOGIC_ZERO_736,
      SEL => U0_vcount_10_CYSELF_742,
      O => U0_vcount_10_CYMUXF2_737
    );
  U0_vcount_10_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(9),
      O => U0_vcount_10_CYINIT_760
    );
  U0_vcount_10_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_10_F,
      O => U0_vcount_10_CYSELF_742
    );
  U0_vcount_10_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_10_XORG_744,
      O => U0_vcount_10_DYMUX_746
    );
  U0_vcount_10_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      I0 => U0_Mcount_vcount_cy(10),
      I1 => U0_vcount_10_G,
      O => U0_vcount_10_XORG_744
    );
  U0_vcount_10_COUTUSED : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_10_CYMUXFAST_741,
      O => U0_Mcount_vcount_cy(11)
    );
  U0_vcount_10_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(9),
      O => U0_vcount_10_FASTCARRY_739
    );
  U0_vcount_10_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      I0 => U0_vcount_10_CYSELG_727,
      I1 => U0_vcount_10_CYSELF_742,
      O => U0_vcount_10_CYAND_740
    );
  U0_vcount_10_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      IA => U0_vcount_10_CYMUXG2_738,
      IB => U0_vcount_10_FASTCARRY_739,
      SEL => U0_vcount_10_CYAND_740,
      O => U0_vcount_10_CYMUXFAST_741
    );
  U0_vcount_10_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y7"
    )
    port map (
      IA => U0_vcount_10_LOGIC_ZERO_736,
      IB => U0_vcount_10_CYMUXF2_737,
      SEL => U0_vcount_10_CYSELG_727,
      O => U0_vcount_10_CYMUXG2_738
    );
  U0_vcount_10_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_10_G,
      O => U0_vcount_10_CYSELG_727
    );
  U0_vcount_10_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => U0_vcount_10_SRINV_725
    );
  U0_vcount_10_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y7",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_vcount_10_CLKINV_724
    );
  U0_vcount_10 : X_SFF
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => '0'
    )
    port map (
      I => U0_vcount_10_DXMUX_763,
      CE => VCC,
      CLK => U0_vcount_10_CLKINV_724,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_10_SRINV_725,
      O => U0_vcount(10)
    );
  U0_vcount_13 : X_SFF
    generic map(
      LOC => "SLICE_X20Y8",
      INIT => '0'
    )
    port map (
      I => U0_vcount_12_DYMUX_798,
      CE => VCC,
      CLK => U0_vcount_12_CLKINV_776,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_12_SRINV_777,
      O => U0_vcount(13)
    );
  U0_vcount_12 : X_SFF
    generic map(
      LOC => "SLICE_X20Y8",
      INIT => '0'
    )
    port map (
      I => U0_vcount_12_DXMUX_815,
      CE => VCC,
      CLK => U0_vcount_12_CLKINV_776,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_12_SRINV_777,
      O => U0_vcount(12)
    );
  U0_vcount_12_LOGIC_ZERO : X_ZERO
    generic map(
      LOC => "SLICE_X20Y8"
    )
    port map (
      O => U0_vcount_12_LOGIC_ZERO_788
    );
  U0_vcount_12_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_12_XORF_813,
      O => U0_vcount_12_DXMUX_815
    );
  U0_vcount_12_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y8"
    )
    port map (
      I0 => U0_vcount_12_CYINIT_812,
      I1 => U0_vcount_12_F,
      O => U0_vcount_12_XORF_813
    );
  U0_vcount_12_CYMUXF : X_MUX2
    generic map(
      LOC => "SLICE_X20Y8"
    )
    port map (
      IA => U0_vcount_12_LOGIC_ZERO_788,
      IB => U0_vcount_12_CYINIT_812,
      SEL => U0_vcount_12_CYSELF_794,
      O => U0_Mcount_vcount_cy(12)
    );
  U0_vcount_12_CYMUXF2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y8"
    )
    port map (
      IA => U0_vcount_12_LOGIC_ZERO_788,
      IB => U0_vcount_12_LOGIC_ZERO_788,
      SEL => U0_vcount_12_CYSELF_794,
      O => U0_vcount_12_CYMUXF2_789
    );
  U0_vcount_12_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(11),
      O => U0_vcount_12_CYINIT_812
    );
  U0_vcount_12_CYSELF : X_BUF
    generic map(
      LOC => "SLICE_X20Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_12_F,
      O => U0_vcount_12_CYSELF_794
    );
  U0_vcount_12_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_12_XORG_796,
      O => U0_vcount_12_DYMUX_798
    );
  U0_vcount_12_XORG : X_XOR2
    generic map(
      LOC => "SLICE_X20Y8"
    )
    port map (
      I0 => U0_Mcount_vcount_cy(12),
      I1 => U0_vcount_12_G,
      O => U0_vcount_12_XORG_796
    );
  U0_vcount_12_FASTCARRY : X_BUF
    generic map(
      LOC => "SLICE_X20Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcount_vcount_cy(11),
      O => U0_vcount_12_FASTCARRY_791
    );
  U0_vcount_12_CYAND : X_AND2
    generic map(
      LOC => "SLICE_X20Y8"
    )
    port map (
      I0 => U0_vcount_12_CYSELG_779,
      I1 => U0_vcount_12_CYSELF_794,
      O => U0_vcount_12_CYAND_792
    );
  U0_vcount_12_CYMUXFAST : X_MUX2
    generic map(
      LOC => "SLICE_X20Y8"
    )
    port map (
      IA => U0_vcount_12_CYMUXG2_790,
      IB => U0_vcount_12_FASTCARRY_791,
      SEL => U0_vcount_12_CYAND_792,
      O => U0_vcount_12_CYMUXFAST_793
    );
  U0_vcount_12_CYMUXG2 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y8"
    )
    port map (
      IA => U0_vcount_12_LOGIC_ZERO_788,
      IB => U0_vcount_12_CYMUXF2_789,
      SEL => U0_vcount_12_CYSELG_779,
      O => U0_vcount_12_CYMUXG2_790
    );
  U0_vcount_12_CYSELG : X_BUF
    generic map(
      LOC => "SLICE_X20Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_12_G,
      O => U0_vcount_12_CYSELG_779
    );
  U0_vcount_12_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => U0_vcount_12_SRINV_777
    );
  U0_vcount_12_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y8",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_vcount_12_CLKINV_776
    );
  U0_vcount_14 : X_SFF
    generic map(
      LOC => "SLICE_X20Y9",
      INIT => '0'
    )
    port map (
      I => U0_vcount_14_DXMUX_839,
      CE => VCC,
      CLK => U0_vcount_14_CLKINV_825,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_14_SRINV_826,
      O => U0_vcount(14)
    );
  U0_vcount_14_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X20Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_14_XORF_837,
      O => U0_vcount_14_DXMUX_839
    );
  U0_vcount_14_XORF : X_XOR2
    generic map(
      LOC => "SLICE_X20Y9"
    )
    port map (
      I0 => U0_vcount_14_CYINIT_836,
      I1 => U0_vcount_14_rt_834,
      O => U0_vcount_14_XORF_837
    );
  U0_vcount_14_CYINIT : X_BUF
    generic map(
      LOC => "SLICE_X20Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_vcount_12_CYMUXFAST_793,
      O => U0_vcount_14_CYINIT_836
    );
  U0_vcount_14_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => U0_vcount_14_SRINV_826
    );
  U0_vcount_14_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X20Y9",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_vcount_14_CLKINV_825
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD123",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  sw_IBUF : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 605 ps
    )
    port map (
      I => sw,
      O => sw_INBUF
    );
  sw_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 605 ps
    )
    port map (
      I => sw_INBUF,
      O => sw_out_OBUF_324
    );
  sw_out_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => sw_out_O,
      O => sw_out
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 605 ps
    )
    port map (
      I => reset,
      O => reset_INBUF
    );
  reset_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD160",
      PATHPULSE => 605 ps
    )
    port map (
      I => reset_INBUF,
      O => reset_IBUF_325
    );
  sw_debounce_OBUF : X_OBUF
    generic map(
      LOC => "PAD13"
    )
    port map (
      I => sw_debounce_O,
      O => sw_debounce
    );
  sw_debounce_OUTPUT_OFF_O1INV : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_current_state_cmp_eq0005,
      O => sw_debounce_OUTPUT_OFF_O1INV_881
    );
  sw_debounce_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD13",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_debounce_sw_884,
      O => sw_debounce_O
    );
  U1_debounce_sw : X_LATCHE
    generic map(
      LOC => "PAD13",
      INIT => '0'
    )
    port map (
      I => sw_debounce_OUTPUT_OFF_O1INV_881,
      GE => VCC,
      CLK => NlwInverterSignal_U1_debounce_sw_CLK,
      SET => GND,
      RST => GND,
      O => U1_debounce_sw_884
    );
  sw_debounce_OUTPUT_OTCLK1INV : X_INV
    generic map(
      LOC => "PAD13",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_debounce_sw_or0000,
      O => sw_debounce_OUTPUT_OTCLK1INVNOT
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
  U1_current_state_FSM_FFd2_In121 : X_LUT4
    generic map(
      INIT => X"FFFB",
      LOC => "SLICE_X13Y20"
    )
    port map (
      ADR0 => U1_m_tick_0(0),
      ADR1 => U1_m_tick_0(2),
      ADR2 => U1_m_tick_0(3),
      ADR3 => U1_m_tick_0(1),
      O => U1_current_state_FSM_FFd2_In121_912
    );
  U1_current_state_FSM_FFd2_In12_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_current_state_FSM_FFd2_In12_F5MUX_914,
      O => U1_current_state_FSM_FFd2_In12
    );
  U1_current_state_FSM_FFd2_In12_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X13Y20"
    )
    port map (
      IA => U1_current_state_FSM_FFd2_In12_G,
      IB => U1_current_state_FSM_FFd2_In121_912,
      SEL => U1_current_state_FSM_FFd2_In12_BXINV_907,
      O => U1_current_state_FSM_FFd2_In12_F5MUX_914
    );
  U1_current_state_FSM_FFd2_In12_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0(4),
      O => U1_current_state_FSM_FFd2_In12_BXINV_907
    );
  U1_Mcount_m_tick_1_cy_2_11 : X_LUT4
    generic map(
      INIT => X"A000",
      LOC => "SLICE_X14Y20"
    )
    port map (
      ADR0 => U1_m_tick_1(1),
      ADR1 => VCC,
      ADR2 => U1_m_tick_1(0),
      ADR3 => U1_m_tick_1(2),
      O => U1_Mcount_m_tick_1_cy_2_11_O_pack_2
    );
  U1_Mcount_m_tick_1_xor_4_11 : X_LUT4
    generic map(
      INIT => X"3CF0",
      LOC => "SLICE_X14Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_m_tick_1(3),
      ADR2 => U1_m_tick_1(4),
      ADR3 => U1_Mcount_m_tick_1_cy_2_11_O,
      O => U1_Result(4)
    );
  U1_m_tick_1_4_FFX_RSTOR : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_1_or0000_0,
      O => U1_m_tick_1_4_FFX_RST
    );
  U1_m_tick_1_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_1_4_DXMUX_946,
      CE => U1_m_tick_1_4_CEINV_927,
      CLK => U1_m_tick_1_4_CLKINV_928,
      SET => GND,
      RST => U1_m_tick_1_4_FFX_RST,
      O => U1_m_tick_1(4)
    );
  U1_m_tick_1_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Result(4),
      O => U1_m_tick_1_4_DXMUX_946
    );
  U1_m_tick_1_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Mcount_m_tick_1_cy_2_11_O_pack_2,
      O => U1_Mcount_m_tick_1_cy_2_11_O
    );
  U1_m_tick_1_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_clk_out_int_335,
      O => U1_m_tick_1_4_CLKINV_928
    );
  U1_m_tick_1_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_1_not0001_0,
      O => U1_m_tick_1_4_CEINV_927
    );
  U1_Mcount_m_tick_0_cy_2_11 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_m_tick_0(1),
      ADR2 => U1_m_tick_0(0),
      ADR3 => U1_m_tick_0(2),
      O => U1_Mcount_m_tick_0_cy_2_11_O_pack_2
    );
  U1_Mcount_m_tick_0_xor_4_11 : X_LUT4
    generic map(
      INIT => X"5AAA",
      LOC => "SLICE_X13Y21"
    )
    port map (
      ADR0 => U1_m_tick_0(4),
      ADR1 => VCC,
      ADR2 => U1_m_tick_0(3),
      ADR3 => U1_Mcount_m_tick_0_cy_2_11_O,
      O => U1_Result_4_1
    );
  U1_m_tick_0_4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Result_4_1,
      O => U1_m_tick_0_4_DXMUX_984
    );
  U1_m_tick_0_4_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Mcount_m_tick_0_cy_2_11_O_pack_2,
      O => U1_Mcount_m_tick_0_cy_2_11_O
    );
  U1_m_tick_0_4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_clk_out_int_335,
      O => U1_m_tick_0_4_CLKINV_966
    );
  U1_m_tick_0_4_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0_not0001_0,
      O => U1_m_tick_0_4_CEINV_965
    );
  U1_m_tick_0_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Result_3_1,
      O => U1_m_tick_0_3_DXMUX_1030
    );
  U1_m_tick_0_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Result_2_1,
      O => U1_m_tick_0_3_DYMUX_1015
    );
  U1_m_tick_0_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0_or0000_0,
      O => U1_m_tick_0_3_SRINV_1006
    );
  U1_m_tick_0_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_clk_out_int_335,
      O => U1_m_tick_0_3_CLKINV_1005
    );
  U1_m_tick_0_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0_not0001_0,
      O => U1_m_tick_0_3_CEINV_1004
    );
  U1_m_tick_1_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Result(3),
      O => U1_m_tick_1_3_DXMUX_1076
    );
  U1_m_tick_1_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Result(2),
      O => U1_m_tick_1_3_DYMUX_1061
    );
  U1_m_tick_1_3_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_1_or0000_0,
      O => U1_m_tick_1_3_SRINV_1052
    );
  U1_m_tick_1_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_clk_out_int_335,
      O => U1_m_tick_1_3_CLKINV_1051
    );
  U1_m_tick_1_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X14Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_1_not0001_0,
      O => U1_m_tick_1_3_CEINV_1050
    );
  U1_current_state_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_current_state_FSM_FFd2_In,
      O => U1_current_state_FSM_FFd2_DXMUX_1122
    );
  U1_current_state_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 605 ps
    )
    port map (
      I => sw_out_OBUF_324,
      O => U1_current_state_FSM_FFd2_DYMUX_1108
    );
  U1_current_state_FSM_FFd2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_current_state_FSM_FFd2_In15_pack_4,
      O => U1_current_state_FSM_FFd2_In15_349
    );
  U1_current_state_FSM_FFd2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 605 ps
    )
    port map (
      I => reset_IBUF_325,
      O => U1_current_state_FSM_FFd2_SRINV_1097
    );
  U1_current_state_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y19",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U1_current_state_FSM_FFd2_CLKINV_1096
    );
  U1_m_tick_0_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0(0),
      O => U1_m_tick_0_0_DXMUX_1158
    );
  U1_m_tick_0_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Result_1_1,
      O => U1_m_tick_0_0_DYMUX_1149
    );
  U1_m_tick_0_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0_or0000_0,
      O => U1_m_tick_0_0_SRINV_1139
    );
  U1_m_tick_0_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_clk_out_int_335,
      O => U1_m_tick_0_0_CLKINV_1138
    );
  U1_m_tick_0_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0_not0001_0,
      O => U1_m_tick_0_0_CEINV_1137
    );
  U1_m_tick_0_or0000_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0_or0000,
      O => U1_m_tick_0_or0000_0
    );
  U1_m_tick_0_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y18",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_1_or0000,
      O => U1_m_tick_1_or0000_0
    );
  U1_m_tick_1_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_1(0),
      O => U1_m_tick_1_0_DXMUX_1219
    );
  U1_m_tick_1_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_Result(1),
      O => U1_m_tick_1_0_DYMUX_1210
    );
  U1_m_tick_1_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_1_or0000_0,
      O => U1_m_tick_1_0_SRINV_1200
    );
  U1_m_tick_1_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_clk_out_int_335,
      O => U1_m_tick_1_0_CLKINV_1199
    );
  U1_m_tick_1_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_1_not0001_0,
      O => U1_m_tick_1_0_CEINV_1198
    );
  U1_debounce_sw_or0000_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y29",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0_not0001,
      O => U1_m_tick_0_not0001_0
    );
  U1_current_state_cmp_eq0005_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X12Y28",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_1_not0001,
      O => U1_m_tick_1_not0001_0
    );
  U1_current_state_FSM_FFd2_In60_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_current_state_FSM_FFd2_In60_1296,
      O => U1_current_state_FSM_FFd2_In60_0
    );
  U1_current_state_FSM_FFd2_In60_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X15Y20",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_current_state_FSM_FFd2_In49_pack_1,
      O => U1_current_state_FSM_FFd2_In49_350
    );
  U0_clk_out_int_DYMUX : X_INV
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_clk_out_int_335,
      O => U0_clk_out_int_DYMUX_1306
    );
  U0_clk_out_int_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 605 ps
    )
    port map (
      I => clk_BUFGP,
      O => U0_clk_out_int_CLKINV_1304
    );
  U0_clk_out_int_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X15Y18",
      PATHPULSE => 605 ps
    )
    port map (
      I => U0_Mcompar_clk_out_int_cmp_lt0000_cy_6_Q,
      O => U0_clk_out_int_CEINV_1303
    );
  U0_vcount_14_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X20Y9"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_vcount(14),
      O => U0_vcount_14_rt_834
    );
  U1_m_tick_0_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_0_4_DXMUX_984,
      CE => U1_m_tick_0_4_CEINV_965,
      CLK => U1_m_tick_0_4_CLKINV_966,
      SET => GND,
      RST => U1_m_tick_0_4_FFX_RSTAND_990,
      O => U1_m_tick_0(4)
    );
  U1_m_tick_0_4_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X13Y21",
      PATHPULSE => 605 ps
    )
    port map (
      I => U1_m_tick_0_or0000_0,
      O => U1_m_tick_0_4_FFX_RSTAND_990
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_lut_1_INV_0 : X_LUT4
    generic map(
      INIT => X"00FF",
      LOC => "SLICE_X21Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_vcount(4),
      O => U0_Mcompar_clk_out_int_cmp_lt0000_lut_1_Q
    );
  U0_vcount_3_rt : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X21Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_vcount(3),
      O => U0_vcount_3_rt_369
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_lut_3_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X21Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U0_vcount(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_lut_3_Q
    );
  U0_vcount_5_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X21Y5"
    )
    port map (
      ADR0 => U0_vcount(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_vcount_5_rt_402
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"0001",
      LOC => "SLICE_X21Y6"
    )
    port map (
      ADR0 => U0_vcount(12),
      ADR1 => U0_vcount(10),
      ADR2 => U0_vcount(11),
      ADR3 => U0_vcount(9),
      O => U0_Mcompar_clk_out_int_cmp_lt0000_lut_5_Q_420
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X21Y6"
    )
    port map (
      ADR0 => U0_vcount(8),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_vcount(7),
      O => U0_Mcompar_clk_out_int_cmp_lt0000_lut_4_Q_434
    );
  U0_Mcompar_clk_out_int_cmp_lt0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X21Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U0_vcount(13),
      ADR2 => U0_vcount(14),
      ADR3 => VCC,
      O => U0_Mcompar_clk_out_int_cmp_lt0000_lut_6_Q_447
    );
  U0_vcount_1 : X_SFF
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => '0'
    )
    port map (
      I => U0_vcount_0_DYMUX_483,
      CE => VCC,
      CLK => U0_vcount_0_CLKINV_466,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_0_SRINV_467,
      O => U0_vcount(1)
    );
  U0_Mcount_vcount_lut_0_INV_0 : X_LUT4
    generic map(
      INIT => X"3333",
      LOC => "SLICE_X20Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U0_vcount(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_Mcount_vcount_lut(0)
    );
  U0_vcount_0 : X_SFF
    generic map(
      LOC => "SLICE_X20Y2",
      INIT => '0'
    )
    port map (
      I => U0_vcount_0_DXMUX_503,
      CE => VCC,
      CLK => U0_vcount_0_CLKINV_466,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_0_SRINV_467,
      O => U0_vcount(0)
    );
  U0_vcount_3 : X_SFF
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => '0'
    )
    port map (
      I => U0_vcount_2_DYMUX_538,
      CE => VCC,
      CLK => U0_vcount_2_CLKINV_516,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_2_SRINV_517,
      O => U0_vcount(3)
    );
  U0_vcount_2 : X_SFF
    generic map(
      LOC => "SLICE_X20Y3",
      INIT => '0'
    )
    port map (
      I => U0_vcount_2_DXMUX_555,
      CE => VCC,
      CLK => U0_vcount_2_CLKINV_516,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_2_SRINV_517,
      O => U0_vcount(2)
    );
  U0_vcount_5 : X_SFF
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => '0'
    )
    port map (
      I => U0_vcount_4_DYMUX_590,
      CE => VCC,
      CLK => U0_vcount_4_CLKINV_568,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_4_SRINV_569,
      O => U0_vcount(5)
    );
  U0_vcount_4 : X_SFF
    generic map(
      LOC => "SLICE_X20Y4",
      INIT => '0'
    )
    port map (
      I => U0_vcount_4_DXMUX_607,
      CE => VCC,
      CLK => U0_vcount_4_CLKINV_568,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_4_SRINV_569,
      O => U0_vcount(4)
    );
  U0_vcount_7 : X_SFF
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => '0'
    )
    port map (
      I => U0_vcount_6_DYMUX_642,
      CE => VCC,
      CLK => U0_vcount_6_CLKINV_620,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_6_SRINV_621,
      O => U0_vcount(7)
    );
  U0_vcount_6 : X_SFF
    generic map(
      LOC => "SLICE_X20Y5",
      INIT => '0'
    )
    port map (
      I => U0_vcount_6_DXMUX_659,
      CE => VCC,
      CLK => U0_vcount_6_CLKINV_620,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_6_SRINV_621,
      O => U0_vcount(6)
    );
  U0_vcount_9 : X_SFF
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => '0'
    )
    port map (
      I => U0_vcount_8_DYMUX_694,
      CE => VCC,
      CLK => U0_vcount_8_CLKINV_672,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_8_SRINV_673,
      O => U0_vcount(9)
    );
  U0_vcount_8 : X_SFF
    generic map(
      LOC => "SLICE_X20Y6",
      INIT => '0'
    )
    port map (
      I => U0_vcount_8_DXMUX_711,
      CE => VCC,
      CLK => U0_vcount_8_CLKINV_672,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_8_SRINV_673,
      O => U0_vcount(8)
    );
  U0_vcount_11 : X_SFF
    generic map(
      LOC => "SLICE_X20Y7",
      INIT => '0'
    )
    port map (
      I => U0_vcount_10_DYMUX_746,
      CE => VCC,
      CLK => U0_vcount_10_CLKINV_724,
      SET => GND,
      RST => GND,
      SSET => GND,
      SRST => U0_vcount_10_SRINV_725,
      O => U0_vcount(11)
    );
  U1_Mcount_m_tick_0_xor_2_11 : X_LUT4
    generic map(
      INIT => X"5AAA",
      LOC => "SLICE_X12Y21"
    )
    port map (
      ADR0 => U1_m_tick_0(2),
      ADR1 => VCC,
      ADR2 => U1_m_tick_0(1),
      ADR3 => U1_m_tick_0(0),
      O => U1_Result_2_1
    );
  U1_m_tick_0_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_0_3_DYMUX_1015,
      CE => U1_m_tick_0_3_CEINV_1004,
      CLK => U1_m_tick_0_3_CLKINV_1005,
      SET => GND,
      RST => U1_m_tick_0_3_SRINV_1006,
      O => U1_m_tick_0(2)
    );
  U1_Mcount_m_tick_0_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6CCC",
      LOC => "SLICE_X12Y21"
    )
    port map (
      ADR0 => U1_m_tick_0(2),
      ADR1 => U1_m_tick_0(3),
      ADR2 => U1_m_tick_0(1),
      ADR3 => U1_m_tick_0(0),
      O => U1_Result_3_1
    );
  U1_m_tick_0_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_0_3_DXMUX_1030,
      CE => U1_m_tick_0_3_CEINV_1004,
      CLK => U1_m_tick_0_3_CLKINV_1005,
      SET => GND,
      RST => U1_m_tick_0_3_SRINV_1006,
      O => U1_m_tick_0(3)
    );
  U1_Mcount_m_tick_1_xor_2_11 : X_LUT4
    generic map(
      INIT => X"6C6C",
      LOC => "SLICE_X14Y21"
    )
    port map (
      ADR0 => U1_m_tick_1(1),
      ADR1 => U1_m_tick_1(2),
      ADR2 => U1_m_tick_1(0),
      ADR3 => VCC,
      O => U1_Result(2)
    );
  U1_m_tick_1_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_1_3_DYMUX_1061,
      CE => U1_m_tick_1_3_CEINV_1050,
      CLK => U1_m_tick_1_3_CLKINV_1051,
      SET => GND,
      RST => U1_m_tick_1_3_SRINV_1052,
      O => U1_m_tick_1(2)
    );
  U1_Mcount_m_tick_1_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6CCC",
      LOC => "SLICE_X14Y21"
    )
    port map (
      ADR0 => U1_m_tick_1(1),
      ADR1 => U1_m_tick_1(3),
      ADR2 => U1_m_tick_1(0),
      ADR3 => U1_m_tick_1(2),
      O => U1_Result(3)
    );
  U1_m_tick_1_3 : X_FF
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_1_3_DXMUX_1076,
      CE => U1_m_tick_1_3_CEINV_1050,
      CLK => U1_m_tick_1_3_CLKINV_1051,
      SET => GND,
      RST => U1_m_tick_1_3_SRINV_1052,
      O => U1_m_tick_1(3)
    );
  U1_current_state_FSM_FFd2_In15 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => VCC,
      ADR1 => sw_out_OBUF_324,
      ADR2 => VCC,
      ADR3 => U1_current_state_FSM_FFd2_In12,
      O => U1_current_state_FSM_FFd2_In15_pack_4
    );
  U1_current_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      I => U1_current_state_FSM_FFd2_DYMUX_1108,
      CE => VCC,
      CLK => U1_current_state_FSM_FFd2_CLKINV_1096,
      SET => GND,
      RST => U1_current_state_FSM_FFd2_SRINV_1097,
      O => U1_current_state_FSM_FFd1_346
    );
  U1_current_state_FSM_FFd2_In77 : X_LUT4
    generic map(
      INIT => X"EAC8",
      LOC => "SLICE_X13Y19"
    )
    port map (
      ADR0 => U1_current_state_FSM_FFd1_346,
      ADR1 => U1_current_state_FSM_FFd2_348,
      ADR2 => U1_current_state_FSM_FFd2_In15_349,
      ADR3 => U1_current_state_FSM_FFd2_In60_0,
      O => U1_current_state_FSM_FFd2_In
    );
  U1_current_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      I => U1_current_state_FSM_FFd2_DXMUX_1122,
      CE => VCC,
      CLK => U1_current_state_FSM_FFd2_CLKINV_1096,
      SET => GND,
      RST => U1_current_state_FSM_FFd2_SRINV_1097,
      O => U1_current_state_FSM_FFd2_348
    );
  U1_Mcount_m_tick_0_xor_1_11 : X_LUT4
    generic map(
      INIT => X"0FF0",
      LOC => "SLICE_X12Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U1_m_tick_0(1),
      ADR3 => U1_m_tick_0(0),
      O => U1_Result_1_1
    );
  U1_m_tick_0_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_0_0_DYMUX_1149,
      CE => U1_m_tick_0_0_CEINV_1137,
      CLK => U1_m_tick_0_0_CLKINV_1138,
      SET => GND,
      RST => U1_m_tick_0_0_SRINV_1139,
      O => U1_m_tick_0(1)
    );
  U1_m_tick_0_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_0_0_DXMUX_1158,
      CE => U1_m_tick_0_0_CEINV_1137,
      CLK => U1_m_tick_0_0_CLKINV_1138,
      SET => GND,
      RST => U1_m_tick_0_0_SRINV_1139,
      O => U1_m_tick_0(0)
    );
  U1_m_tick_1_or00001 : X_LUT4
    generic map(
      INIT => X"FDFD",
      LOC => "SLICE_X13Y18"
    )
    port map (
      ADR0 => U1_current_state_FSM_FFd1_346,
      ADR1 => U1_current_state_FSM_FFd2_348,
      ADR2 => reset_IBUF_325,
      ADR3 => VCC,
      O => U1_m_tick_1_or0000
    );
  U1_m_tick_0_or00001 : X_LUT4
    generic map(
      INIT => X"F9F9",
      LOC => "SLICE_X13Y18"
    )
    port map (
      ADR0 => U1_current_state_FSM_FFd1_346,
      ADR1 => U1_current_state_FSM_FFd2_348,
      ADR2 => reset_IBUF_325,
      ADR3 => VCC,
      O => U1_m_tick_0_or0000
    );
  U1_Mcount_m_tick_1_xor_1_11 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X15Y21"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U1_m_tick_1(0),
      ADR2 => VCC,
      ADR3 => U1_m_tick_1(1),
      O => U1_Result(1)
    );
  U1_m_tick_1_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_1_0_DYMUX_1210,
      CE => U1_m_tick_1_0_CEINV_1198,
      CLK => U1_m_tick_1_0_CLKINV_1199,
      SET => GND,
      RST => U1_m_tick_1_0_SRINV_1200,
      O => U1_m_tick_1(1)
    );
  U1_m_tick_1_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => '0'
    )
    port map (
      I => U1_m_tick_1_0_DXMUX_1219,
      CE => U1_m_tick_1_0_CEINV_1198,
      CLK => U1_m_tick_1_0_CLKINV_1199,
      SET => GND,
      RST => U1_m_tick_1_0_SRINV_1200,
      O => U1_m_tick_1(0)
    );
  U1_m_tick_0_not00011 : X_LUT4
    generic map(
      INIT => X"AFAF",
      LOC => "SLICE_X12Y29"
    )
    port map (
      ADR0 => U1_current_state_FSM_FFd2_348,
      ADR1 => VCC,
      ADR2 => U1_current_state_FSM_FFd1_346,
      ADR3 => VCC,
      O => U1_m_tick_0_not0001
    );
  U1_debounce_sw_or00001 : X_LUT4
    generic map(
      INIT => X"A5A5",
      LOC => "SLICE_X12Y29"
    )
    port map (
      ADR0 => U1_current_state_FSM_FFd2_348,
      ADR1 => VCC,
      ADR2 => U1_current_state_FSM_FFd1_346,
      ADR3 => VCC,
      O => U1_debounce_sw_or0000
    );
  U1_m_tick_1_not00011 : X_LUT4
    generic map(
      INIT => X"FF55",
      LOC => "SLICE_X12Y28"
    )
    port map (
      ADR0 => U1_current_state_FSM_FFd2_348,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U1_current_state_FSM_FFd1_346,
      O => U1_m_tick_1_not0001
    );
  U1_m_tick_0_or000011 : X_LUT4
    generic map(
      INIT => X"AA00",
      LOC => "SLICE_X12Y28"
    )
    port map (
      ADR0 => U1_current_state_FSM_FFd2_348,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U1_current_state_FSM_FFd1_346,
      O => U1_current_state_cmp_eq0005
    );
  U1_current_state_FSM_FFd2_In49 : X_LUT4
    generic map(
      INIT => X"1100",
      LOC => "SLICE_X15Y20"
    )
    port map (
      ADR0 => U1_m_tick_1(1),
      ADR1 => U1_m_tick_1(3),
      ADR2 => VCC,
      ADR3 => U1_m_tick_1(4),
      O => U1_current_state_FSM_FFd2_In49_pack_1
    );
  U1_current_state_FSM_FFd2_In60 : X_LUT4
    generic map(
      INIT => X"0080",
      LOC => "SLICE_X15Y20"
    )
    port map (
      ADR0 => U1_m_tick_1(2),
      ADR1 => sw_out_OBUF_324,
      ADR2 => U1_current_state_FSM_FFd2_In49_350,
      ADR3 => U1_m_tick_1(0),
      O => U1_current_state_FSM_FFd2_In60_1296
    );
  U0_clk_out_int : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      I => U0_clk_out_int_DYMUX_1306,
      CE => U0_clk_out_int_CEINV_1303,
      CLK => U0_clk_out_int_CLKINV_1304,
      SET => GND,
      RST => GND,
      O => U0_clk_out_int_335
    );
  U0_vcount_0_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X20Y2"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_vcount(1),
      O => U0_vcount_0_G
    );
  U0_vcount_2_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X20Y3"
    )
    port map (
      ADR0 => U0_vcount(2),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_vcount_2_F
    );
  U0_vcount_2_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X20Y3"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U0_vcount(3),
      ADR3 => VCC,
      O => U0_vcount_2_G
    );
  U0_vcount_4_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X20Y4"
    )
    port map (
      ADR0 => U0_vcount(4),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_vcount_4_F
    );
  U0_vcount_4_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X20Y4"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_vcount(5),
      O => U0_vcount_4_G
    );
  U0_vcount_6_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X20Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U0_vcount(6),
      ADR3 => VCC,
      O => U0_vcount_6_F
    );
  U0_vcount_6_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X20Y5"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U0_vcount(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_vcount_6_G
    );
  U0_vcount_8_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FF00",
      LOC => "SLICE_X20Y6"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => U0_vcount(8),
      O => U0_vcount_8_F
    );
  U0_vcount_8_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X20Y6"
    )
    port map (
      ADR0 => U0_vcount(9),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_vcount_8_G
    );
  U0_vcount_10_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"F0F0",
      LOC => "SLICE_X20Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => U0_vcount(10),
      ADR3 => VCC,
      O => U0_vcount_10_F
    );
  U0_vcount_10_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X20Y7"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U0_vcount(11),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_vcount_10_G
    );
  U0_vcount_12_F_X_LUT4 : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X20Y8"
    )
    port map (
      ADR0 => U0_vcount(12),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_vcount_12_F
    );
  U0_vcount_12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"CCCC",
      LOC => "SLICE_X20Y8"
    )
    port map (
      ADR0 => VCC,
      ADR1 => U0_vcount(13),
      ADR2 => VCC,
      ADR3 => VCC,
      O => U0_vcount_12_G
    );
  sw_out_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 605 ps
    )
    port map (
      I => sw_out_OBUF_324,
      O => sw_out_O
    );
  U1_current_state_FSM_FFd2_In12_G_X_LUT4 : X_LUT4
    generic map(
      INIT => X"FFFF",
      LOC => "SLICE_X13Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => U1_current_state_FSM_FFd2_In12_G
    );
  NlwBlock_debounce_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_debounce_GND : X_ZERO
    port map (
      O => GND
    );
  NlwInverterBlock_U1_debounce_sw_CLK : X_INV
    port map (
      I => sw_debounce_OUTPUT_OTCLK1INVNOT,
      O => NlwInverterSignal_U1_debounce_sw_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

