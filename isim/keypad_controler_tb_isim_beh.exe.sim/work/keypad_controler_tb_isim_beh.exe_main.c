/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_0797886040_3212880686_init();
    work_a_3063993245_3212880686_init();
    work_a_4293103281_3212880686_init();
    work_a_1166028752_3212880686_init();
    work_a_2420540469_3212880686_init();
    work_a_1585794704_3212880686_init();
    work_a_4189788309_3212880686_init();
    work_a_0372254013_3212880686_init();
    work_a_2927376634_3212880686_init();
    work_a_3852716595_2372691052_init();


    xsi_register_tops("work_a_3852716595_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
