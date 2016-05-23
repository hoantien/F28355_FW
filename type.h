/*******************************************************************************
 * Copyright (c) 2015, Luong Hoan Tien
 * This source code is used for the Tien's project in master program at 
 * University of Technology and Education HCM city. All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are strictly prohibited without prior permission 
 * of Luong Hoan Tien.
 *
 * @file    type.h
 * @author  Luong Hoan Tien
 * @version V1.0.0
 * @date    Dec-2015
 * @brief   This file contains expand of type
 *
 ******************************************************************************/
#ifndef __TYPES_H
#define __TYPES_H

#ifdef __cplusplus
 extern "C" {
#endif
                                              
/* Includes ------------------------------------------------------------------*/
#include <stdint.h>

/* Global types --------------------------------------------------------------*/
typedef uint32_t 	UInt32;
typedef uint64_t	UInt64;
typedef uint16_t 	UInt16;
//typedef uint8_t 	UInt8;
typedef int32_t 	Int32;
typedef int16_t 	Int16;
//typedef int8_t 		Int8;
typedef void 		(*FPtr)(void);
#define EFalse		0
#define ETrue		1

#ifdef __cplusplus
}
#endif

#endif /* __TYPES_H */
/*********** Portions COPYRIGHT 2015 Luong Hoan Tien.*******END OF FILE******/
