/*******************************************************************************
 * Copyright (c) 2015, Luong Hoan Tien
 * This source code is used for the Tien's project in master program at 
 * University of Technology and Education HCM city. All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are strictly prohibited without prior permission 
 * of Luong Hoan Tien.
 *
 * @file    init.h
 * @author  Luong Hoan Tien
 * @version V1.0.0
 * @date    Dec-2015
 * @brief   This file contains header of init.
 *
 ******************************************************************************/
#include "DSP28x_Project.h"

/* Define mocro*/
#define M				0.8
#define A				3750		// Applitude of carrier 10Khz
#define B				A*(1+M)		// Applitude of sin reference
#define PI				3.14159265
#define Dx				0.2		//coefficient of short circuit
#define Dy				2*Dx		//coefficient of short circuit
#define short_dk_full	A-(Dx*A)
#define short_dk_half	A-(Dy*A)
#define sin1(x)			(B*sin(100*PI*x/1000000))
#define sin2(x)			(B*sin(100*PI*x/1000000)+A)
#define sin3(x)			(B*sin(100*PI*x/1000000)+(2*A))
#define sin4(x)			(B*sin(100*PI*x/1000000)-A)
#define f_sin			20000		// 20000us = 50Hz
#define half_f_sin		10000

#define PWM1			GpioDataRegs.GPADAT.bit.GPIO0
#define PWM2			GpioDataRegs.GPADAT.bit.GPIO2
#define PWM3			GpioDataRegs.GPADAT.bit.GPIO3
#define PWM4			GpioDataRegs.GPADAT.bit.GPIO1
#define short_full		GpioDataRegs.GPADAT.bit.GPIO4
#define short_half		GpioDataRegs.GPADAT.bit.GPIO5

#define S1				GpioDataRegs.GPADAT.bit.GPIO31
#define S2				GpioDataRegs.GPADAT.bit.GPIO29
#define S3				GpioDataRegs.GPADAT.bit.GPIO23
#define S4				GpioDataRegs.GPADAT.bit.GPIO21
#define S5				GpioDataRegs.GPCDAT.bit.GPIO85

void Gpio_select(void);
void Setup_ePWM1(void);
void Setup_ePWM2(void);
void Setup_ePWM3(void);
void Setup_ePWM(void);
/*********** Portions COPYRIGHT 2015 Luong Hoan Tien.*******END OF FILE******/
