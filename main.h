/*******************************************************************************
 * Copyright (c) 2015, Luong Hoan Tien
 * This source code is used for the Tien's project in master program at 
 * University of Technology and Education HCM city. All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are strictly prohibited without prior permission 
 * of Luong Hoan Tien.
 *
 * @file    main.h
 * @author  Luong Hoan Tien
 * @version V2.0
 * @date    May-2015
 * @brief   This file contains definitions and header of main.
 *
 ******************************************************************************/
#include <math.h>
#include "init.h"
#include "Interrupt.h"

// external function prototypes
extern void InitSysCtrl(void);
extern void ConfigCpuTimer(struct CPUTIMER_VARS *, float, float);

// Prototype statements for functions found within this file.
void IGBT_Pulse (void);
void Update_PWM (void);

/*********** Portions COPYRIGHT 2015 Luong Hoan Tien.*******END OF FILE******/
