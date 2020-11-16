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
static const char *ng0 = "C:/Users/anduser/Desktop/POCP/lab3 (TO PASS)/tb_JK.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_1997513863_2372691052_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    int64 t19;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5327);
    *((int *)t2) = 0;
    t3 = (t0 + 5331);
    *((int *)t3) = 8;
    t4 = 0;
    t5 = 8;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(54, ng0);
    t7 = (t0 + 5327);
    t8 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, *((int *)t7), 3);
    t9 = (t0 + 3216);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t8, 3U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t14 = (0 - 2);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t2 = (t3 + t17);
    t18 = *((unsigned char *)t2);
    t7 = (t0 + 3280);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t18;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t14 = (1 - 2);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t2 = (t3 + t17);
    t18 = *((unsigned char *)t2);
    t7 = (t0 + 3344);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t18;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t14 = (2 - 2);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t2 = (t3 + t17);
    t18 = *((unsigned char *)t2);
    t7 = (t0 + 3408);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t18;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(58, ng0);
    t19 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t19);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:    t2 = (t0 + 5327);
    t4 = *((int *)t2);
    t3 = (t0 + 5331);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB12:    t14 = (t4 + 1);
    t4 = t14;
    t7 = (t0 + 5327);
    *((int *)t7) = t4;
    goto LAB4;

LAB8:    goto LAB6;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_1997513863_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1997513863_2372691052_p_0};
	xsi_register_didat("work_a_1997513863_2372691052", "isim/tb_JK_isim_beh.exe.sim/work/a_1997513863_2372691052.didat");
	xsi_register_executes(pe);
}
