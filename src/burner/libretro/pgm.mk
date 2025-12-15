# Drivers, cpus and devices for neogeo subset
SOURCES_C += $(M68K_CPU_DIR)/m68kcpu.c \
	$(M68K_CPU_DIR)/m68kops.c

SOURCES_CXX += $(FBNEO_CPU_DIR)/arm7_intf.cpp \
	$(FBNEO_CPU_DIR)/m68000_intf.cpp \
	$(FBNEO_CPU_DIR)/z80_intf.cpp \
	$(ARM7_CPU_DIR)/arm7.cpp \
	$(Z80_CPU_DIR)/z80.cpp \
	$(Z80_CPU_DIR)/z80ctc.cpp \
	$(Z80_CPU_DIR)/z80daisy.cpp \
	$(Z80_CPU_DIR)/z80pio.cpp \
	$(FBNEO_BURN_DIR)/burn_bitmap.cpp \
	$(FBNEO_BURN_DIR)/tilemap_generic.cpp \
	$(FBNEO_BURN_DIR)/tiles_generic.cpp \
	$(FBNEO_BURN_SND_DIR)/ics2115.cpp \
	$(FBNEO_BURN_DEVICES_DIR)/joyprocess.cpp \
	$(FBNEO_BURN_DEVICES_DIR)/v3021.cpp \
	$(PGM_DIR)/d_pgm.cpp \
	$(PGM_DIR)/pgm_asic3.cpp \
	$(PGM_DIR)/pgm_asic25.cpp \
	$(PGM_DIR)/pgm_asic27a_type1.cpp \
	$(PGM_DIR)/pgm_asic27a_type2.cpp \
	$(PGM_DIR)/pgm_asic27a_type3.cpp \
	$(PGM_DIR)/pgm_crypt.cpp \
	$(PGM_DIR)/pgm_draw.cpp \
	$(PGM_DIR)/pgm_run.cpp

CFLAGS += -DSUBSET=\"$(SUBSET)\" -DNO_NEOGEO -DNO_CONSOLES_COMPUTERS
CXXFLAGS += -DSUBSET=\"$(SUBSET)\" -DNO_NEOGEO -DNO_CONSOLES_COMPUTERS
