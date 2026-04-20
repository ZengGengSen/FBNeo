# Drivers, CPUs and devices for the Namco System 2 subset
#
# Hardware overview:
#   - 2× MC68000 (main + sub CPU)
#   - MC6809 (sound CPU)
#   - MC6805 (MCU / protection)
#   - YM2151 (FM sound)
#   - C140   (Namco custom 24-ch PCM)
#   - C169   (ROZ tilemap ASIC)
#   - Namco C45 (protection / timer ASIC)
#
# Covered games (tested/near-good in FBNeo):
#   assault, burnforc, cosmogng, dsaber, mirninja, valkyrie,
#   ordyne, phelious, rthun2, marvland, metlhawk, kyukaidk,
#   sws92/93, sgunner, sgunner2, dirtfoxj, finehour, luckywld,
#   fourtrax, finallap*, suzuka8*, bubbletr, gollygho

# ---------------------------------------------------------------------------
# Primary CPU — MC68000 (dual instance: main + sub board)
# ---------------------------------------------------------------------------
ifeq ($(USE_C68K),1)
	FBNEO_DEFINES += -DUSE_C68K
	SOURCES_CXX += $(FBNEO_CPU_DIR)/c68k_intf.cpp
else
	SOURCES_C   += $(M68K_CPU_DIR)/m68kcpu.c \
		$(M68K_CPU_DIR)/m68kops.c
	SOURCES_CXX += $(FBNEO_CPU_DIR)/m68000_intf.cpp
endif

# ---------------------------------------------------------------------------
# Sound CPU — MC6809
# ---------------------------------------------------------------------------
SOURCES_CXX += $(FBNEO_CPU_DIR)/m6809_intf.cpp \
	$(M6809_CPU_DIR)/m6809.cpp

# ---------------------------------------------------------------------------
# MCU — MC6805 (protection / I/O)
# ---------------------------------------------------------------------------
SOURCES_CXX += $(FBNEO_CPU_DIR)/m6805_intf.cpp \
	$(M6805_CPU_DIR)/m6805.cpp

# ---------------------------------------------------------------------------
# Sound chips
# ---------------------------------------------------------------------------
SOURCES_C   += $(FBNEO_BURN_SND_DIR)/ym2151.c

SOURCES_CXX += $(FBNEO_BURN_SND_DIR)/burn_ym2151.cpp \
	$(FBNEO_BURN_SND_DIR)/c140.cpp

# ---------------------------------------------------------------------------
# Namco custom ASIC devices
# ---------------------------------------------------------------------------
SOURCES_CXX += $(FBNEO_BURN_DEVICES_DIR)/c169.cpp \
	$(FBNEO_BURN_DEVICES_DIR)/namco_c45.cpp \
	$(FBNEO_BURN_DEVICES_DIR)/joyprocess.cpp

# ---------------------------------------------------------------------------
# Burn graphics / input helpers (not in Makefile.common)
# ---------------------------------------------------------------------------
SOURCES_CXX += $(FBNEO_BURN_DIR)/burn_bitmap.cpp \
	$(FBNEO_BURN_DIR)/burn_shift.cpp \
	$(FBNEO_BURN_DIR)/tilemap_generic.cpp \
	$(FBNEO_BURN_DIR)/tiles_generic.cpp

# ---------------------------------------------------------------------------
# Driver
# ---------------------------------------------------------------------------
SOURCES_CXX += $(PST90S_DIR)/d_namcos2.cpp

CFLAGS   += -DSUBSET=\"$(SUBSET)\" -DNO_NEOGEO -DNO_CONSOLES_COMPUTERS
CXXFLAGS += -DSUBSET=\"$(SUBSET)\" -DNO_NEOGEO -DNO_CONSOLES_COMPUTERS
