IOC_TOP = /reg/g/pcds/epics/ioc/common/ads-ioc/R0.8.0
IOC_INSTANCE_PATH := $(shell pwd)

# Set PRODUCTION_IOC to 1 to move from a testing to a production IOC:
PRODUCTION_IOC := 1

PROJECT_NAME := lcls-plc-txi-optics
PROJECT_PATH := ../../lcls-plc-txi-optics/lcls-plc-txi-optics.tsproj
PLC := txi_optics

PYTMC_OPTS := 
PREFIX := PLC:TXI:KFE:OPTICS

include $(IOC_TOP)/iocBoot/templates/Makefile.base
