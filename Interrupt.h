/*******************************************************************************
 * Copyright (c) 2015, Luong Hoan Tien
 * This source code is used for the Tien's project in master program at 
 * University of Technology and Education HCM city. All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are strictly prohibited without prior permission 
 * of Luong Hoan Tien.
 *
 * @file    interrupt.h
 * @author  Luong Hoan Tien
 * @version V1.0.0
 * @date    Dec-2015
 * @brief   This file contains header of interrupt.
 *
 ******************************************************************************/
#include "DSP28x_Project.h"

extern void InitPieCtrl(void);
extern void InitPieVectTable(void);
extern void InitCpuTimers(void);
interrupt void cpu_timer0_isr(void);
interrupt void epwm1_isr(void);
interrupt void epwm2_isr(void);
/*********** Portions COPYRIGHT 2015 Luong Hoan Tien.*******END OF FILE******/

