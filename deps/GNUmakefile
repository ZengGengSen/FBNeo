flags += -I$(deps.path)
flags += -I$(deps.path)/kailleraclient
flags += -I$(deps.path)/lib7z
flags += -I$(deps.path)/libspng
flags += -I$(deps.path)/lua
flags += -I$(deps.path)/zlib

flags += -I$(deps.path)/mingw/include/directx9
flags += -I$(deps.path)/mingw/include/xaudio2

options += -luuid

flags += -DINCLUDE_7Z_SUPPORT -D_7ZIP_PPMD_SUPPPORT -D_7ZIP_ST
flags += -DINCLUDE_LIB_PNGH

deps.objects := net

deps.objects += 7zArcIn
deps.objects += 7zBuf
deps.objects += 7zBuf2
deps.objects += 7zCrc
deps.objects += 7zCrcOpt
deps.objects += 7zDec
deps.objects += 7zFile
deps.objects += 7zStream
deps.objects += Alloc
deps.objects += Bcj2
deps.objects += Bra
deps.objects += Bra86
deps.objects += BraIA64
deps.objects += CpuArch
deps.objects += Delta
deps.objects += Lzma2Dec
deps.objects += LzmaDec
deps.objects += Ppmd7
deps.objects += Ppmd7Dec
deps.objects += Sha256
deps.objects += Xz
deps.objects += XzCrc64
deps.objects += XzCrc64Opt
deps.objects += XzDec

deps.objects += spng

deps.objects += lapi
deps.objects += lauxlib
deps.objects += lbaselib
deps.objects += lcode
deps.objects += ldblib
deps.objects += ldebug
deps.objects += ldo
deps.objects += ldump
deps.objects += lfunc
deps.objects += lgc
deps.objects += linit
deps.objects += liolib
deps.objects += llex
deps.objects += lmathlib
deps.objects += lmem
deps.objects += loadlib
deps.objects += lobject
deps.objects += lopcodes
deps.objects += loslib
deps.objects += lparser
deps.objects += lstate
deps.objects += lstring
deps.objects += lstrlib
deps.objects += ltable
deps.objects += ltablib
deps.objects += ltm
deps.objects += lundump
deps.objects += lvm
deps.objects += lzio

deps.objects += adler32
deps.objects += compress
deps.objects += crc32
deps.objects += deflate
deps.objects += gzclose
deps.objects += gzlib
deps.objects += gzread
deps.objects += gzwrite
deps.objects += infback
deps.objects += inffast
deps.objects += inflate
deps.objects += inftrees
deps.objects += trees
deps.objects += uncompr
deps.objects += zutil

deps.objects := $(deps.objects:%=$(object.path)/dep-%.o)

$(object.path)/dep-net.o: $(deps.path)/kailleraclient/net.cpp

$(object.path)/dep-7zArcIn.o: $(deps.path)/lib7z/7zArcIn.c
$(object.path)/dep-7zBuf.o: $(deps.path)/lib7z/7zBuf.c
$(object.path)/dep-7zBuf2.o: $(deps.path)/lib7z/7zBuf2.c
$(object.path)/dep-7zCrc.o: $(deps.path)/lib7z/7zCrc.c
$(object.path)/dep-7zCrcOpt.o: $(deps.path)/lib7z/7zCrcOpt.c
$(object.path)/dep-7zDec.o: $(deps.path)/lib7z/7zDec.c
$(object.path)/dep-7zFile.o: $(deps.path)/lib7z/7zFile.c
$(object.path)/dep-7zStream.o: $(deps.path)/lib7z/7zStream.c
$(object.path)/dep-Alloc.o: $(deps.path)/lib7z/Alloc.c
$(object.path)/dep-Bcj2.o: $(deps.path)/lib7z/Bcj2.c
$(object.path)/dep-Bra.o: $(deps.path)/lib7z/Bra.c
$(object.path)/dep-Bra86.o: $(deps.path)/lib7z/Bra86.c
$(object.path)/dep-BraIA64.o: $(deps.path)/lib7z/BraIA64.c
$(object.path)/dep-CpuArch.o: $(deps.path)/lib7z/CpuArch.c
$(object.path)/dep-Delta.o: $(deps.path)/lib7z/Delta.c
$(object.path)/dep-Lzma2Dec.o: $(deps.path)/lib7z/Lzma2Dec.c
$(object.path)/dep-LzmaDec.o: $(deps.path)/lib7z/LzmaDec.c
$(object.path)/dep-Ppmd7.o: $(deps.path)/lib7z/Ppmd7.c
$(object.path)/dep-Ppmd7Dec.o: $(deps.path)/lib7z/Ppmd7Dec.c
$(object.path)/dep-Sha256.o: $(deps.path)/lib7z/Sha256.c
$(object.path)/dep-Xz.o: $(deps.path)/lib7z/Xz.c
$(object.path)/dep-XzCrc64.o: $(deps.path)/lib7z/XzCrc64.c
$(object.path)/dep-XzCrc64Opt.o: $(deps.path)/lib7z/XzCrc64Opt.c
$(object.path)/dep-XzDec.o: $(deps.path)/lib7z/XzDec.c

$(object.path)/dep-spng.o: $(deps.path)/libspng/spng.c

$(object.path)/dep-lapi.o: $(deps.path)/lua/lapi.c
$(object.path)/dep-lauxlib.o: $(deps.path)/lua/lauxlib.c
$(object.path)/dep-lbaselib.o: $(deps.path)/lua/lbaselib.c
$(object.path)/dep-lcode.o: $(deps.path)/lua/lcode.c
$(object.path)/dep-ldblib.o: $(deps.path)/lua/ldblib.c
$(object.path)/dep-ldebug.o: $(deps.path)/lua/ldebug.c
$(object.path)/dep-ldo.o: $(deps.path)/lua/ldo.c
$(object.path)/dep-ldump.o: $(deps.path)/lua/ldump.c
$(object.path)/dep-lfunc.o: $(deps.path)/lua/lfunc.c
$(object.path)/dep-lgc.o: $(deps.path)/lua/lgc.c
$(object.path)/dep-linit.o: $(deps.path)/lua/linit.c
$(object.path)/dep-liolib.o: $(deps.path)/lua/liolib.c
$(object.path)/dep-llex.o: $(deps.path)/lua/llex.c
$(object.path)/dep-lmathlib.o: $(deps.path)/lua/lmathlib.c
$(object.path)/dep-lmem.o: $(deps.path)/lua/lmem.c
$(object.path)/dep-loadlib.o: $(deps.path)/lua/loadlib.c
$(object.path)/dep-lobject.o: $(deps.path)/lua/lobject.c
$(object.path)/dep-lopcodes.o: $(deps.path)/lua/lopcodes.c
$(object.path)/dep-loslib.o: $(deps.path)/lua/loslib.c
$(object.path)/dep-lparser.o: $(deps.path)/lua/lparser.c
$(object.path)/dep-lstate.o: $(deps.path)/lua/lstate.c
$(object.path)/dep-lstring.o: $(deps.path)/lua/lstring.c
$(object.path)/dep-lstrlib.o: $(deps.path)/lua/lstrlib.c
$(object.path)/dep-ltable.o: $(deps.path)/lua/ltable.c
$(object.path)/dep-ltablib.o: $(deps.path)/lua/ltablib.c
$(object.path)/dep-ltm.o: $(deps.path)/lua/ltm.c
$(object.path)/dep-lundump.o: $(deps.path)/lua/lundump.c
$(object.path)/dep-lvm.o: $(deps.path)/lua/lvm.c
$(object.path)/dep-lzio.o: $(deps.path)/lua/lzio.c
$(object.path)/dep-print.o: $(deps.path)/lua/print.c

$(object.path)/dep-adler32.o: $(deps.path)/zlib/adler32.c
$(object.path)/dep-compress.o: $(deps.path)/zlib/compress.c
$(object.path)/dep-crc32.o: $(deps.path)/zlib/crc32.c
$(object.path)/dep-deflate.o: $(deps.path)/zlib/deflate.c
$(object.path)/dep-gzclose.o: $(deps.path)/zlib/gzclose.c
$(object.path)/dep-gzlib.o: $(deps.path)/zlib/gzlib.c
$(object.path)/dep-gzread.o: $(deps.path)/zlib/gzread.c
$(object.path)/dep-gzwrite.o: $(deps.path)/zlib/gzwrite.c
$(object.path)/dep-infback.o: $(deps.path)/zlib/infback.c
$(object.path)/dep-inffast.o: $(deps.path)/zlib/inffast.c
$(object.path)/dep-inflate.o: $(deps.path)/zlib/inflate.c
$(object.path)/dep-inftrees.o: $(deps.path)/zlib/inftrees.c
$(object.path)/dep-trees.o: $(deps.path)/zlib/trees.c
$(object.path)/dep-uncompr.o: $(deps.path)/zlib/uncompr.c
$(object.path)/dep-zutil.o: $(deps.path)/zlib/zutil.c
