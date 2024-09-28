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
SOURCEFILES_QUOTED_IF_SPACED=main.c mDIO.c mLEDS.c mBUZZ.c mRELAY.c mBUTTON.c mKeypad.c m7SEG.c mLCD8.c mLCD.c mINT.c mADC.c mTimer.c mUART.c mSPI.c EEPROM_25LC010A.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/mDIO.o ${OBJECTDIR}/mLEDS.o ${OBJECTDIR}/mBUZZ.o ${OBJECTDIR}/mRELAY.o ${OBJECTDIR}/mBUTTON.o ${OBJECTDIR}/mKeypad.o ${OBJECTDIR}/m7SEG.o ${OBJECTDIR}/mLCD8.o ${OBJECTDIR}/mLCD.o ${OBJECTDIR}/mINT.o ${OBJECTDIR}/mADC.o ${OBJECTDIR}/mTimer.o ${OBJECTDIR}/mUART.o ${OBJECTDIR}/mSPI.o ${OBJECTDIR}/EEPROM_25LC010A.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/mDIO.o.d ${OBJECTDIR}/mLEDS.o.d ${OBJECTDIR}/mBUZZ.o.d ${OBJECTDIR}/mRELAY.o.d ${OBJECTDIR}/mBUTTON.o.d ${OBJECTDIR}/mKeypad.o.d ${OBJECTDIR}/m7SEG.o.d ${OBJECTDIR}/mLCD8.o.d ${OBJECTDIR}/mLCD.o.d ${OBJECTDIR}/mINT.o.d ${OBJECTDIR}/mADC.o.d ${OBJECTDIR}/mTimer.o.d ${OBJECTDIR}/mUART.o.d ${OBJECTDIR}/mSPI.o.d ${OBJECTDIR}/EEPROM_25LC010A.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/mDIO.o ${OBJECTDIR}/mLEDS.o ${OBJECTDIR}/mBUZZ.o ${OBJECTDIR}/mRELAY.o ${OBJECTDIR}/mBUTTON.o ${OBJECTDIR}/mKeypad.o ${OBJECTDIR}/m7SEG.o ${OBJECTDIR}/mLCD8.o ${OBJECTDIR}/mLCD.o ${OBJECTDIR}/mINT.o ${OBJECTDIR}/mADC.o ${OBJECTDIR}/mTimer.o ${OBJECTDIR}/mUART.o ${OBJECTDIR}/mSPI.o ${OBJECTDIR}/EEPROM_25LC010A.o

# Source Files
SOURCEFILES=main.c mDIO.c mLEDS.c mBUZZ.c mRELAY.c mBUTTON.c mKeypad.c m7SEG.c mLCD8.c mLCD.c mINT.c mADC.c mTimer.c mUART.c mSPI.c EEPROM_25LC010A.c



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
