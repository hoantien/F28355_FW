# Generated by Code Composer Studio

# Makefile for E:\Master\chuyende\F28355_FW\test\test.pjt
# This makefile is intended to be compatible with any version of make.
#
# USAGE
# Step 1: Set up proper environment variables, by running DosRun.bat
#         (Windows platform) or set them up by yourself.
# Step 2: Change directory to the directory of this makefile, which is stored
#         in the macro MAKEFILE_DIR
# Step 3: In the makefile directory, you can perform one of these operations:
#         To build the configuration <config>, type make <config>
#         To clean the configuration <config>, type make <config>clean
#         To rebuild the configuration <config>, type make <config>rebuild
#         If <config> is not specified, the operations apply to the active
#         configuration, which is stored in the macro ACTIVE_CONFIG.
# For CCS gmake users: In the makefile directory, you can perform one of these operations:
#         To build the configuration <config>, type gmake projectName.mak <config>
#         To clean the configuration <config>, type gmake <config>clean
#         To rebuild the configuration <config>, type gmake <config>rebuild
#         If <config> is not specified, the operations apply to the active
#         configuration, which is stored in the macro ACTIVE_CONFIG.
#
# DETAILS
# Step 1:
#   In order for this makefile to work, you must have the environment variables
# set properly.  Specifically, the paths to build programs and the system-wide
# header files and library files must be set.
#   In Windows, a batch file "DosRun.bat", located at the root directory of
# the Code Composer Studio installation, is provided to set up these variables.
#   In UNIX, you can set up these environment variables yourself.  The "PATH"
# variable must include the paths to the build programs, and the "C_DIR" and
# "A_DIR" variables must include the paths to the system-wide header files and
# library files.
#
# Step 2:
#   System files referenced by this project are specified in full path names,
# while other files in this project are specified in path names relative to the
# directory of this makefile.  These directory names are stored in DIR_x macros.
# You can modify them to reflect the locations of the files on this system.
#   It is important that the command to make this makefile is issued from the
# directory of this makefile, which is stored in the macro MAKEFILE_DIR.
#
# Step 3:
#   There are three operations that can be performed on a build configuration:
# make, clean, and rebuild. A rebuild forces all files in the configuration to
# be rebuilt.
# To build the configuration <config>, type make <config>
# To clean the configuration <config>, type make <config>clean
# To rebuild the configuration <config>, type make <config>rebuild
#   If <config> is not specified, the operations apply to the active
# configuration. The active configuration can be any valid build configuration
# (including "all") and is specified in the macro ACTIVE_CONFIG.
# To build the active configuration, type make
# To clean the active configuration, type make clean
# To rebuild the active configuration, type make rebuild
#
# For CCS gmake users:
#   There are three operations that can be performed on a build configuration:
# make, clean, and rebuild. A rebuild forces all files in the configuration to
# be rebuilt.
# To build the configuration <config>, type gmake projectName.mak <config>
# To clean the configuration <config>, type gmake <config>clean
# To rebuild the configuration <config>, type gmake <config>rebuild
#   If <config> is not specified, the operations apply to the active
# configuration. The active configuration can be any valid build configuration
# (including "all") and is specified in the macro ACTIVE_CONFIG.
# To build the active configuration, type gmake
# To clean the active configuration, type gmake clean
# To rebuild the active configuration, type gmake rebuild

# The MKFLAGS macro takes the place of the MFLAGS or MAKEFLAGS macro. If it
# gives you any trouble, just delete the macro. It is used when recursively
# calling make (i.e. when rebuilding)
MKFLAGS= $(MFLAGS)$(MAKEFLAGS)

MAKEFILE_DIR= E:/Master/chuyende/F28355_FW/test

# The active configuration can be one of these valid build configurations:
# all, Debug
ACTIVE_CONFIG= Debug

# These DIR_x macros store the directories of the files used in this project.
# There must be no trailing spaces after these macros.

DIR_1= Debug

DIR_2= C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/source

DIR_3= C:/Program Files/Texas Instruments/C2000 Code Generation Tools 5.2.1/bin

DIR_4= C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include

DIR_5= C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include

DIR_6= C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/source

DIR_7= C:/Program Files/Texas Instruments/C2000 Code Generation Tools 5.2.1/include

DIR_8= C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/cmd

DIR_9= C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/cmd

DIR_10= C:/CCStudio_v3.3/C2000/cgtools/lib

SOURCE=$(DIR_10)/rts2800_fpu32.lib
SOURCE=$(DIR_2)/DSP2833x_ADC_cal.asm
SOURCE=$(DIR_2)/DSP2833x_CodeStartBranch.asm
SOURCE=$(DIR_2)/DSP2833x_CpuTimers.c
SOURCE=$(DIR_2)/DSP2833x_DefaultIsr.c
SOURCE=$(DIR_2)/DSP2833x_PieCtrl.c
SOURCE=$(DIR_2)/DSP2833x_PieVect.c
SOURCE=$(DIR_2)/DSP2833x_SysCtrl.c
SOURCE=$(DIR_2)/DSP2833x_usDelay.asm
SOURCE=$(DIR_6)/DSP2833x_GlobalVariableDefs.c
SOURCE=init.c
SOURCE=init.h
SOURCE=main.c
SOURCE=main.h
SOURCE=type.h
SOURCE=$(DIR_8)/28335_RAM_lnk.cmd
SOURCE=$(DIR_9)/DSP2833x_Headers_nonBIOS.cmd

active_config: $(ACTIVE_CONFIG)

norecurse: $(ACTIVE_CONFIG)_norecurse

clean: $(ACTIVE_CONFIG)clean

clean_norecurse: $(ACTIVE_CONFIG)clean_norecurse

rebuild: $(ACTIVE_CONFIG)rebuild

force_rebuild: 

all: Debug 

allclean: Debugclean 

allrebuild: Debugrebuild 


Debugclean: Debugclean_norecurse

Debugclean_norecurse: 
	-@rm -f $(DIR_1)/DSP2833x_ADC_cal.obj
	-@rm -f $(DIR_1)/DSP2833x_CodeStartBranch.obj
	-@rm -f $(DIR_1)/DSP2833x_CpuTimers.obj
	-@rm -f $(DIR_1)/DSP2833x_DefaultIsr.obj
	-@rm -f $(DIR_1)/DSP2833x_PieCtrl.obj
	-@rm -f $(DIR_1)/DSP2833x_PieVect.obj
	-@rm -f $(DIR_1)/DSP2833x_SysCtrl.obj
	-@rm -f $(DIR_1)/DSP2833x_usDelay.obj
	-@rm -f $(DIR_1)/DSP2833x_GlobalVariableDefs.obj
	-@rm -f $(DIR_1)/init.obj
	-@rm -f $(DIR_1)/main.obj
	-@rm -f $(DIR_1)/test.out

Debugrebuild: 
	$(MAKE) $(MFLAGS) -f test.mak Debug FRC=force_rebuild

Debug: Debug_norecurse

Debug_norecurse: $(DIR_1)/test.out



$(DIR_1)/DSP2833x_ADC_cal.obj: $(FRC) $(DIR_2)/DSP2833x_ADC_cal.asm 
	cd $(DIR_2) ; \
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "DSP2833x_ADC_cal.asm" 

$(DIR_1)/DSP2833x_CodeStartBranch.obj: $(FRC) $(DIR_2)/DSP2833x_CodeStartBranch.asm 
	cd $(DIR_2) ; \
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "DSP2833x_CodeStartBranch.asm" 

$(DIR_1)/DSP2833x_CpuTimers.obj: $(FRC) $(DIR_2)/DSP2833x_CpuTimers.c $(DIR_4)/DSP2833x_Device.h $(DIR_5)/DSP2833x_Examples.h $(DIR_4)/DSP2833x_Adc.h $(DIR_4)/DSP2833x_CpuTimers.h $(DIR_4)/DSP2833x_DevEmu.h $(DIR_4)/DSP2833x_DMA.h $(DIR_4)/DSP2833x_ECan.h $(DIR_4)/DSP2833x_ECap.h $(DIR_4)/DSP2833x_EPwm.h $(DIR_4)/DSP2833x_EQep.h $(DIR_4)/DSP2833x_Gpio.h $(DIR_4)/DSP2833x_I2c.h $(DIR_4)/DSP2833x_McBSP.h $(DIR_4)/DSP2833x_PieCtrl.h $(DIR_4)/DSP2833x_PieVect.h $(DIR_4)/DSP2833x_Sci.h $(DIR_4)/DSP2833x_Spi.h $(DIR_4)/DSP2833x_SysCtrl.h $(DIR_4)/DSP2833x_Xintf.h $(DIR_4)/DSP2833x_XIntrupt.h $(DIR_5)/DSP2833x_DefaultISR.h $(DIR_5)/DSP2833x_Dma_defines.h $(DIR_5)/DSP2833x_ePwm_defines.h $(DIR_5)/DSP2833x_GlobalPrototypes.h $(DIR_5)/DSP2833x_I2C_defines.h 
	cd $(DIR_2) ; \
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "DSP2833x_CpuTimers.c" 

$(DIR_1)/DSP2833x_DefaultIsr.obj: $(FRC) $(DIR_2)/DSP2833x_DefaultIsr.c $(DIR_4)/DSP2833x_Device.h $(DIR_5)/DSP2833x_Examples.h $(DIR_4)/DSP2833x_Adc.h $(DIR_4)/DSP2833x_CpuTimers.h $(DIR_4)/DSP2833x_DevEmu.h $(DIR_4)/DSP2833x_DMA.h $(DIR_4)/DSP2833x_ECan.h $(DIR_4)/DSP2833x_ECap.h $(DIR_4)/DSP2833x_EPwm.h $(DIR_4)/DSP2833x_EQep.h $(DIR_4)/DSP2833x_Gpio.h $(DIR_4)/DSP2833x_I2c.h $(DIR_4)/DSP2833x_McBSP.h $(DIR_4)/DSP2833x_PieCtrl.h $(DIR_4)/DSP2833x_PieVect.h $(DIR_4)/DSP2833x_Sci.h $(DIR_4)/DSP2833x_Spi.h $(DIR_4)/DSP2833x_SysCtrl.h $(DIR_4)/DSP2833x_Xintf.h $(DIR_4)/DSP2833x_XIntrupt.h $(DIR_5)/DSP2833x_DefaultISR.h $(DIR_5)/DSP2833x_Dma_defines.h $(DIR_5)/DSP2833x_ePwm_defines.h $(DIR_5)/DSP2833x_GlobalPrototypes.h $(DIR_5)/DSP2833x_I2C_defines.h 
	cd $(DIR_2) ; \
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "DSP2833x_DefaultIsr.c" 

$(DIR_1)/DSP2833x_PieCtrl.obj: $(FRC) $(DIR_2)/DSP2833x_PieCtrl.c $(DIR_4)/DSP2833x_Device.h $(DIR_5)/DSP2833x_Examples.h $(DIR_4)/DSP2833x_Adc.h $(DIR_4)/DSP2833x_CpuTimers.h $(DIR_4)/DSP2833x_DevEmu.h $(DIR_4)/DSP2833x_DMA.h $(DIR_4)/DSP2833x_ECan.h $(DIR_4)/DSP2833x_ECap.h $(DIR_4)/DSP2833x_EPwm.h $(DIR_4)/DSP2833x_EQep.h $(DIR_4)/DSP2833x_Gpio.h $(DIR_4)/DSP2833x_I2c.h $(DIR_4)/DSP2833x_McBSP.h $(DIR_4)/DSP2833x_PieCtrl.h $(DIR_4)/DSP2833x_PieVect.h $(DIR_4)/DSP2833x_Sci.h $(DIR_4)/DSP2833x_Spi.h $(DIR_4)/DSP2833x_SysCtrl.h $(DIR_4)/DSP2833x_Xintf.h $(DIR_4)/DSP2833x_XIntrupt.h $(DIR_5)/DSP2833x_DefaultISR.h $(DIR_5)/DSP2833x_Dma_defines.h $(DIR_5)/DSP2833x_ePwm_defines.h $(DIR_5)/DSP2833x_GlobalPrototypes.h $(DIR_5)/DSP2833x_I2C_defines.h 
	cd $(DIR_2) ; \
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "DSP2833x_PieCtrl.c" 

$(DIR_1)/DSP2833x_PieVect.obj: $(FRC) $(DIR_2)/DSP2833x_PieVect.c $(DIR_4)/DSP2833x_Device.h $(DIR_5)/DSP2833x_Examples.h $(DIR_4)/DSP2833x_Adc.h $(DIR_4)/DSP2833x_CpuTimers.h $(DIR_4)/DSP2833x_DevEmu.h $(DIR_4)/DSP2833x_DMA.h $(DIR_4)/DSP2833x_ECan.h $(DIR_4)/DSP2833x_ECap.h $(DIR_4)/DSP2833x_EPwm.h $(DIR_4)/DSP2833x_EQep.h $(DIR_4)/DSP2833x_Gpio.h $(DIR_4)/DSP2833x_I2c.h $(DIR_4)/DSP2833x_McBSP.h $(DIR_4)/DSP2833x_PieCtrl.h $(DIR_4)/DSP2833x_PieVect.h $(DIR_4)/DSP2833x_Sci.h $(DIR_4)/DSP2833x_Spi.h $(DIR_4)/DSP2833x_SysCtrl.h $(DIR_4)/DSP2833x_Xintf.h $(DIR_4)/DSP2833x_XIntrupt.h $(DIR_5)/DSP2833x_DefaultISR.h $(DIR_5)/DSP2833x_Dma_defines.h $(DIR_5)/DSP2833x_ePwm_defines.h $(DIR_5)/DSP2833x_GlobalPrototypes.h $(DIR_5)/DSP2833x_I2C_defines.h 
	cd $(DIR_2) ; \
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "DSP2833x_PieVect.c" 

$(DIR_1)/DSP2833x_SysCtrl.obj: $(FRC) $(DIR_2)/DSP2833x_SysCtrl.c $(DIR_4)/DSP2833x_Device.h $(DIR_5)/DSP2833x_Examples.h $(DIR_4)/DSP2833x_Adc.h $(DIR_4)/DSP2833x_CpuTimers.h $(DIR_4)/DSP2833x_DevEmu.h $(DIR_4)/DSP2833x_DMA.h $(DIR_4)/DSP2833x_ECan.h $(DIR_4)/DSP2833x_ECap.h $(DIR_4)/DSP2833x_EPwm.h $(DIR_4)/DSP2833x_EQep.h $(DIR_4)/DSP2833x_Gpio.h $(DIR_4)/DSP2833x_I2c.h $(DIR_4)/DSP2833x_McBSP.h $(DIR_4)/DSP2833x_PieCtrl.h $(DIR_4)/DSP2833x_PieVect.h $(DIR_4)/DSP2833x_Sci.h $(DIR_4)/DSP2833x_Spi.h $(DIR_4)/DSP2833x_SysCtrl.h $(DIR_4)/DSP2833x_Xintf.h $(DIR_4)/DSP2833x_XIntrupt.h $(DIR_5)/DSP2833x_DefaultISR.h $(DIR_5)/DSP2833x_Dma_defines.h $(DIR_5)/DSP2833x_ePwm_defines.h $(DIR_5)/DSP2833x_GlobalPrototypes.h $(DIR_5)/DSP2833x_I2C_defines.h 
	cd $(DIR_2) ; \
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "DSP2833x_SysCtrl.c" 

$(DIR_1)/DSP2833x_usDelay.obj: $(FRC) $(DIR_2)/DSP2833x_usDelay.asm 
	cd $(DIR_2) ; \
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "DSP2833x_usDelay.asm" 

$(DIR_1)/DSP2833x_GlobalVariableDefs.obj: $(FRC) $(DIR_6)/DSP2833x_GlobalVariableDefs.c $(DIR_4)/DSP2833x_Device.h $(DIR_4)/DSP2833x_Adc.h $(DIR_4)/DSP2833x_CpuTimers.h $(DIR_4)/DSP2833x_DevEmu.h $(DIR_4)/DSP2833x_DMA.h $(DIR_4)/DSP2833x_ECan.h $(DIR_4)/DSP2833x_ECap.h $(DIR_4)/DSP2833x_EPwm.h $(DIR_4)/DSP2833x_EQep.h $(DIR_4)/DSP2833x_Gpio.h $(DIR_4)/DSP2833x_I2c.h $(DIR_4)/DSP2833x_McBSP.h $(DIR_4)/DSP2833x_PieCtrl.h $(DIR_4)/DSP2833x_PieVect.h $(DIR_4)/DSP2833x_Sci.h $(DIR_4)/DSP2833x_Spi.h $(DIR_4)/DSP2833x_SysCtrl.h $(DIR_4)/DSP2833x_Xintf.h $(DIR_4)/DSP2833x_XIntrupt.h 
	cd $(DIR_6) ; \
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "DSP2833x_GlobalVariableDefs.c" 

$(DIR_1)/init.obj: $(FRC) init.c main.h init.h $(DIR_7)/math.h $(DIR_4)/DSP2833x_Device.h type.h $(DIR_4)/DSP2833x_Adc.h $(DIR_4)/DSP2833x_CpuTimers.h $(DIR_4)/DSP2833x_DevEmu.h $(DIR_4)/DSP2833x_DMA.h $(DIR_4)/DSP2833x_ECan.h $(DIR_4)/DSP2833x_ECap.h $(DIR_4)/DSP2833x_EPwm.h $(DIR_4)/DSP2833x_EQep.h $(DIR_4)/DSP2833x_Gpio.h $(DIR_4)/DSP2833x_I2c.h $(DIR_4)/DSP2833x_McBSP.h $(DIR_4)/DSP2833x_PieCtrl.h $(DIR_4)/DSP2833x_PieVect.h $(DIR_4)/DSP2833x_Sci.h $(DIR_4)/DSP2833x_Spi.h $(DIR_4)/DSP2833x_SysCtrl.h $(DIR_4)/DSP2833x_Xintf.h $(DIR_4)/DSP2833x_XIntrupt.h $(DIR_7)/stdint.h 
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "init.c" 

$(DIR_1)/main.obj: $(FRC) main.c main.h $(DIR_7)/math.h $(DIR_4)/DSP2833x_Device.h type.h init.h $(DIR_4)/DSP2833x_Adc.h $(DIR_4)/DSP2833x_CpuTimers.h $(DIR_4)/DSP2833x_DevEmu.h $(DIR_4)/DSP2833x_DMA.h $(DIR_4)/DSP2833x_ECan.h $(DIR_4)/DSP2833x_ECap.h $(DIR_4)/DSP2833x_EPwm.h $(DIR_4)/DSP2833x_EQep.h $(DIR_4)/DSP2833x_Gpio.h $(DIR_4)/DSP2833x_I2c.h $(DIR_4)/DSP2833x_McBSP.h $(DIR_4)/DSP2833x_PieCtrl.h $(DIR_4)/DSP2833x_PieVect.h $(DIR_4)/DSP2833x_Sci.h $(DIR_4)/DSP2833x_Spi.h $(DIR_4)/DSP2833x_SysCtrl.h $(DIR_4)/DSP2833x_Xintf.h $(DIR_4)/DSP2833x_XIntrupt.h $(DIR_7)/stdint.h 
	"$(DIR_3)/cl2000" -g -pdsw225 -fr"E:/Master/chuyende/F28355_FW/test/Debug" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_headers/include" -i"C:/tidcs/c28/DSP2833x/v131/DSP2833x_common/include" -d"_DEBUG" -d"LARGE_MODEL" -ml -v28 --float_support=fpu32 "main.c" 

$(DIR_1)/test.out: $(DIR_8)/28335_RAM_lnk.cmd $(DIR_9)/DSP2833x_Headers_nonBIOS.cmd $(DIR_1)/DSP2833x_ADC_cal.obj $(DIR_1)/DSP2833x_CodeStartBranch.obj $(DIR_1)/DSP2833x_CpuTimers.obj $(DIR_1)/DSP2833x_DefaultIsr.obj $(DIR_1)/DSP2833x_GlobalVariableDefs.obj $(DIR_1)/DSP2833x_PieCtrl.obj $(DIR_1)/DSP2833x_PieVect.obj $(DIR_1)/DSP2833x_SysCtrl.obj $(DIR_1)/DSP2833x_usDelay.obj $(DIR_1)/init.obj $(DIR_1)/main.obj $(DIR_10)/rts2800_fpu32.lib 
	-@echo -z -c -m"./Debug/test.map" -o"./Debug/test.out" -stack400 -w -x> test.Debug.lkf
	-@echo "$(DIR_8)/28335_RAM_lnk.cmd">> test.Debug.lkf
	-@echo "$(DIR_9)/DSP2833x_Headers_nonBIOS.cmd">> test.Debug.lkf
	-@echo "$(DIR_1)/DSP2833x_ADC_cal.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/DSP2833x_CodeStartBranch.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/DSP2833x_CpuTimers.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/DSP2833x_DefaultIsr.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/DSP2833x_GlobalVariableDefs.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/DSP2833x_PieCtrl.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/DSP2833x_PieVect.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/DSP2833x_SysCtrl.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/DSP2833x_usDelay.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/init.obj">> test.Debug.lkf
	-@echo "$(DIR_1)/main.obj">> test.Debug.lkf
	-@echo "$(DIR_10)/rts2800_fpu32.lib">> test.Debug.lkf
	"$(DIR_3)/cl2000" -@"test.Debug.lkf"
	-@rm -f test.Debug.lkf
