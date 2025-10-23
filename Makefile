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
h.BlockDeviceSATAHdr:	cmhg.BlockDeviceSATAHdr
h.BlockDeviceSATAHdr:	VersionNum
h.BlockDeviceSATAHdr:	C:Interface.h.BlockDevices
h.BlockDeviceSATAHdr:	C:Global.h.Services
o.BlockDeviceSATAHdr:	cmhg.BlockDeviceSATAHdr
o.BlockDeviceSATAHdr:	VersionNum
o.BlockDeviceSATAHdr:	C:Interface.h.BlockDevices
o.BlockDeviceSATAHdr:	C:Global.h.Services
o.Module:	c.Module
o.Module:	C:h.swis
o.Module:	C:h.kernel
o.Module:	C:Global.h.NewErrors
o.Module:	C:Global.h.Services
o.Module:	C:Global.h.OSMisc
o.Module:	C:SyncLib.h.synclib
o.Module:	C:SyncLib.h.atomic
o.Module:	C:SyncLib.h.barrier
o.Module:	C:SyncLib.h.cpuevent
o.Module:	C:SyncLib.h.mutex
o.Module:	C:SyncLib.h.spin
o.Module:	C:SyncLib.h.spinrw
o.Module:	C:DebugLib.h.DebugLib
o.Module:	C:Interface.h.BlockDevices
o.Module:	C:Interface.h.ATA
