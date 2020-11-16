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
static const char *ng0 = "C:/Users/anduser/Desktop/POCP/lab3 (TO PASS)/tb_BiStable.vhd";



static void work_a_0612259099_1985558087_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;

LAB0:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1488U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 2280);
    xsi_process_wait(t2, t4);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_0612259099_1985558087_init()
{
	static char *pe[] = {(void *)work_a_0612259099_1985558087_p_0};
	xsi_register_didat("work_a_0612259099_1985558087", "isim/tb_BiStable_isim_beh.exe.sim/work/a_0612259099_1985558087.didat");
	xsi_register_executes(pe);
}
