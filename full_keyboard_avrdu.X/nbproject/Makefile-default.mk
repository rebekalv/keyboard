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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/ac/src/ac0.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/syscfg.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/timer/src/rtc.c mcc_generated_files/usb/src/usb0.c mcc_generated_files/usb/usb_common/usb_core_transfer.c mcc_generated_files/usb/usb_common/usb_core_requests_device.c mcc_generated_files/usb/usb_common/usb_core_descriptors.c mcc_generated_files/usb/usb_common/usb_core.c mcc_generated_files/usb/usb_common/usb_core_requests_interface.c mcc_generated_files/usb/usb_common/usb_core_requests.c mcc_generated_files/usb/usb_common/usb_core_events.c mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c mcc_generated_files/usb/usb_hid/usb_hid_transfer.c mcc_generated_files/usb/usb_hid/usb_hid.c mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c mcc_generated_files/usb/usb_peripheral/usb_peripheral.c mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device.c mcc_generated_files/vref/src/vref.c main.c usb.c hardware.c keyboard.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o ${OBJECTDIR}/main.o ${OBJECTDIR}/usb.o ${OBJECTDIR}/hardware.o ${OBJECTDIR}/keyboard.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/usb.o.d ${OBJECTDIR}/hardware.o.d ${OBJECTDIR}/keyboard.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o ${OBJECTDIR}/main.o ${OBJECTDIR}/usb.o ${OBJECTDIR}/hardware.o ${OBJECTDIR}/keyboard.o

# Source Files
SOURCEFILES=mcc_generated_files/ac/src/ac0.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/syscfg.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/protected_io.S mcc_generated_files/timer/src/rtc.c mcc_generated_files/usb/src/usb0.c mcc_generated_files/usb/usb_common/usb_core_transfer.c mcc_generated_files/usb/usb_common/usb_core_requests_device.c mcc_generated_files/usb/usb_common/usb_core_descriptors.c mcc_generated_files/usb/usb_common/usb_core.c mcc_generated_files/usb/usb_common/usb_core_requests_interface.c mcc_generated_files/usb/usb_common/usb_core_requests.c mcc_generated_files/usb/usb_common/usb_core_events.c mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c mcc_generated_files/usb/usb_hid/usb_hid_transfer.c mcc_generated_files/usb/usb_hid/usb_hid.c mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c mcc_generated_files/usb/usb_peripheral/usb_peripheral.c mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c mcc_generated_files/usb/usb_descriptors.c mcc_generated_files/usb/usb_device.c mcc_generated_files/vref/src/vref.c main.c usb.c hardware.c keyboard.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=AVR64DU32
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o: mcc_generated_files/ac/src/ac0.c  .generated_files/flags/default/64383d20236764009743f3bbbd14da5869f73378 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/ac/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o -o ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o mcc_generated_files/ac/src/ac0.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/1947e2424cc22bad10b553789615cb60afc7c384 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/2eb4ac26e16ab372e4de4e928eb45a4f3cfa683f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o: mcc_generated_files/system/src/syscfg.c  .generated_files/flags/default/15a350915ad776fb71294fbacaf5955818a9f56c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o -o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o mcc_generated_files/system/src/syscfg.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/ab35aacda0a54791685c6ac353b1a449a8250e4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/abdc9cb63de77e0e85359839fcd5485564275f42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/cdb9eb7f15e7b9263298bcfc84ed24ddef0d8643 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o: mcc_generated_files/timer/src/rtc.c  .generated_files/flags/default/9f36f2b996002de6a116c9128564dd280f3475e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o mcc_generated_files/timer/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o: mcc_generated_files/usb/src/usb0.c  .generated_files/flags/default/5a49a2061748bd07b63e0fb616b4f929f228c26a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o -o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o mcc_generated_files/usb/src/usb0.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o: mcc_generated_files/usb/usb_common/usb_core_transfer.c  .generated_files/flags/default/ceb948d68276c712c1b1d59f18dbcd678978e642 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o mcc_generated_files/usb/usb_common/usb_core_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o: mcc_generated_files/usb/usb_common/usb_core_requests_device.c  .generated_files/flags/default/14b2668adf40bdad176027e06e3bca5f510dd817 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o mcc_generated_files/usb/usb_common/usb_core_requests_device.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o: mcc_generated_files/usb/usb_common/usb_core_descriptors.c  .generated_files/flags/default/2893aa47ab0162b2f829a3bef2e3a2b1ec42a570 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o mcc_generated_files/usb/usb_common/usb_core_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o: mcc_generated_files/usb/usb_common/usb_core.c  .generated_files/flags/default/924821fa00890bd7642f9a68bf79a0f85f99d3c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o mcc_generated_files/usb/usb_common/usb_core.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o: mcc_generated_files/usb/usb_common/usb_core_requests_interface.c  .generated_files/flags/default/c109071a1a73607a467d210820e36c5b7295332d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o mcc_generated_files/usb/usb_common/usb_core_requests_interface.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o: mcc_generated_files/usb/usb_common/usb_core_requests.c  .generated_files/flags/default/b14c84925ea38b1a25f55f387f2b2102bbb38766 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o mcc_generated_files/usb/usb_common/usb_core_requests.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o: mcc_generated_files/usb/usb_common/usb_core_events.c  .generated_files/flags/default/1cc00d8b39e476f9d0ac15239e62cf9a389eeb8c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o mcc_generated_files/usb/usb_common/usb_core_events.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o: mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c  .generated_files/flags/default/6922a0fc54de73f70d03e75f892d5f777fd36b6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o: mcc_generated_files/usb/usb_hid/usb_hid_transfer.c  .generated_files/flags/default/dda63d100022cb2773f47a370f2ba6ff9e8c346c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o mcc_generated_files/usb/usb_hid/usb_hid_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o: mcc_generated_files/usb/usb_hid/usb_hid.c  .generated_files/flags/default/e214b71d636635aac1bb687def1eaabaa99dfa4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o mcc_generated_files/usb/usb_hid/usb_hid.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o: mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c  .generated_files/flags/default/94ad8e3740bdec626f4c81ab9dede13493583070 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral.c  .generated_files/flags/default/2b354b5920cb4d70ea94d369efd5a305b2bc17ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o mcc_generated_files/usb/usb_peripheral/usb_peripheral.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c  .generated_files/flags/default/89fced20e3f017ab3c33e6394165621ec2c318fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c  .generated_files/flags/default/fa6a9e6ef6d30c4487fc3ab8bb5c996b9f4835ed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/e1404344aa970c33639e1b4ed6973954cca5fe8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/610cc635541759c8c2427ada2b7e130467014d6a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/mcc_generated_files/vref/src/vref.o: mcc_generated_files/vref/src/vref.c  .generated_files/flags/default/20b05b830488e11cd2f47b7e77e1ccc1d1d40a9c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/vref/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d" -MT "${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d" -MT ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o -o ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o mcc_generated_files/vref/src/vref.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/11f17552b4ba3b53e08fc208751e4bfa00d7b0bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/usb.o: usb.c  .generated_files/flags/default/c4c372e797d89cbacdd91d45d33fac81cea73290 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb.o.d 
	@${RM} ${OBJECTDIR}/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/usb.o.d" -MT "${OBJECTDIR}/usb.o.d" -MT ${OBJECTDIR}/usb.o -o ${OBJECTDIR}/usb.o usb.c 
	
${OBJECTDIR}/hardware.o: hardware.c  .generated_files/flags/default/7d6f4eb5ab84aba93bce52c1d1d35783153b8201 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hardware.o.d 
	@${RM} ${OBJECTDIR}/hardware.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/hardware.o.d" -MT "${OBJECTDIR}/hardware.o.d" -MT ${OBJECTDIR}/hardware.o -o ${OBJECTDIR}/hardware.o hardware.c 
	
${OBJECTDIR}/keyboard.o: keyboard.c  .generated_files/flags/default/2843fd8d0f4edd9d78eae433a8c6e97bd7be7335 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keyboard.o.d 
	@${RM} ${OBJECTDIR}/keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/keyboard.o.d" -MT "${OBJECTDIR}/keyboard.o.d" -MT ${OBJECTDIR}/keyboard.o -o ${OBJECTDIR}/keyboard.o keyboard.c 
	
else
${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o: mcc_generated_files/ac/src/ac0.c  .generated_files/flags/default/b9943a0b73dbc1e7fe527a528c8bce418fc3c601 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/ac/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o -o ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o mcc_generated_files/ac/src/ac0.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/ec0de750488f7507e3b73ff06716b760244ba7b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/2d915d037478f111f8db270378610bca7f1118ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o: mcc_generated_files/system/src/syscfg.c  .generated_files/flags/default/6d435b8ac70a96ed07e9811b909843cda03a9939 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o -o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o mcc_generated_files/system/src/syscfg.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/cf52cda0a87f0f00fbba5ebc75b3b95ce4c42d23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/9ae98a5671390405f71a03dd1ba179f1e2919488 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/13ae45faa45ac69d67e0a2c933ee1b5bdfd0aa49 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o: mcc_generated_files/timer/src/rtc.c  .generated_files/flags/default/40d770d9275f283ca0dda87ca6587ca3b2050c11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o mcc_generated_files/timer/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o: mcc_generated_files/usb/src/usb0.c  .generated_files/flags/default/884cd2edf742b5e85d2dd6bc6f3cddd95de4e218 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o -o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o mcc_generated_files/usb/src/usb0.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o: mcc_generated_files/usb/usb_common/usb_core_transfer.c  .generated_files/flags/default/c4b892cef2a99d50f5ee7b9a2b972dbaf6b2f32e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o mcc_generated_files/usb/usb_common/usb_core_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o: mcc_generated_files/usb/usb_common/usb_core_requests_device.c  .generated_files/flags/default/969855f46ec7bae63c95734f900c1772e7eadda6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o mcc_generated_files/usb/usb_common/usb_core_requests_device.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o: mcc_generated_files/usb/usb_common/usb_core_descriptors.c  .generated_files/flags/default/954788f5c37e0af1a8926fe3890b0172db852172 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o mcc_generated_files/usb/usb_common/usb_core_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o: mcc_generated_files/usb/usb_common/usb_core.c  .generated_files/flags/default/7228eb12b4da5cfe85d0a84459f0c68fe1340609 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o mcc_generated_files/usb/usb_common/usb_core.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o: mcc_generated_files/usb/usb_common/usb_core_requests_interface.c  .generated_files/flags/default/e2e40c8d4f4174e093e1f7cdcb3095da9ee94d23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o mcc_generated_files/usb/usb_common/usb_core_requests_interface.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o: mcc_generated_files/usb/usb_common/usb_core_requests.c  .generated_files/flags/default/bf1ae3a845db36a8e221c30796aa56f8921cf40d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o mcc_generated_files/usb/usb_common/usb_core_requests.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o: mcc_generated_files/usb/usb_common/usb_core_events.c  .generated_files/flags/default/7e784091f77fe6f9a3d0e484e68de7c2ab304d5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o mcc_generated_files/usb/usb_common/usb_core_events.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o: mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c  .generated_files/flags/default/57d9a43df2f14300384b7461f132460949f3152a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o: mcc_generated_files/usb/usb_hid/usb_hid_transfer.c  .generated_files/flags/default/af3a763d58c08f7c37820bc386152adcc5a6a432 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o mcc_generated_files/usb/usb_hid/usb_hid_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o: mcc_generated_files/usb/usb_hid/usb_hid.c  .generated_files/flags/default/8d7e435051ba96b68aa1feda2660aee47563fd2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o mcc_generated_files/usb/usb_hid/usb_hid.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o: mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c  .generated_files/flags/default/b529d49639cd664ec96c4dcdc0dd6d8fcaad885f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral.c  .generated_files/flags/default/2f6733a4fc5ffa596c40766ca144b3df586e9ddf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o mcc_generated_files/usb/usb_peripheral/usb_peripheral.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c  .generated_files/flags/default/d2abcbe6ddb87a8570ff7094ae5fa13edcc23d9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c  .generated_files/flags/default/a46622dd3450598f81c7533c1f7d0f9510601b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/c6a14d2d43f53928a2b62ca937c5fa15397edfef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/ad4e3203bfcea3d6c56533012fb437c8c1241dc3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/mcc_generated_files/vref/src/vref.o: mcc_generated_files/vref/src/vref.c  .generated_files/flags/default/260fa7d411ae39cdcfa8f683fd5eb1618f21f9c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/vref/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d" -MT "${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d" -MT ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o -o ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o mcc_generated_files/vref/src/vref.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/aeb2cbe940850d06c6997ece150dace65a7baa57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/usb.o: usb.c  .generated_files/flags/default/431667421ecb83a82cbbe462eb029386ab1b0013 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb.o.d 
	@${RM} ${OBJECTDIR}/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/usb.o.d" -MT "${OBJECTDIR}/usb.o.d" -MT ${OBJECTDIR}/usb.o -o ${OBJECTDIR}/usb.o usb.c 
	
${OBJECTDIR}/hardware.o: hardware.c  .generated_files/flags/default/91d030469a10e907110588690ab2f4a9e33e678c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hardware.o.d 
	@${RM} ${OBJECTDIR}/hardware.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/hardware.o.d" -MT "${OBJECTDIR}/hardware.o.d" -MT ${OBJECTDIR}/hardware.o -o ${OBJECTDIR}/hardware.o hardware.c 
	
${OBJECTDIR}/keyboard.o: keyboard.c  .generated_files/flags/default/1c2057e8e01031c7e68d50a96f095f0c610287b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keyboard.o.d 
	@${RM} ${OBJECTDIR}/keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/keyboard.o.d" -MT "${OBJECTDIR}/keyboard.o.d" -MT ${OBJECTDIR}/keyboard.o -o ${OBJECTDIR}/keyboard.o keyboard.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/7191e4638c4be53c3b756e2dfdeb82740f6f21ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -mconst-data-in-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/524267ce72dc7a19a9ff44bff19bd2d0ee7b32b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -mconst-data-in-progmem -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.hex"
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
