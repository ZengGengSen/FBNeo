# Drivers, cpus and devices for neogeo subset
ifeq ($(USE_C68K),1)
	FBNEO_DEFINES += -DUSE_C68K
	SOURCES_CXX += $(FBNEO_CPU_DIR)/c68k_intf.cpp
else
	SOURCES_C += $(M68K_CPU_DIR)/m68kcpu.c \
		$(M68K_CPU_DIR)/m68kops.c
	SOURCES_CXX += $(FBNEO_CPU_DIR)/m68000_intf.cpp
endif

SOURCES_C += $(FBNEO_BURN_SND_DIR)/ym2151.c

SOURCES_CXX += \
	$(FBNEO_BURN_DIR)/burn_bitmap.cpp \
	$(FBNEO_BURN_DIR)/burn_shift.cpp \
	$(FBNEO_BURN_DIR)/tilemap_generic.cpp \
	$(FBNEO_BURN_DIR)/tiles_generic.cpp \
	$(FBNEO_BURN_DEVICES_DIR)/joyprocess.cpp \
	$(FBNEO_BURN_SND_DIR)/burn_ym2151.cpp \
	$(FBNEO_BURN_SND_DIR)/msm6295.cpp \
	$(PST90S_DIR)/d_cischeat.cpp

CFLAGS += -DSUBSET=\"$(SUBSET)\" -DNO_NEOGEO -DNO_CONSOLES_COMPUTERS
CXXFLAGS += -DSUBSET=\"$(SUBSET)\" -DNO_NEOGEO -DNO_CONSOLES_COMPUTERS
