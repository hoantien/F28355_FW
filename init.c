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
 * @brief   This file contains expand of init
 *
 ******************************************************************************/
#include "init.h"	

void Gpio_select(void)
{
	EALLOW;
	GpioCtrlRegs.GPAMUX1.all		=	0;		// GPIO15 ... GPIO0 = General Puropse I/O
	GpioCtrlRegs.GPAMUX1.bit.GPIO0	=	1;		// ePWM1A active
	GpioCtrlRegs.GPAMUX1.bit.GPIO1	=	1;		// ePWM1B active
	GpioCtrlRegs.GPAMUX1.bit.GPIO2	=	1;		// ePWM2A active
	GpioCtrlRegs.GPAMUX1.bit.GPIO3	=	1;		// ePWM2B active
	GpioCtrlRegs.GPAMUX1.bit.GPIO4	=	1;		// ePWM3A active
	GpioCtrlRegs.GPAMUX1.bit.GPIO5	=	1;		// ePWM3A active

	GpioCtrlRegs.GPAMUX2.all		=	0;		// GPIO31 ... GPIO16 = General Purpose I/O
	GpioCtrlRegs.GPBMUX1.all		=	0;		// GPIO47 ... GPIO32 = General Purpose I/O
	GpioCtrlRegs.GPBMUX2.all		=	0;		// GPIO63 ... GPIO48 = General Purpose I/O
	GpioCtrlRegs.GPCMUX1.all		=	0;		// GPIO79 ... GPIO64 = General Purpose I/O
	GpioCtrlRegs.GPCMUX2.all		=	0;		// GPIO87 ... GPIO80 = General Purpose I/O
	 
	/*GPIO group A*/
//	GpioCtrlRegs.GPADIR.all			=	0;
	GpioCtrlRegs.GPADIR.bit.GPIO30	=	0;		// GPIO30 input PWM2
	GpioCtrlRegs.GPADIR.bit.GPIO20	=	0;		// GPIO20 input PWM3
	GpioCtrlRegs.GPADIR.bit.GPIO22	=	0;		// GPIO22 input PWM5
	GpioCtrlRegs.GPADIR.bit.GPIO31	=	1;		// GPIO29 output S1
	GpioCtrlRegs.GPADIR.bit.GPIO29	=	1;		// GPIO29 output S2
	GpioCtrlRegs.GPADIR.bit.GPIO23	=	1;		// GPIO23 output S3
	GpioCtrlRegs.GPADIR.bit.GPIO21	=	1;		// GPIO21 output S4

	/*GPIO group B*/
	GpioCtrlRegs.GPBDIR.all			=	0;		// GPIO63-32 as inputs
	GpioCtrlRegs.GPBDIR.bit.GPIO32	=	0;		// GPIO32 input PWM1
	/*GPIO group C*/
	GpioCtrlRegs.GPCDIR.all			=	0;		// GPIO87-64 as inputs
	GpioCtrlRegs.GPCDIR.bit.GPIO87	=	0;		// GPIO87 input PWM4
	GpioCtrlRegs.GPCDIR.bit.GPIO85	=	1;		// GPIO85 output S5
	EDIS;
}  

void Setup_ePWM1(void)
{
	EPwm1Regs.TBCTL.bit.CLKDIV =  0;	// CLKDIV = 1		
	EPwm1Regs.TBCTL.bit.HSPCLKDIV = 1;	// HSPCLKDIV = 2
	EPwm1Regs.TBCTL.bit.CTRMODE = 2;	// count up mode

	EPwm1Regs.AQCTLA.all = 0x0060;		// clear ePWM1A on CMPA up
										// set ePWM1A on CMPA down
	EPwm1Regs.AQCTLB.all = 0x0900;		// set ePWM1B on CMPB up
										// clear ePWM1B on CMPB down

	EPwm1Regs.TBPRD = A;				// 10KHz - PWM signal
	EPwm1Regs.CMPA.half.CMPA =2;		// 0% duty cycle first
	EPwm1Regs.CMPB  = 	0;

	EPwm1Regs.TBCTL.bit.SYNCOSEL = 1;	// generate a syncout if CTR = 0

	EPwm1Regs.ETSEL.bit.INTEN = 1;		// interrupt enable for ePWM1
	EPwm1Regs.ETSEL.bit.INTSEL = 1;		
	EPwm1Regs.ETPS.bit.INTPRD = 1;


}

void Setup_ePWM2(void)
{
	EPwm2Regs.TBCTL.bit.CLKDIV =  0;	// CLKDIV = 1		
	EPwm2Regs.TBCTL.bit.HSPCLKDIV = 1;	// HSPCLKDIV = 2
	EPwm2Regs.TBCTL.bit.CTRMODE = 2;	// count up mode

	EPwm2Regs.AQCTLA.all = 0x0090;		// set ePWM1A on CMPA up
										// clear ePWM1A on CMPA down
	EPwm2Regs.AQCTLB.all = 0x0600;		// clear ePWM1B on CMPB up
										// set ePWM1B on CMPB down

	EPwm2Regs.TBPRD = A;				// 10KHz - PWM signal
	EPwm2Regs.CMPA.half.CMPA = 0;		// 0% duty cycle first
	EPwm2Regs.CMPB  = 	0;

	EPwm2Regs.TBCTL.bit.PHSEN = 1;		// enable phase shift for ePWM2
	EPwm2Regs.TBCTL.bit.SYNCOSEL = 0;	// syncin = syncout
	EPwm2Regs.TBPHS.half.TBPHS = A;		// 1/2 phase shift

	EPwm2Regs.ETSEL.bit.INTEN = 1;		// interrupt enable for ePWM2
	EPwm2Regs.ETSEL.bit.INTSEL = 1;		
	EPwm2Regs.ETPS.bit.INTPRD = 1;
}  

void Setup_ePWM3(void)
{
	EPwm3Regs.TBCTL.bit.CLKDIV =  0;	// CLKDIV = 1		
	EPwm3Regs.TBCTL.bit.HSPCLKDIV = 1;	// HSPCLKDIV = 2
	EPwm3Regs.TBCTL.bit.CTRMODE = 2;	// count up mode

	EPwm3Regs.AQCTLA.all = 0x0060;		// set ePWM1A on CMPA up
										// clear ePWM1A on CMPA down
	EPwm3Regs.AQCTLB.all = 0x0600;		// clear ePWM1B on CMPB up
										// set ePWM1B on CMPB down

	EPwm3Regs.TBPRD = A;			// 10KHz - PWM signal
	EPwm3Regs.CMPA.half.CMPA = short_dk_full;
	EPwm3Regs.CMPB  	= 	short_dk_half;	
}  

void Setup_ePWM(void)
{
	Setup_ePWM1();
	Setup_ePWM2();
	Setup_ePWM3();
}
/*********** Portions COPYRIGHT 2015 Luong Hoan Tien.*******END OF FILE******/
