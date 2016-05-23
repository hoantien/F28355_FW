/*******************************************************************************
 * Copyright (c) 2015, Luong Hoan Tien
 * This source code is used for the Tien's project in master program at 
 * University of Technology and Education HCM city. All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are strictly prohibited without prior permission 
 * of Mr.Luong Hoan Tien.
 *
 * @file    main.c
 * @author  Luong Hoan Tien
 * @version V2.0
 * @date    May-2015
 * @brief   This file contains expand of main
 *
 ******************************************************************************/
#include "main.h"

/* Global variable *********************/
Uint8 flag_irq = 0;

void main(void)
{
	InitSysCtrl();		// Basic Core Init from DSP2833x_SysCtrl.c

/* Disable interrupt *****************/
	DINT;				// Disable all interrupts
		
	Gpio_select();
	Setup_ePWM();
	InitPieCtrl();		// basic setup of PIE table; from DSP2833x_PieCtrl.c
	InitPieVectTable();	// default ISR's in PIE

/* Timer1 interrupt config ************/
	EALLOW;
	PieVectTable.TINT0 = &cpu_timer0_isr;
	EDIS;
	InitCpuTimers();	// basic setup CPU Timer0, 1 and 2
	ConfigCpuTimer(&CpuTimer0,150,1);
	PieCtrlRegs.PIEIER1.bit.INTx7 = 1;
	IER |=1;
	
/* PWM1 interrupt config *************/
	EALLOW;
	PieVectTable.EPWM1_INT = &epwm1_isr;
	EDIS;
/* PWM2 interrupt config *************/
	EALLOW;
	PieVectTable.EPWM2_INT = &epwm2_isr;
	EDIS;
	// Enable EPWM1A INT in the PIE: Group 3 interrupt 1
   	PieCtrlRegs.PIEIER3.bit.INTx1 = 1;
	PieCtrlRegs.PIEIER3.bit.INTx2 = 1;
	IER |= M_INT3;			// enable INT3 
/* Enable interrupt *****************/
	EINT;
	ERTM;
/* Start timer0 *********************/
	CpuTimer0.InterruptCount = 0;
	CpuTimer0Regs.TCR.bit.TSS = 0;
	
	while(1)
	{
		if (1==flag_irq)	Update_PWM();
		IGBT_Pulse();
	}
} 

void IGBT_Pulse (void)
{
	Uint8 P1,P2,first_level,second_level;
	Uint8 short_half_upper,short_half_lower, short_full_t;

	P1 = (CpuTimer0.InterruptCount < half_f_sin)? 1 : 0;
	P2 = (~P1)&0x01;
	if ( A<sin1(CpuTimer0.InterruptCount))
	{
		first_level = 0;
	}
	else
	{
		first_level = 1;
	}
	if ( A>sin3(CpuTimer0.InterruptCount))
	{
		second_level = 0;
	}
	else
	{
		second_level = 1;
	}

	short_half_upper = short_half&((~first_level)&0x01);
	short_half_lower = short_half&((~second_level)&0x01);
	short_full_t = (short_full&first_level&P1)|(short_full&second_level&P2);


	S1 = ((~(((PWM1|PWM4)&P1)|((PWM2|PWM3)&P2)))&0x01)|short_half_upper|short_half_lower;
	S3 = (PWM1&P1)|(PWM3&P2)|short_half_lower|short_full_t;
	S2 = (PWM2&P2)|(PWM4&P1)|short_half_upper|short_full_t;
	S4 = (P2|short_full_t)&((~short_half_upper)&0x01);
	S5 = (P1|short_full_t)&((~short_half_lower)&0x01);
}

void Update_PWM (void)
{
	EPwm1Regs.CMPA.half.CMPA 	=	sin1(CpuTimer0.InterruptCount);		
	EPwm1Regs.CMPB				=	sin4(CpuTimer0.InterruptCount);
	EPwm2Regs.CMPA.half.CMPA 	=	sin2(CpuTimer0.InterruptCount);
	EPwm2Regs.CMPB				=	sin3(CpuTimer0.InterruptCount);	
	flag_irq=0;
}
/*********** Portions COPYRIGHT 2015 Luong Hoan Tien.*******END OF FILE******/
















