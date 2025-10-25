# Makefile for BlockDeviceSATA

COMPONENT = BlockDeviceSATA
OBJS = Module
LIBS = ${SYNCLIB}
RES_OBJ =

include CModule

CFLAGS     += -DUSE_DEBUG
CDFLAGS    += -DDEBUGLIB
DBG_LIBS   += ${NET5LIBS}
#CMHG = cmunge
#CMHGFLAGS = -32bit

c.Module: h.BlockDeviceSATAHdr

# Dynamic dependencies:
