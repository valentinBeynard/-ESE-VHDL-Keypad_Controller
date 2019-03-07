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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "L:/CPE 4ETI/Keyboard_controller/transcoder_7_segments.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1330427579_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    unsigned char t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    int t18;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4448);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 2472U);
    t5 = *((char **)t4);
    t4 = (t0 + 7420U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t3, t5, t4, 1);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (2U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 4560);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 2U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 7473);
    t16 = xsi_mem_cmp(t1, t4, 2U);
    if (t16 == 1)
        goto LAB8;

LAB13:    t6 = (t0 + 7475);
    t17 = xsi_mem_cmp(t6, t4, 2U);
    if (t17 == 1)
        goto LAB9;

LAB14:    t11 = (t0 + 7477);
    t18 = xsi_mem_cmp(t11, t4, 2U);
    if (t18 == 1)
        goto LAB10;

LAB15:    t13 = (t0 + 7479);
    t19 = xsi_mem_cmp(t13, t4, 2U);
    if (t19 == 1)
        goto LAB11;

LAB16:
LAB12:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 7481);
    t5 = (t0 + 4624);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB7:    goto LAB3;

LAB5:    xsi_size_not_matching(2U, t9, 0);
    goto LAB6;

LAB8:    xsi_set_current_line(58, ng0);
    t15 = (t0 + 1032U);
    t20 = *((char **)t15);
    t15 = (t0 + 4624);
    t21 = (t15 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t20, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB7;

LAB9:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 4688);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB10:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 4752);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB11:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 4816);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB17:;
}

static void work_a_1330427579_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 7485);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 7487);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 7489);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 7491);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 7493);
    t3 = (t0 + 4880);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 4464);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(78, ng0);
    t14 = (t0 + 1672U);
    t15 = *((char **)t14);
    t14 = (t0 + 4880);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t15, 4U);
    xsi_driver_first_trans_fast(t14);
    goto LAB2;

LAB4:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4880);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 4880);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4880);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB12:;
}

static void work_a_1330427579_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned char t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned char t46;
    unsigned int t47;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned char t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    unsigned char t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    unsigned char t88;
    unsigned int t89;
    char *t90;
    char *t91;
    char *t92;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    unsigned char t102;
    unsigned int t103;
    char *t104;
    char *t105;
    char *t106;
    char *t108;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    unsigned char t116;
    unsigned int t117;
    char *t118;
    char *t119;
    char *t120;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;
    unsigned char t130;
    unsigned int t131;
    char *t132;
    char *t133;
    char *t134;
    char *t136;
    char *t137;
    char *t138;
    char *t139;
    char *t140;
    char *t141;
    char *t142;
    unsigned char t144;
    unsigned int t145;
    char *t146;
    char *t147;
    char *t148;
    char *t150;
    char *t151;
    char *t152;
    char *t153;
    char *t154;
    char *t155;
    char *t156;
    unsigned char t158;
    unsigned int t159;
    char *t160;
    char *t161;
    char *t162;
    char *t164;
    char *t165;
    char *t166;
    char *t167;
    char *t168;
    char *t169;
    char *t170;
    unsigned char t172;
    unsigned int t173;
    char *t174;
    char *t175;
    char *t176;
    char *t178;
    char *t179;
    char *t180;
    char *t181;
    char *t182;
    char *t183;
    char *t184;
    unsigned char t186;
    unsigned int t187;
    char *t188;
    char *t189;
    char *t190;
    char *t192;
    char *t193;
    char *t194;
    char *t195;
    char *t196;
    char *t197;
    char *t198;
    unsigned char t200;
    unsigned int t201;
    char *t202;
    char *t203;
    char *t204;
    char *t206;
    char *t207;
    char *t208;
    char *t209;
    char *t210;
    char *t211;
    char *t212;
    unsigned char t214;
    unsigned int t215;
    char *t216;
    char *t217;
    char *t218;
    char *t220;
    char *t221;
    char *t222;
    char *t223;
    char *t224;
    char *t225;

LAB0:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7497);
    t4 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:    t15 = (t0 + 2312U);
    t16 = *((char **)t15);
    t15 = (t0 + 7508);
    t18 = 1;
    if (4U == 4U)
        goto LAB13;

LAB14:    t18 = 0;

LAB15:    if (t18 != 0)
        goto LAB11;

LAB12:    t29 = (t0 + 2312U);
    t30 = *((char **)t29);
    t29 = (t0 + 7519);
    t32 = 1;
    if (4U == 4U)
        goto LAB21;

LAB22:    t32 = 0;

LAB23:    if (t32 != 0)
        goto LAB19;

LAB20:    t43 = (t0 + 2312U);
    t44 = *((char **)t43);
    t43 = (t0 + 7530);
    t46 = 1;
    if (4U == 4U)
        goto LAB29;

LAB30:    t46 = 0;

LAB31:    if (t46 != 0)
        goto LAB27;

LAB28:    t57 = (t0 + 2312U);
    t58 = *((char **)t57);
    t57 = (t0 + 7541);
    t60 = 1;
    if (4U == 4U)
        goto LAB37;

LAB38:    t60 = 0;

LAB39:    if (t60 != 0)
        goto LAB35;

LAB36:    t71 = (t0 + 2312U);
    t72 = *((char **)t71);
    t71 = (t0 + 7552);
    t74 = 1;
    if (4U == 4U)
        goto LAB45;

LAB46:    t74 = 0;

LAB47:    if (t74 != 0)
        goto LAB43;

LAB44:    t85 = (t0 + 2312U);
    t86 = *((char **)t85);
    t85 = (t0 + 7563);
    t88 = 1;
    if (4U == 4U)
        goto LAB53;

LAB54:    t88 = 0;

LAB55:    if (t88 != 0)
        goto LAB51;

LAB52:    t99 = (t0 + 2312U);
    t100 = *((char **)t99);
    t99 = (t0 + 7574);
    t102 = 1;
    if (4U == 4U)
        goto LAB61;

LAB62:    t102 = 0;

LAB63:    if (t102 != 0)
        goto LAB59;

LAB60:    t113 = (t0 + 2312U);
    t114 = *((char **)t113);
    t113 = (t0 + 7585);
    t116 = 1;
    if (4U == 4U)
        goto LAB69;

LAB70:    t116 = 0;

LAB71:    if (t116 != 0)
        goto LAB67;

LAB68:    t127 = (t0 + 2312U);
    t128 = *((char **)t127);
    t127 = (t0 + 7596);
    t130 = 1;
    if (4U == 4U)
        goto LAB77;

LAB78:    t130 = 0;

LAB79:    if (t130 != 0)
        goto LAB75;

LAB76:    t141 = (t0 + 2312U);
    t142 = *((char **)t141);
    t141 = (t0 + 7607);
    t144 = 1;
    if (4U == 4U)
        goto LAB85;

LAB86:    t144 = 0;

LAB87:    if (t144 != 0)
        goto LAB83;

LAB84:    t155 = (t0 + 2312U);
    t156 = *((char **)t155);
    t155 = (t0 + 7618);
    t158 = 1;
    if (4U == 4U)
        goto LAB93;

LAB94:    t158 = 0;

LAB95:    if (t158 != 0)
        goto LAB91;

LAB92:    t169 = (t0 + 2312U);
    t170 = *((char **)t169);
    t169 = (t0 + 7629);
    t172 = 1;
    if (4U == 4U)
        goto LAB101;

LAB102:    t172 = 0;

LAB103:    if (t172 != 0)
        goto LAB99;

LAB100:    t183 = (t0 + 2312U);
    t184 = *((char **)t183);
    t183 = (t0 + 7640);
    t186 = 1;
    if (4U == 4U)
        goto LAB109;

LAB110:    t186 = 0;

LAB111:    if (t186 != 0)
        goto LAB107;

LAB108:    t197 = (t0 + 2312U);
    t198 = *((char **)t197);
    t197 = (t0 + 7651);
    t200 = 1;
    if (4U == 4U)
        goto LAB117;

LAB118:    t200 = 0;

LAB119:    if (t200 != 0)
        goto LAB115;

LAB116:    t211 = (t0 + 2312U);
    t212 = *((char **)t211);
    t211 = (t0 + 7662);
    t214 = 1;
    if (4U == 4U)
        goto LAB125;

LAB126:    t214 = 0;

LAB127:    if (t214 != 0)
        goto LAB123;

LAB124:
LAB2:    t225 = (t0 + 4480);
    *((int *)t225) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 7501);
    t10 = (t0 + 4944);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 7U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    t22 = (t0 + 7512);
    t24 = (t0 + 4944);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t22, 7U);
    xsi_driver_first_trans_fast_port(t24);
    goto LAB2;

LAB13:    t19 = 0;

LAB16:    if (t19 < 4U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t20 = (t16 + t19);
    t21 = (t15 + t19);
    if (*((unsigned char *)t20) != *((unsigned char *)t21))
        goto LAB14;

LAB18:    t19 = (t19 + 1);
    goto LAB16;

LAB19:    t36 = (t0 + 7523);
    t38 = (t0 + 4944);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t36, 7U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB21:    t33 = 0;

LAB24:    if (t33 < 4U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t34 = (t30 + t33);
    t35 = (t29 + t33);
    if (*((unsigned char *)t34) != *((unsigned char *)t35))
        goto LAB22;

LAB26:    t33 = (t33 + 1);
    goto LAB24;

LAB27:    t50 = (t0 + 7534);
    t52 = (t0 + 4944);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memcpy(t56, t50, 7U);
    xsi_driver_first_trans_fast_port(t52);
    goto LAB2;

LAB29:    t47 = 0;

LAB32:    if (t47 < 4U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t48 = (t44 + t47);
    t49 = (t43 + t47);
    if (*((unsigned char *)t48) != *((unsigned char *)t49))
        goto LAB30;

LAB34:    t47 = (t47 + 1);
    goto LAB32;

LAB35:    t64 = (t0 + 7545);
    t66 = (t0 + 4944);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    memcpy(t70, t64, 7U);
    xsi_driver_first_trans_fast_port(t66);
    goto LAB2;

LAB37:    t61 = 0;

LAB40:    if (t61 < 4U)
        goto LAB41;
    else
        goto LAB39;

LAB41:    t62 = (t58 + t61);
    t63 = (t57 + t61);
    if (*((unsigned char *)t62) != *((unsigned char *)t63))
        goto LAB38;

LAB42:    t61 = (t61 + 1);
    goto LAB40;

LAB43:    t78 = (t0 + 7556);
    t80 = (t0 + 4944);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    t83 = (t82 + 56U);
    t84 = *((char **)t83);
    memcpy(t84, t78, 7U);
    xsi_driver_first_trans_fast_port(t80);
    goto LAB2;

LAB45:    t75 = 0;

LAB48:    if (t75 < 4U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t76 = (t72 + t75);
    t77 = (t71 + t75);
    if (*((unsigned char *)t76) != *((unsigned char *)t77))
        goto LAB46;

LAB50:    t75 = (t75 + 1);
    goto LAB48;

LAB51:    t92 = (t0 + 7567);
    t94 = (t0 + 4944);
    t95 = (t94 + 56U);
    t96 = *((char **)t95);
    t97 = (t96 + 56U);
    t98 = *((char **)t97);
    memcpy(t98, t92, 7U);
    xsi_driver_first_trans_fast_port(t94);
    goto LAB2;

LAB53:    t89 = 0;

LAB56:    if (t89 < 4U)
        goto LAB57;
    else
        goto LAB55;

LAB57:    t90 = (t86 + t89);
    t91 = (t85 + t89);
    if (*((unsigned char *)t90) != *((unsigned char *)t91))
        goto LAB54;

LAB58:    t89 = (t89 + 1);
    goto LAB56;

LAB59:    t106 = (t0 + 7578);
    t108 = (t0 + 4944);
    t109 = (t108 + 56U);
    t110 = *((char **)t109);
    t111 = (t110 + 56U);
    t112 = *((char **)t111);
    memcpy(t112, t106, 7U);
    xsi_driver_first_trans_fast_port(t108);
    goto LAB2;

LAB61:    t103 = 0;

LAB64:    if (t103 < 4U)
        goto LAB65;
    else
        goto LAB63;

LAB65:    t104 = (t100 + t103);
    t105 = (t99 + t103);
    if (*((unsigned char *)t104) != *((unsigned char *)t105))
        goto LAB62;

LAB66:    t103 = (t103 + 1);
    goto LAB64;

LAB67:    t120 = (t0 + 7589);
    t122 = (t0 + 4944);
    t123 = (t122 + 56U);
    t124 = *((char **)t123);
    t125 = (t124 + 56U);
    t126 = *((char **)t125);
    memcpy(t126, t120, 7U);
    xsi_driver_first_trans_fast_port(t122);
    goto LAB2;

LAB69:    t117 = 0;

LAB72:    if (t117 < 4U)
        goto LAB73;
    else
        goto LAB71;

LAB73:    t118 = (t114 + t117);
    t119 = (t113 + t117);
    if (*((unsigned char *)t118) != *((unsigned char *)t119))
        goto LAB70;

LAB74:    t117 = (t117 + 1);
    goto LAB72;

LAB75:    t134 = (t0 + 7600);
    t136 = (t0 + 4944);
    t137 = (t136 + 56U);
    t138 = *((char **)t137);
    t139 = (t138 + 56U);
    t140 = *((char **)t139);
    memcpy(t140, t134, 7U);
    xsi_driver_first_trans_fast_port(t136);
    goto LAB2;

LAB77:    t131 = 0;

LAB80:    if (t131 < 4U)
        goto LAB81;
    else
        goto LAB79;

LAB81:    t132 = (t128 + t131);
    t133 = (t127 + t131);
    if (*((unsigned char *)t132) != *((unsigned char *)t133))
        goto LAB78;

LAB82:    t131 = (t131 + 1);
    goto LAB80;

LAB83:    t148 = (t0 + 7611);
    t150 = (t0 + 4944);
    t151 = (t150 + 56U);
    t152 = *((char **)t151);
    t153 = (t152 + 56U);
    t154 = *((char **)t153);
    memcpy(t154, t148, 7U);
    xsi_driver_first_trans_fast_port(t150);
    goto LAB2;

LAB85:    t145 = 0;

LAB88:    if (t145 < 4U)
        goto LAB89;
    else
        goto LAB87;

LAB89:    t146 = (t142 + t145);
    t147 = (t141 + t145);
    if (*((unsigned char *)t146) != *((unsigned char *)t147))
        goto LAB86;

LAB90:    t145 = (t145 + 1);
    goto LAB88;

LAB91:    t162 = (t0 + 7622);
    t164 = (t0 + 4944);
    t165 = (t164 + 56U);
    t166 = *((char **)t165);
    t167 = (t166 + 56U);
    t168 = *((char **)t167);
    memcpy(t168, t162, 7U);
    xsi_driver_first_trans_fast_port(t164);
    goto LAB2;

LAB93:    t159 = 0;

LAB96:    if (t159 < 4U)
        goto LAB97;
    else
        goto LAB95;

LAB97:    t160 = (t156 + t159);
    t161 = (t155 + t159);
    if (*((unsigned char *)t160) != *((unsigned char *)t161))
        goto LAB94;

LAB98:    t159 = (t159 + 1);
    goto LAB96;

LAB99:    t176 = (t0 + 7633);
    t178 = (t0 + 4944);
    t179 = (t178 + 56U);
    t180 = *((char **)t179);
    t181 = (t180 + 56U);
    t182 = *((char **)t181);
    memcpy(t182, t176, 7U);
    xsi_driver_first_trans_fast_port(t178);
    goto LAB2;

LAB101:    t173 = 0;

LAB104:    if (t173 < 4U)
        goto LAB105;
    else
        goto LAB103;

LAB105:    t174 = (t170 + t173);
    t175 = (t169 + t173);
    if (*((unsigned char *)t174) != *((unsigned char *)t175))
        goto LAB102;

LAB106:    t173 = (t173 + 1);
    goto LAB104;

LAB107:    t190 = (t0 + 7644);
    t192 = (t0 + 4944);
    t193 = (t192 + 56U);
    t194 = *((char **)t193);
    t195 = (t194 + 56U);
    t196 = *((char **)t195);
    memcpy(t196, t190, 7U);
    xsi_driver_first_trans_fast_port(t192);
    goto LAB2;

LAB109:    t187 = 0;

LAB112:    if (t187 < 4U)
        goto LAB113;
    else
        goto LAB111;

LAB113:    t188 = (t184 + t187);
    t189 = (t183 + t187);
    if (*((unsigned char *)t188) != *((unsigned char *)t189))
        goto LAB110;

LAB114:    t187 = (t187 + 1);
    goto LAB112;

LAB115:    t204 = (t0 + 7655);
    t206 = (t0 + 4944);
    t207 = (t206 + 56U);
    t208 = *((char **)t207);
    t209 = (t208 + 56U);
    t210 = *((char **)t209);
    memcpy(t210, t204, 7U);
    xsi_driver_first_trans_fast_port(t206);
    goto LAB2;

LAB117:    t201 = 0;

LAB120:    if (t201 < 4U)
        goto LAB121;
    else
        goto LAB119;

LAB121:    t202 = (t198 + t201);
    t203 = (t197 + t201);
    if (*((unsigned char *)t202) != *((unsigned char *)t203))
        goto LAB118;

LAB122:    t201 = (t201 + 1);
    goto LAB120;

LAB123:    t218 = (t0 + 7666);
    t220 = (t0 + 4944);
    t221 = (t220 + 56U);
    t222 = *((char **)t221);
    t223 = (t222 + 56U);
    t224 = *((char **)t223);
    memcpy(t224, t218, 7U);
    xsi_driver_first_trans_fast_port(t220);
    goto LAB2;

LAB125:    t215 = 0;

LAB128:    if (t215 < 4U)
        goto LAB129;
    else
        goto LAB127;

LAB129:    t216 = (t212 + t215);
    t217 = (t211 + t215);
    if (*((unsigned char *)t216) != *((unsigned char *)t217))
        goto LAB126;

LAB130:    t215 = (t215 + 1);
    goto LAB128;

}


extern void work_a_1330427579_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1330427579_3212880686_p_0,(void *)work_a_1330427579_3212880686_p_1,(void *)work_a_1330427579_3212880686_p_2};
	xsi_register_didat("work_a_1330427579_3212880686", "isim/transcoder_7_segments_tb_isim_beh.exe.sim/work/a_1330427579_3212880686.didat");
	xsi_register_executes(pe);
}
