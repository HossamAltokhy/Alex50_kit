#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c mDIO.c mLEDS.c mBUZZ.c mRELAY.c mBUTTON.c mKeypad.c m7SEG.c mLCD8.c mLCD.c mINT.c mADC.c mTimer.c mUART.c mSPI.c EEPROM_25LC010A.c mTWI.c EEPROM_24C16_I2C.c RTOS/croutine.c RTOS/event_groups.c RTOS/heap_4.c RTOS/list.c RTOS/port.c RTOS/queue.c RTOS/stream_buffer.c RTOS/tasks.c RTOS/timers.c mEEPROM.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/mDIO.o ${OBJECTDIR}/mLEDS.o ${OBJECTDIR}/mBUZZ.o ${OBJECTDIR}/mRELAY.o ${OBJECTDIR}/mBUTTON.o ${OBJECTDIR}/mKeypad.o ${OBJECTDIR}/m7SEG.o ${OBJECTDIR}/mLCD8.o ${OBJECTDIR}/mLCD.o ${OBJECTDIR}/mINT.o ${OBJECTDIR}/mADC.o ${OBJECTDIR}/mTimer.o ${OBJECTDIR}/mUART.o ${OBJECTDIR}/mSPI.o ${OBJECTDIR}/EEPROM_25LC010A.o ${OBJECTDIR}/mTWI.o ${OBJECTDIR}/EEPROM_24C16_I2C.o ${OBJECTDIR}/RTOS/croutine.o ${OBJECTDIR}/RTOS/event_groups.o ${OBJECTDIR}/RTOS/heap_4.o ${OBJECTDIR}/RTOS/list.o ${OBJECTDIR}/RTOS/port.o ${OBJECTDIR}/RTOS/queue.o ${OBJECTDIR}/RTOS/stream_buffer.o ${OBJECTDIR}/RTOS/tasks.o ${OBJECTDIR}/RTOS/timers.o ${OBJECTDIR}/mEEPROM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/mDIO.o.d ${OBJECTDIR}/mLEDS.o.d ${OBJECTDIR}/mBUZZ.o.d ${OBJECTDIR}/mRELAY.o.d ${OBJECTDIR}/mBUTTON.o.d ${OBJECTDIR}/mKeypad.o.d ${OBJECTDIR}/m7SEG.o.d ${OBJECTDIR}/mLCD8.o.d ${OBJECTDIR}/mLCD.o.d ${OBJECTDIR}/mINT.o.d ${OBJECTDIR}/mADC.o.d ${OBJECTDIR}/mTimer.o.d ${OBJECTDIR}/mUART.o.d ${OBJECTDIR}/mSPI.o.d ${OBJECTDIR}/EEPROM_25LC010A.o.d ${OBJECTDIR}/mTWI.o.d ${OBJECTDIR}/EEPROM_24C16_I2C.o.d ${OBJECTDIR}/RTOS/croutine.o.d ${OBJECTDIR}/RTOS/event_groups.o.d ${OBJECTDIR}/RTOS/heap_4.o.d ${OBJECTDIR}/RTOS/list.o.d ${OBJECTDIR}/RTOS/port.o.d ${OBJECTDIR}/RTOS/queue.o.d ${OBJECTDIR}/RTOS/stream_buffer.o.d ${OBJECTDIR}/RTOS/tasks.o.d ${OBJECTDIR}/RTOS/timers.o.d ${OBJECTDIR}/mEEPROM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/mDIO.o ${OBJECTDIR}/mLEDS.o ${OBJECTDIR}/mBUZZ.o ${OBJECTDIR}/mRELAY.o ${OBJECTDIR}/mBUTTON.o ${OBJECTDIR}/mKeypad.o ${OBJECTDIR}/m7SEG.o ${OBJECTDIR}/mLCD8.o ${OBJECTDIR}/mLCD.o ${OBJECTDIR}/mINT.o ${OBJECTDIR}/mADC.o ${OBJECTDIR}/mTimer.o ${OBJECTDIR}/mUART.o ${OBJECTDIR}/mSPI.o ${OBJECTDIR}/EEPROM_25LC010A.o ${OBJECTDIR}/mTWI.o ${OBJECTDIR}/EEPROM_24C16_I2C.o ${OBJECTDIR}/RTOS/croutine.o ${OBJECTDIR}/RTOS/event_groups.o ${OBJECTDIR}/RTOS/heap_4.o ${OBJECTDIR}/RTOS/list.o ${OBJECTDIR}/RTOS/port.o ${OBJECTDIR}/RTOS/queue.o ${OBJECTDIR}/RTOS/stream_buffer.o ${OBJECTDIR}/RTOS/tasks.o ${OBJECTDIR}/RTOS/timers.o ${OBJECTDIR}/mEEPROM.o

# Source Files
SOURCEFILES=main.c mDIO.c mLEDS.c mBUZZ.c mRELAY.c mBUTTON.c mKeypad.c m7SEG.c mLCD8.c mLCD.c mINT.c mADC.c mTimer.c mUART.c mSPI.c EEPROM_25LC010A.c mTWI.c EEPROM_24C16_I2C.c RTOS/croutine.c RTOS/event_groups.c RTOS/heap_4.c RTOS/list.c RTOS/port.c RTOS/queue.c RTOS/stream_buffer.c RTOS/tasks.c RTOS/timers.c mEEPROM.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega32A
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/44b8802dd3a5a1f3d3197a2a23a1506bdff1b9c8 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/mDIO.o: mDIO.c  .generated_files/flags/default/b025f2c58a4a62bcf4468934f56b0243dbbeadd .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mDIO.o.d 
	@${RM} ${OBJECTDIR}/mDIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mDIO.o.d" -MT "${OBJECTDIR}/mDIO.o.d" -MT ${OBJECTDIR}/mDIO.o -o ${OBJECTDIR}/mDIO.o mDIO.c 
	
${OBJECTDIR}/mLEDS.o: mLEDS.c  .generated_files/flags/default/a7e5556434110725c05802cb688adcddb61208f6 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLEDS.o.d 
	@${RM} ${OBJECTDIR}/mLEDS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLEDS.o.d" -MT "${OBJECTDIR}/mLEDS.o.d" -MT ${OBJECTDIR}/mLEDS.o -o ${OBJECTDIR}/mLEDS.o mLEDS.c 
	
${OBJECTDIR}/mBUZZ.o: mBUZZ.c  .generated_files/flags/default/f04e443fff6eb430ffdb105b56bda03676af3e7c .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mBUZZ.o.d 
	@${RM} ${OBJECTDIR}/mBUZZ.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mBUZZ.o.d" -MT "${OBJECTDIR}/mBUZZ.o.d" -MT ${OBJECTDIR}/mBUZZ.o -o ${OBJECTDIR}/mBUZZ.o mBUZZ.c 
	
${OBJECTDIR}/mRELAY.o: mRELAY.c  .generated_files/flags/default/42aadfde004be7fb2116b23188cac076002839a .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mRELAY.o.d 
	@${RM} ${OBJECTDIR}/mRELAY.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mRELAY.o.d" -MT "${OBJECTDIR}/mRELAY.o.d" -MT ${OBJECTDIR}/mRELAY.o -o ${OBJECTDIR}/mRELAY.o mRELAY.c 
	
${OBJECTDIR}/mBUTTON.o: mBUTTON.c  .generated_files/flags/default/b8bce8f9061744076d50cc779c658dcf35da0bef .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mBUTTON.o.d 
	@${RM} ${OBJECTDIR}/mBUTTON.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mBUTTON.o.d" -MT "${OBJECTDIR}/mBUTTON.o.d" -MT ${OBJECTDIR}/mBUTTON.o -o ${OBJECTDIR}/mBUTTON.o mBUTTON.c 
	
${OBJECTDIR}/mKeypad.o: mKeypad.c  .generated_files/flags/default/5a534fad518f93bafa339a8e913ce56df86919bf .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mKeypad.o.d 
	@${RM} ${OBJECTDIR}/mKeypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mKeypad.o.d" -MT "${OBJECTDIR}/mKeypad.o.d" -MT ${OBJECTDIR}/mKeypad.o -o ${OBJECTDIR}/mKeypad.o mKeypad.c 
	
${OBJECTDIR}/m7SEG.o: m7SEG.c  .generated_files/flags/default/decef68ffd4651098c3ccf9005cf066681a0aacf .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/m7SEG.o.d 
	@${RM} ${OBJECTDIR}/m7SEG.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/m7SEG.o.d" -MT "${OBJECTDIR}/m7SEG.o.d" -MT ${OBJECTDIR}/m7SEG.o -o ${OBJECTDIR}/m7SEG.o m7SEG.c 
	
${OBJECTDIR}/mLCD8.o: mLCD8.c  .generated_files/flags/default/dcd0ee3c4ca53167b43e746c90ff723f7150684b .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD8.o.d 
	@${RM} ${OBJECTDIR}/mLCD8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD8.o.d" -MT "${OBJECTDIR}/mLCD8.o.d" -MT ${OBJECTDIR}/mLCD8.o -o ${OBJECTDIR}/mLCD8.o mLCD8.c 
	
${OBJECTDIR}/mLCD.o: mLCD.c  .generated_files/flags/default/c9fb618b45e117ac9e3dd5ebb49b542cacf7b867 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD.o.d 
	@${RM} ${OBJECTDIR}/mLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD.o.d" -MT "${OBJECTDIR}/mLCD.o.d" -MT ${OBJECTDIR}/mLCD.o -o ${OBJECTDIR}/mLCD.o mLCD.c 
	
${OBJECTDIR}/mINT.o: mINT.c  .generated_files/flags/default/3d6bb14f9ad63ac81e93a7d14ba2f60640b6ce12 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mINT.o.d 
	@${RM} ${OBJECTDIR}/mINT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mINT.o.d" -MT "${OBJECTDIR}/mINT.o.d" -MT ${OBJECTDIR}/mINT.o -o ${OBJECTDIR}/mINT.o mINT.c 
	
${OBJECTDIR}/mADC.o: mADC.c  .generated_files/flags/default/efa794f827a23a07cdb2cc59061d676e65d9cb77 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mADC.o.d 
	@${RM} ${OBJECTDIR}/mADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mADC.o.d" -MT "${OBJECTDIR}/mADC.o.d" -MT ${OBJECTDIR}/mADC.o -o ${OBJECTDIR}/mADC.o mADC.c 
	
${OBJECTDIR}/mTimer.o: mTimer.c  .generated_files/flags/default/efb31925275cd5032f56921b2f0a31237ceed72e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mTimer.o.d 
	@${RM} ${OBJECTDIR}/mTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mTimer.o.d" -MT "${OBJECTDIR}/mTimer.o.d" -MT ${OBJECTDIR}/mTimer.o -o ${OBJECTDIR}/mTimer.o mTimer.c 
	
${OBJECTDIR}/mUART.o: mUART.c  .generated_files/flags/default/95441a165f07e60fe1b62871d5dac80764b78293 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mUART.o.d 
	@${RM} ${OBJECTDIR}/mUART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mUART.o.d" -MT "${OBJECTDIR}/mUART.o.d" -MT ${OBJECTDIR}/mUART.o -o ${OBJECTDIR}/mUART.o mUART.c 
	
${OBJECTDIR}/mSPI.o: mSPI.c  .generated_files/flags/default/c8006bc403fe2c6d237541a232ecf199ec835e4 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mSPI.o.d 
	@${RM} ${OBJECTDIR}/mSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mSPI.o.d" -MT "${OBJECTDIR}/mSPI.o.d" -MT ${OBJECTDIR}/mSPI.o -o ${OBJECTDIR}/mSPI.o mSPI.c 
	
${OBJECTDIR}/EEPROM_25LC010A.o: EEPROM_25LC010A.c  .generated_files/flags/default/f2627173d931eaaab1c7bf479f2618d0cd993883 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EEPROM_25LC010A.o.d 
	@${RM} ${OBJECTDIR}/EEPROM_25LC010A.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EEPROM_25LC010A.o.d" -MT "${OBJECTDIR}/EEPROM_25LC010A.o.d" -MT ${OBJECTDIR}/EEPROM_25LC010A.o -o ${OBJECTDIR}/EEPROM_25LC010A.o EEPROM_25LC010A.c 
	
${OBJECTDIR}/mTWI.o: mTWI.c  .generated_files/flags/default/b2eecd741b2f9692a27a53a219ecc92ca70b1be1 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mTWI.o.d 
	@${RM} ${OBJECTDIR}/mTWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mTWI.o.d" -MT "${OBJECTDIR}/mTWI.o.d" -MT ${OBJECTDIR}/mTWI.o -o ${OBJECTDIR}/mTWI.o mTWI.c 
	
${OBJECTDIR}/EEPROM_24C16_I2C.o: EEPROM_24C16_I2C.c  .generated_files/flags/default/6d47d28ebc11e522266ac8888f3a8f6136548e89 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EEPROM_24C16_I2C.o.d 
	@${RM} ${OBJECTDIR}/EEPROM_24C16_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EEPROM_24C16_I2C.o.d" -MT "${OBJECTDIR}/EEPROM_24C16_I2C.o.d" -MT ${OBJECTDIR}/EEPROM_24C16_I2C.o -o ${OBJECTDIR}/EEPROM_24C16_I2C.o EEPROM_24C16_I2C.c 
	
${OBJECTDIR}/RTOS/croutine.o: RTOS/croutine.c  .generated_files/flags/default/c6ab7bffbee29736102730c810197bda8f330f56 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/croutine.o.d 
	@${RM} ${OBJECTDIR}/RTOS/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/croutine.o.d" -MT "${OBJECTDIR}/RTOS/croutine.o.d" -MT ${OBJECTDIR}/RTOS/croutine.o -o ${OBJECTDIR}/RTOS/croutine.o RTOS/croutine.c 
	
${OBJECTDIR}/RTOS/event_groups.o: RTOS/event_groups.c  .generated_files/flags/default/c76215f2f79384605fe6032e1a9ac6d60c1bca84 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/event_groups.o.d 
	@${RM} ${OBJECTDIR}/RTOS/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/event_groups.o.d" -MT "${OBJECTDIR}/RTOS/event_groups.o.d" -MT ${OBJECTDIR}/RTOS/event_groups.o -o ${OBJECTDIR}/RTOS/event_groups.o RTOS/event_groups.c 
	
${OBJECTDIR}/RTOS/heap_4.o: RTOS/heap_4.c  .generated_files/flags/default/1ad775c283d67fdf050c51b7820da618b78e88b3 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/heap_4.o.d 
	@${RM} ${OBJECTDIR}/RTOS/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/heap_4.o.d" -MT "${OBJECTDIR}/RTOS/heap_4.o.d" -MT ${OBJECTDIR}/RTOS/heap_4.o -o ${OBJECTDIR}/RTOS/heap_4.o RTOS/heap_4.c 
	
${OBJECTDIR}/RTOS/list.o: RTOS/list.c  .generated_files/flags/default/2061cfc1a2ac321204a50f5a1f46f7d84a635308 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/list.o.d 
	@${RM} ${OBJECTDIR}/RTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/list.o.d" -MT "${OBJECTDIR}/RTOS/list.o.d" -MT ${OBJECTDIR}/RTOS/list.o -o ${OBJECTDIR}/RTOS/list.o RTOS/list.c 
	
${OBJECTDIR}/RTOS/port.o: RTOS/port.c  .generated_files/flags/default/bb3fead9e767b490f50b63c2bf1742037ba0a34e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/port.o.d 
	@${RM} ${OBJECTDIR}/RTOS/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/port.o.d" -MT "${OBJECTDIR}/RTOS/port.o.d" -MT ${OBJECTDIR}/RTOS/port.o -o ${OBJECTDIR}/RTOS/port.o RTOS/port.c 
	
${OBJECTDIR}/RTOS/queue.o: RTOS/queue.c  .generated_files/flags/default/7e3bb14f9c9194a75de6872409a588266f8bccf4 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/RTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/queue.o.d" -MT "${OBJECTDIR}/RTOS/queue.o.d" -MT ${OBJECTDIR}/RTOS/queue.o -o ${OBJECTDIR}/RTOS/queue.o RTOS/queue.c 
	
${OBJECTDIR}/RTOS/stream_buffer.o: RTOS/stream_buffer.c  .generated_files/flags/default/dc656b6eab49ac63fb3f7dd019737f74ebc718d8 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/RTOS/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/stream_buffer.o.d" -MT "${OBJECTDIR}/RTOS/stream_buffer.o.d" -MT ${OBJECTDIR}/RTOS/stream_buffer.o -o ${OBJECTDIR}/RTOS/stream_buffer.o RTOS/stream_buffer.c 
	
${OBJECTDIR}/RTOS/tasks.o: RTOS/tasks.c  .generated_files/flags/default/da37b9b807186d8a2fa3b6a09416afbb01b3ffd8 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/RTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/tasks.o.d" -MT "${OBJECTDIR}/RTOS/tasks.o.d" -MT ${OBJECTDIR}/RTOS/tasks.o -o ${OBJECTDIR}/RTOS/tasks.o RTOS/tasks.c 
	
${OBJECTDIR}/RTOS/timers.o: RTOS/timers.c  .generated_files/flags/default/8993843a575d79ff6292a19383926c0092821411 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/RTOS/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/timers.o.d" -MT "${OBJECTDIR}/RTOS/timers.o.d" -MT ${OBJECTDIR}/RTOS/timers.o -o ${OBJECTDIR}/RTOS/timers.o RTOS/timers.c 
	
${OBJECTDIR}/mEEPROM.o: mEEPROM.c  .generated_files/flags/default/ce293a306635b8a4496ac0410188cec707b8d12c .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mEEPROM.o.d 
	@${RM} ${OBJECTDIR}/mEEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mEEPROM.o.d" -MT "${OBJECTDIR}/mEEPROM.o.d" -MT ${OBJECTDIR}/mEEPROM.o -o ${OBJECTDIR}/mEEPROM.o mEEPROM.c 
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/7f65fd50876231cac1eba295270a4f7a5dacbb74 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/mDIO.o: mDIO.c  .generated_files/flags/default/4a3a79a454e518038667e6b6f008d2fdd18028c4 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mDIO.o.d 
	@${RM} ${OBJECTDIR}/mDIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mDIO.o.d" -MT "${OBJECTDIR}/mDIO.o.d" -MT ${OBJECTDIR}/mDIO.o -o ${OBJECTDIR}/mDIO.o mDIO.c 
	
${OBJECTDIR}/mLEDS.o: mLEDS.c  .generated_files/flags/default/7a1b83d7c44256aeaa9a6d1ab41e4e074d0e10ab .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLEDS.o.d 
	@${RM} ${OBJECTDIR}/mLEDS.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLEDS.o.d" -MT "${OBJECTDIR}/mLEDS.o.d" -MT ${OBJECTDIR}/mLEDS.o -o ${OBJECTDIR}/mLEDS.o mLEDS.c 
	
${OBJECTDIR}/mBUZZ.o: mBUZZ.c  .generated_files/flags/default/6d820bb62eaeb387d5d2f4a188764ddd3e0a594b .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mBUZZ.o.d 
	@${RM} ${OBJECTDIR}/mBUZZ.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mBUZZ.o.d" -MT "${OBJECTDIR}/mBUZZ.o.d" -MT ${OBJECTDIR}/mBUZZ.o -o ${OBJECTDIR}/mBUZZ.o mBUZZ.c 
	
${OBJECTDIR}/mRELAY.o: mRELAY.c  .generated_files/flags/default/71abcf2fae404dd56c47e16e839d3e97391b8acd .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mRELAY.o.d 
	@${RM} ${OBJECTDIR}/mRELAY.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mRELAY.o.d" -MT "${OBJECTDIR}/mRELAY.o.d" -MT ${OBJECTDIR}/mRELAY.o -o ${OBJECTDIR}/mRELAY.o mRELAY.c 
	
${OBJECTDIR}/mBUTTON.o: mBUTTON.c  .generated_files/flags/default/b31e9983a1dc300137d20aba01ad3f51fd9914fe .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mBUTTON.o.d 
	@${RM} ${OBJECTDIR}/mBUTTON.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mBUTTON.o.d" -MT "${OBJECTDIR}/mBUTTON.o.d" -MT ${OBJECTDIR}/mBUTTON.o -o ${OBJECTDIR}/mBUTTON.o mBUTTON.c 
	
${OBJECTDIR}/mKeypad.o: mKeypad.c  .generated_files/flags/default/2572d6567399359816dfe73020734d6506ade427 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mKeypad.o.d 
	@${RM} ${OBJECTDIR}/mKeypad.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mKeypad.o.d" -MT "${OBJECTDIR}/mKeypad.o.d" -MT ${OBJECTDIR}/mKeypad.o -o ${OBJECTDIR}/mKeypad.o mKeypad.c 
	
${OBJECTDIR}/m7SEG.o: m7SEG.c  .generated_files/flags/default/d60adf0164709fc31f7c42bfe952e8619664d68 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/m7SEG.o.d 
	@${RM} ${OBJECTDIR}/m7SEG.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/m7SEG.o.d" -MT "${OBJECTDIR}/m7SEG.o.d" -MT ${OBJECTDIR}/m7SEG.o -o ${OBJECTDIR}/m7SEG.o m7SEG.c 
	
${OBJECTDIR}/mLCD8.o: mLCD8.c  .generated_files/flags/default/c9aabdadd6612d7343db218b23b4e0a990661a34 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD8.o.d 
	@${RM} ${OBJECTDIR}/mLCD8.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD8.o.d" -MT "${OBJECTDIR}/mLCD8.o.d" -MT ${OBJECTDIR}/mLCD8.o -o ${OBJECTDIR}/mLCD8.o mLCD8.c 
	
${OBJECTDIR}/mLCD.o: mLCD.c  .generated_files/flags/default/7eab9a066c02a71de26c3d641abfb6050f2a973e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mLCD.o.d 
	@${RM} ${OBJECTDIR}/mLCD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mLCD.o.d" -MT "${OBJECTDIR}/mLCD.o.d" -MT ${OBJECTDIR}/mLCD.o -o ${OBJECTDIR}/mLCD.o mLCD.c 
	
${OBJECTDIR}/mINT.o: mINT.c  .generated_files/flags/default/eefbe29e391ad46d386d12384b7cf535721c3471 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mINT.o.d 
	@${RM} ${OBJECTDIR}/mINT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mINT.o.d" -MT "${OBJECTDIR}/mINT.o.d" -MT ${OBJECTDIR}/mINT.o -o ${OBJECTDIR}/mINT.o mINT.c 
	
${OBJECTDIR}/mADC.o: mADC.c  .generated_files/flags/default/258b1c90282b93fb2d4665aadb4ed904eb37dbf1 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mADC.o.d 
	@${RM} ${OBJECTDIR}/mADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mADC.o.d" -MT "${OBJECTDIR}/mADC.o.d" -MT ${OBJECTDIR}/mADC.o -o ${OBJECTDIR}/mADC.o mADC.c 
	
${OBJECTDIR}/mTimer.o: mTimer.c  .generated_files/flags/default/ce7d8fb57b04c370447f6102bd3cf2fb93592200 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mTimer.o.d 
	@${RM} ${OBJECTDIR}/mTimer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mTimer.o.d" -MT "${OBJECTDIR}/mTimer.o.d" -MT ${OBJECTDIR}/mTimer.o -o ${OBJECTDIR}/mTimer.o mTimer.c 
	
${OBJECTDIR}/mUART.o: mUART.c  .generated_files/flags/default/947d4e9d211be31f15e892b21315a72ce05043e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mUART.o.d 
	@${RM} ${OBJECTDIR}/mUART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mUART.o.d" -MT "${OBJECTDIR}/mUART.o.d" -MT ${OBJECTDIR}/mUART.o -o ${OBJECTDIR}/mUART.o mUART.c 
	
${OBJECTDIR}/mSPI.o: mSPI.c  .generated_files/flags/default/6766f42c33c804fc76d1ecf0f868928c4822416b .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mSPI.o.d 
	@${RM} ${OBJECTDIR}/mSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mSPI.o.d" -MT "${OBJECTDIR}/mSPI.o.d" -MT ${OBJECTDIR}/mSPI.o -o ${OBJECTDIR}/mSPI.o mSPI.c 
	
${OBJECTDIR}/EEPROM_25LC010A.o: EEPROM_25LC010A.c  .generated_files/flags/default/835bba5c9a8e4601d54f247493a67e813d253351 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EEPROM_25LC010A.o.d 
	@${RM} ${OBJECTDIR}/EEPROM_25LC010A.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EEPROM_25LC010A.o.d" -MT "${OBJECTDIR}/EEPROM_25LC010A.o.d" -MT ${OBJECTDIR}/EEPROM_25LC010A.o -o ${OBJECTDIR}/EEPROM_25LC010A.o EEPROM_25LC010A.c 
	
${OBJECTDIR}/mTWI.o: mTWI.c  .generated_files/flags/default/40368caa9c335769fc34c351ae54c2702d1f43ef .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mTWI.o.d 
	@${RM} ${OBJECTDIR}/mTWI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mTWI.o.d" -MT "${OBJECTDIR}/mTWI.o.d" -MT ${OBJECTDIR}/mTWI.o -o ${OBJECTDIR}/mTWI.o mTWI.c 
	
${OBJECTDIR}/EEPROM_24C16_I2C.o: EEPROM_24C16_I2C.c  .generated_files/flags/default/9e023a792f3662e486b9bdf459a8ece7f329bf82 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EEPROM_24C16_I2C.o.d 
	@${RM} ${OBJECTDIR}/EEPROM_24C16_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/EEPROM_24C16_I2C.o.d" -MT "${OBJECTDIR}/EEPROM_24C16_I2C.o.d" -MT ${OBJECTDIR}/EEPROM_24C16_I2C.o -o ${OBJECTDIR}/EEPROM_24C16_I2C.o EEPROM_24C16_I2C.c 
	
${OBJECTDIR}/RTOS/croutine.o: RTOS/croutine.c  .generated_files/flags/default/c3261448ed807d345b9f79c93aa6742a6c79acc6 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/croutine.o.d 
	@${RM} ${OBJECTDIR}/RTOS/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/croutine.o.d" -MT "${OBJECTDIR}/RTOS/croutine.o.d" -MT ${OBJECTDIR}/RTOS/croutine.o -o ${OBJECTDIR}/RTOS/croutine.o RTOS/croutine.c 
	
${OBJECTDIR}/RTOS/event_groups.o: RTOS/event_groups.c  .generated_files/flags/default/32d4d5f91720546d2a7a0aee56aef70e51b2dfc5 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/event_groups.o.d 
	@${RM} ${OBJECTDIR}/RTOS/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/event_groups.o.d" -MT "${OBJECTDIR}/RTOS/event_groups.o.d" -MT ${OBJECTDIR}/RTOS/event_groups.o -o ${OBJECTDIR}/RTOS/event_groups.o RTOS/event_groups.c 
	
${OBJECTDIR}/RTOS/heap_4.o: RTOS/heap_4.c  .generated_files/flags/default/254133ede040c7af5116eeed8ad9fd5a9912767d .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/heap_4.o.d 
	@${RM} ${OBJECTDIR}/RTOS/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/heap_4.o.d" -MT "${OBJECTDIR}/RTOS/heap_4.o.d" -MT ${OBJECTDIR}/RTOS/heap_4.o -o ${OBJECTDIR}/RTOS/heap_4.o RTOS/heap_4.c 
	
${OBJECTDIR}/RTOS/list.o: RTOS/list.c  .generated_files/flags/default/1e307456323a9b220c3a10f56d2bbc8e7ef2e4a8 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/list.o.d 
	@${RM} ${OBJECTDIR}/RTOS/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/list.o.d" -MT "${OBJECTDIR}/RTOS/list.o.d" -MT ${OBJECTDIR}/RTOS/list.o -o ${OBJECTDIR}/RTOS/list.o RTOS/list.c 
	
${OBJECTDIR}/RTOS/port.o: RTOS/port.c  .generated_files/flags/default/6a2a36bd486a7d6e3d4513f8c1409f51e5c3e9cb .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/port.o.d 
	@${RM} ${OBJECTDIR}/RTOS/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/port.o.d" -MT "${OBJECTDIR}/RTOS/port.o.d" -MT ${OBJECTDIR}/RTOS/port.o -o ${OBJECTDIR}/RTOS/port.o RTOS/port.c 
	
${OBJECTDIR}/RTOS/queue.o: RTOS/queue.c  .generated_files/flags/default/832317316a2e66296e10201c356abd1d0ad6a9ba .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/queue.o.d 
	@${RM} ${OBJECTDIR}/RTOS/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/queue.o.d" -MT "${OBJECTDIR}/RTOS/queue.o.d" -MT ${OBJECTDIR}/RTOS/queue.o -o ${OBJECTDIR}/RTOS/queue.o RTOS/queue.c 
	
${OBJECTDIR}/RTOS/stream_buffer.o: RTOS/stream_buffer.c  .generated_files/flags/default/614558a31df413c19e297c57956fa19d16be8f71 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/RTOS/stream_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/stream_buffer.o.d" -MT "${OBJECTDIR}/RTOS/stream_buffer.o.d" -MT ${OBJECTDIR}/RTOS/stream_buffer.o -o ${OBJECTDIR}/RTOS/stream_buffer.o RTOS/stream_buffer.c 
	
${OBJECTDIR}/RTOS/tasks.o: RTOS/tasks.c  .generated_files/flags/default/314c3765fc484fe3a3c3d3d8d5e6f8f4fdcee3bb .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/tasks.o.d 
	@${RM} ${OBJECTDIR}/RTOS/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/tasks.o.d" -MT "${OBJECTDIR}/RTOS/tasks.o.d" -MT ${OBJECTDIR}/RTOS/tasks.o -o ${OBJECTDIR}/RTOS/tasks.o RTOS/tasks.c 
	
${OBJECTDIR}/RTOS/timers.o: RTOS/timers.c  .generated_files/flags/default/c7d0c214726d6727b14d9b1d4cef292c3809d272 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/RTOS" 
	@${RM} ${OBJECTDIR}/RTOS/timers.o.d 
	@${RM} ${OBJECTDIR}/RTOS/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/RTOS/timers.o.d" -MT "${OBJECTDIR}/RTOS/timers.o.d" -MT ${OBJECTDIR}/RTOS/timers.o -o ${OBJECTDIR}/RTOS/timers.o RTOS/timers.c 
	
${OBJECTDIR}/mEEPROM.o: mEEPROM.c  .generated_files/flags/default/d2e79c1b3aa38e126b51fcd7fdcceba2d2b20154 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mEEPROM.o.d 
	@${RM} ${OBJECTDIR}/mEEPROM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/mEEPROM.o.d" -MT "${OBJECTDIR}/mEEPROM.o.d" -MT ${OBJECTDIR}/mEEPROM.o -o ${OBJECTDIR}/mEEPROM.o mEEPROM.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/Alex50_kit.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
