flags += -I$(burn.path)/burn

burn.objects := burn
burn.objects += burn-bitmap
burn.objects += burn-cheat
burn.objects += burn-debug-track
burn.objects += burn-hiscore
burn.objects += burn-joyprocess
burn.objects += burn-load
burn.objects += burn-gun
burn.objects += burn-led
burn.objects += burn-memory
burn.objects += burn-pal
burn.objects += burn-shift
burn.objects += burn-sound
burn.objects += burn-sound_c
burn.objects += burn-tilemap-generic
burn.objects += burn-tiles-generic
burn.objects += burn-timer
burn.objects += burn-vector

burn.objects += burn-parent

driver.sources := $(burn.path)/burn/d_parent.cpp

#ifneq ($(filter $(cores),irem),)
include $(burn.path)/irem/GNUmakefile
#endif

#ifneq ($(filter $(cores),neogeo),)
include $(burn.path)/neogeo/GNUmakefile
#endif

include $(burn.path)/component/GNUmakefile

burn.objects := $(burn.objects:%=$(object.path)/%.o)

$(burn.path)/burn/driverlist.h: $(scripts.path)/gamelist.pl $(driver.sources)
	$(perl) $(scripts.path)/gamelist.pl -o $(burn.path)/burn/driverlist.h -l../gamelist.txt $(driver.sources)

$(object.path)/burn.o: $(burn.path)/burn/burn.cpp $(burn.path)/burn/driverlist.h
$(object.path)/burn-bitmap.o: $(burn.path)/burn/burn_bitmap.cpp
$(object.path)/burn-cheat.o: $(burn.path)/burn/cheat.cpp
$(object.path)/burn-debug-track.o: $(burn.path)/burn/debug_track.cpp
$(object.path)/burn-hiscore.o: $(burn.path)/burn/hiscore.cpp
$(object.path)/burn-joyprocess.o: $(burn.path)/burn/joyprocess.cpp
$(object.path)/burn-load.o: $(burn.path)/burn/load.cpp
$(object.path)/burn-gun.o: $(burn.path)/burn/burn_gun.cpp
$(object.path)/burn-led.o: $(burn.path)/burn/burn_led.cpp
$(object.path)/burn-memory.o: $(burn.path)/burn/burn_memory.cpp
$(object.path)/burn-pal.o: $(burn.path)/burn/burn_pal.cpp
$(object.path)/burn-shift.o: $(burn.path)/burn/burn_shift.cpp
$(object.path)/burn-sound.o: $(burn.path)/burn/burn_sound.cpp
$(object.path)/burn-sound_c.o: $(burn.path)/burn/burn_sound_c.cpp
$(object.path)/burn-tilemap-generic.o: $(burn.path)/burn/tilemap_generic.cpp
$(object.path)/burn-tiles-generic.o: $(burn.path)/burn/tiles_generic.cpp
$(object.path)/burn-timer.o: $(burn.path)/burn/timer.cpp
$(object.path)/burn-vector.o: $(burn.path)/burn/vector.cpp

$(object.path)/burn-parent.o: $(burn.path)/burn/d_parent.cpp
