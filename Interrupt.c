/*******************************************************************************
 * Copyright (c) 2015, Luong Hoan Tien
 * This source code is used for the Tien's project in master program at 
 * University of Technology and Education HCM city. All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are strictly prohibited without prior permission 
 * of Mr.Luong Hoan Tien.
 *
 * @file    Interrupt.c
 * @author  Luong Hoan Tien
 * @version V2.0
 * @date    May-2015
 * @brief   This file contains expand of interrupt
 *
 ******************************************************************************/
#include "Interrupt.h"

extern Uint8 flag_irq;

interrupt void cpu_timer0_isr(void)
{
	CpuTimer0.InterruptCount++;
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
	if (20000 < CpuTimer0.InterruptCount)
	{
		CpuTimer0.InterruptCount = 0;
	}
}

interrupt void epwm1_isr(void)
{
	EPwm1Regs.ETCLR.bit.INT		=	1;	   	
   	PieCtrlRegs.PIEACK.all		=	PIEACK_GROUP3;
	flag_irq =1;
}

interrupt void epwm2_isr(void)
{
	EPwm2Regs.ETCLR.bit.INT		=	1;	   	
   	PieCtrlRegs.PIEACK.all		=	PIEACK_GROUP3;
	flag_irq =1;
}
