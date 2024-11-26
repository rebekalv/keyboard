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
FINAL_IMAGE=${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
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
${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o: mcc_generated_files/ac/src/ac0.c  .generated_files/flags/default/1289d93c8b71b5a0eccc62bc7b7ab017e49c314b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/ac/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o -o ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o mcc_generated_files/ac/src/ac0.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/ee6487f938df18af581503b08f4000f655ec2b27 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/ec22761ae45d8e8bd4c1fe2876a40e7eacc3b05f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o: mcc_generated_files/system/src/syscfg.c  .generated_files/flags/default/4573c5affdb5844c4b05b0475a2e0c3e62f6932e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o -o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o mcc_generated_files/system/src/syscfg.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/45e376ca003948e913c2a92207d486c935f2702f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/d40d1245bb950837229ddd21937a3059072d0d20 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/58a9090411cd1ecd99865f406daa437dfe0ef764 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o: mcc_generated_files/timer/src/rtc.c  .generated_files/flags/default/7c22544460fbd177f950fcc86b554c6d3f9ef84e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o mcc_generated_files/timer/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o: mcc_generated_files/usb/src/usb0.c  .generated_files/flags/default/b7887c24c90b78224c935912f4724413d2a67a04 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o -o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o mcc_generated_files/usb/src/usb0.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o: mcc_generated_files/usb/usb_common/usb_core_transfer.c  .generated_files/flags/default/39cd0558906d356e5d06349d2a4a62c506cc1370 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o mcc_generated_files/usb/usb_common/usb_core_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o: mcc_generated_files/usb/usb_common/usb_core_requests_device.c  .generated_files/flags/default/5f5d74ddf4b4dbaeb4ffa90156ebcc3c0f69de8c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o mcc_generated_files/usb/usb_common/usb_core_requests_device.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o: mcc_generated_files/usb/usb_common/usb_core_descriptors.c  .generated_files/flags/default/83752696ccbedc07830428e4b0cfcfe95a4e9938 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o mcc_generated_files/usb/usb_common/usb_core_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o: mcc_generated_files/usb/usb_common/usb_core.c  .generated_files/flags/default/bf2ae32033c6846291ba9481983a38d2b92a8f70 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o mcc_generated_files/usb/usb_common/usb_core.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o: mcc_generated_files/usb/usb_common/usb_core_requests_interface.c  .generated_files/flags/default/6585e2d3e77cfd14ab5d9fbf147deb8c8c09b010 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o mcc_generated_files/usb/usb_common/usb_core_requests_interface.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o: mcc_generated_files/usb/usb_common/usb_core_requests.c  .generated_files/flags/default/98934656a9e0ba9bbec3d87b8d6c981441292177 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o mcc_generated_files/usb/usb_common/usb_core_requests.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o: mcc_generated_files/usb/usb_common/usb_core_events.c  .generated_files/flags/default/52b22b5434ef4fc955f0469ca2dd3fa401e28abf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o mcc_generated_files/usb/usb_common/usb_core_events.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o: mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c  .generated_files/flags/default/659e36b12e3340125bbc6fde90beca910cfc5bcf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o: mcc_generated_files/usb/usb_hid/usb_hid_transfer.c  .generated_files/flags/default/4f49afc0517e58158da6010e7cdf78d3645f61f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o mcc_generated_files/usb/usb_hid/usb_hid_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o: mcc_generated_files/usb/usb_hid/usb_hid.c  .generated_files/flags/default/4bb9c7324c80038c02cef13909acb38ac21e1189 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o mcc_generated_files/usb/usb_hid/usb_hid.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o: mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c  .generated_files/flags/default/dfc0611d7e689104c842298145ddc21eea87f660 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral.c  .generated_files/flags/default/b4c2016a13449b86a81bc8fc335e16d23351c2b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o mcc_generated_files/usb/usb_peripheral/usb_peripheral.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c  .generated_files/flags/default/34bb375d4d095906cc15d3ce109339c4d84f3ec .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c  .generated_files/flags/default/e43fac04e243f0a5ee5612ce536b54a57a8ab17d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/c4f1ad2172951366efaa1f5e7f0759d766166b7f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/1884741738b0fbfc2f1fd0d897f85a8fc15df59c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/mcc_generated_files/vref/src/vref.o: mcc_generated_files/vref/src/vref.c  .generated_files/flags/default/4323d4e84a7fb3e8ea99cbb2ef11ac036ec1499a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/vref/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d" -MT "${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d" -MT ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o -o ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o mcc_generated_files/vref/src/vref.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/48eb23954a1252d6af8ad041ff8c7c555ccf9e30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/usb.o: usb.c  .generated_files/flags/default/e6510ee033bff3f587681791560385683d9b670e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb.o.d 
	@${RM} ${OBJECTDIR}/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/usb.o.d" -MT "${OBJECTDIR}/usb.o.d" -MT ${OBJECTDIR}/usb.o -o ${OBJECTDIR}/usb.o usb.c 
	
${OBJECTDIR}/hardware.o: hardware.c  .generated_files/flags/default/fc5b9cd7e371e40b495dc5fb1e4bb4450acf317d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hardware.o.d 
	@${RM} ${OBJECTDIR}/hardware.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/hardware.o.d" -MT "${OBJECTDIR}/hardware.o.d" -MT ${OBJECTDIR}/hardware.o -o ${OBJECTDIR}/hardware.o hardware.c 
	
${OBJECTDIR}/keyboard.o: keyboard.c  .generated_files/flags/default/194c746b88ac80dd00b22a0b5f11d8c23a85868e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keyboard.o.d 
	@${RM} ${OBJECTDIR}/keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/keyboard.o.d" -MT "${OBJECTDIR}/keyboard.o.d" -MT ${OBJECTDIR}/keyboard.o -o ${OBJECTDIR}/keyboard.o keyboard.c 
	
else
${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o: mcc_generated_files/ac/src/ac0.c  .generated_files/flags/default/693bcededccf031dfaac3c798116724434617969 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/ac/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o -o ${OBJECTDIR}/mcc_generated_files/ac/src/ac0.o mcc_generated_files/ac/src/ac0.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/default/c06ff7166e71a58e6681291cc86f4406897f6329 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/system.o -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o mcc_generated_files/system/src/system.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/default/88afa42c825ee3737a3749162f4c1ddfd5f3248c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o mcc_generated_files/system/src/config_bits.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o: mcc_generated_files/system/src/syscfg.c  .generated_files/flags/default/562e863c1c945dedfd5f2443e9dba67ba3ec9378 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o -o ${OBJECTDIR}/mcc_generated_files/system/src/syscfg.o mcc_generated_files/system/src/syscfg.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/default/fc0a20e7ec32fe3543fb246b42b7ed97684418bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o mcc_generated_files/system/src/interrupt.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/default/752c038ade5cddf8192cbf482a97365222f9c4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/clock.o -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o mcc_generated_files/system/src/clock.c 
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/default/93220abcc1f3c3f4d8092ef7fef2ab2e82876f74 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/pins.o -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o mcc_generated_files/system/src/pins.c 
	
${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o: mcc_generated_files/timer/src/rtc.c  .generated_files/flags/default/485dd7007c78b56c4a1dc7efd0f5e05d95d4a22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT "${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o.d" -MT ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o -o ${OBJECTDIR}/mcc_generated_files/timer/src/rtc.o mcc_generated_files/timer/src/rtc.c 
	
${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o: mcc_generated_files/usb/src/usb0.c  .generated_files/flags/default/4d5a92147a337dbc9c4a684b8939ac6bf49ec0b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o -o ${OBJECTDIR}/mcc_generated_files/usb/src/usb0.o mcc_generated_files/usb/src/usb0.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o: mcc_generated_files/usb/usb_common/usb_core_transfer.c  .generated_files/flags/default/a56af6c630e7285b54cd76eea38cd5bbde2d5f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_transfer.o mcc_generated_files/usb/usb_common/usb_core_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o: mcc_generated_files/usb/usb_common/usb_core_requests_device.c  .generated_files/flags/default/dfe052bce429130208e15aab9995eca33a20351b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_device.o mcc_generated_files/usb/usb_common/usb_core_requests_device.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o: mcc_generated_files/usb/usb_common/usb_core_descriptors.c  .generated_files/flags/default/d02364bf485b511ca6c3f57335d378cd2565ce9b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_descriptors.o mcc_generated_files/usb/usb_common/usb_core_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o: mcc_generated_files/usb/usb_common/usb_core.c  .generated_files/flags/default/c6ddc0b25f4c187d07e9843bd3ff4769288a8e3b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core.o mcc_generated_files/usb/usb_common/usb_core.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o: mcc_generated_files/usb/usb_common/usb_core_requests_interface.c  .generated_files/flags/default/d5e89c241334d5553b6db0f9361ec1bbcb0cd868 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_interface.o mcc_generated_files/usb/usb_common/usb_core_requests_interface.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o: mcc_generated_files/usb/usb_common/usb_core_requests.c  .generated_files/flags/default/9994c5bbcb938c22d6b7377542ab74c05266cb62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests.o mcc_generated_files/usb/usb_common/usb_core_requests.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o: mcc_generated_files/usb/usb_common/usb_core_events.c  .generated_files/flags/default/e4edb066068eb2252c4ba7fb8363bac2f352ba71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_events.o mcc_generated_files/usb/usb_common/usb_core_events.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o: mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c  .generated_files/flags/default/1528f600cdd6e836e0e3006b1930810d16c9ac8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.o mcc_generated_files/usb/usb_common/usb_core_requests_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o: mcc_generated_files/usb/usb_hid/usb_hid_transfer.c  .generated_files/flags/default/c0a46e6a3f2f9680fe2b7f65f81de73380b89c6a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_transfer.o mcc_generated_files/usb/usb_hid/usb_hid_transfer.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o: mcc_generated_files/usb/usb_hid/usb_hid.c  .generated_files/flags/default/17c514cd90bd0a684db93e70ae0b2fd9e4a3b368 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid.o mcc_generated_files/usb/usb_hid/usb_hid.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o: mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c  .generated_files/flags/default/487225a5b631159d62fca4563f8a8cee6bf31c62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_hid" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_hid/usb_hid_keyboard.o mcc_generated_files/usb/usb_hid/usb_hid_keyboard.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral.c  .generated_files/flags/default/8ebb67c4bce22a3222b84979d2c0d58d5bfc4844 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral.o mcc_generated_files/usb/usb_peripheral/usb_peripheral.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c  .generated_files/flags/default/8b92a992c10c9ed2d13b0ac1e7a407ed91b8a2c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_read_write.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o: mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c  .generated_files/flags/default/fbe6603964fff88d53b7ce758774c9f53c1e039b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.o mcc_generated_files/usb/usb_peripheral/usb_peripheral_endpoint.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o: mcc_generated_files/usb/usb_descriptors.c  .generated_files/flags/default/386f78120176061466668ef2e548dba08305a92a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_descriptors.o mcc_generated_files/usb/usb_descriptors.c 
	
${OBJECTDIR}/mcc_generated_files/usb/usb_device.o: mcc_generated_files/usb/usb_device.c  .generated_files/flags/default/17f301f3d57b32bcd2d653c61804afd09f85a1a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/usb" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT "${OBJECTDIR}/mcc_generated_files/usb/usb_device.o.d" -MT ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o -o ${OBJECTDIR}/mcc_generated_files/usb/usb_device.o mcc_generated_files/usb/usb_device.c 
	
${OBJECTDIR}/mcc_generated_files/vref/src/vref.o: mcc_generated_files/vref/src/vref.c  .generated_files/flags/default/568912637982e4f60e9c16edb77df310fbd2feb1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/vref/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d" -MT "${OBJECTDIR}/mcc_generated_files/vref/src/vref.o.d" -MT ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o -o ${OBJECTDIR}/mcc_generated_files/vref/src/vref.o mcc_generated_files/vref/src/vref.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/772fbd89a3dcb202485f6c83d3268207147ca705 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/usb.o: usb.c  .generated_files/flags/default/d7a460c25563be582a955a6dfddcb0c569d3cf96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/usb.o.d 
	@${RM} ${OBJECTDIR}/usb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/usb.o.d" -MT "${OBJECTDIR}/usb.o.d" -MT ${OBJECTDIR}/usb.o -o ${OBJECTDIR}/usb.o usb.c 
	
${OBJECTDIR}/hardware.o: hardware.c  .generated_files/flags/default/e1bd2bb8672e89cda3916b353e34bc673f49c399 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hardware.o.d 
	@${RM} ${OBJECTDIR}/hardware.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/hardware.o.d" -MT "${OBJECTDIR}/hardware.o.d" -MT ${OBJECTDIR}/hardware.o -o ${OBJECTDIR}/hardware.o hardware.c 
	
${OBJECTDIR}/keyboard.o: keyboard.c  .generated_files/flags/default/af4ab594a900becb037c036f2b72c53a8e2ee850 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/keyboard.o.d 
	@${RM} ${OBJECTDIR}/keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/keyboard.o.d" -MT "${OBJECTDIR}/keyboard.o.d" -MT ${OBJECTDIR}/keyboard.o -o ${OBJECTDIR}/keyboard.o keyboard.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/fb48665b1bf768825a5ccf18bdf4feea2a719ef6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
else
${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o: mcc_generated_files/system/src/protected_io.S  .generated_files/flags/default/60c959a15397ec69c6f32006de7da34c40f67a6d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -x assembler-with-cpp -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -DXPRJ_default=$(CND_CONF)  -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem -Wa,--defsym=__MPLAB_BUILD=1   -MD -MP -MF "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT "${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o.d" -MT ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o -o ${OBJECTDIR}/mcc_generated_files/system/src/protected_io.o  mcc_generated_files/system/src/protected_io.S 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -I"mcc_generated_files/usb" -I"mcc_generated_files/usb/usb_common" -I"mcc_generated_files/usb/usb_peripheral" -I"mcc_generated_files/usb/usb_vendor" -I"mcc_generated_files/usb/usb_hid" -I"mcc_generated_files/usb/usb_cdc" -I"mcc_generated_files/usb/usb_cdc/circular_buffer" -Wall -gdwarf-3 -mconst-data-in-progmem -mconst-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/full_keyboard_avrdu.X.${IMAGE_TYPE}.hex"
	
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
