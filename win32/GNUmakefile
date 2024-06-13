name := fbneo
build := optimized

threaded := false
openmp := false
vulkan := false
sdl2 := false
local := false
lto := false

# build has console for windows
console := false
static  := true

flags += -I. -I.. -I../burn -I../burner -I../interface
flags += -DBUILD_WIN32 -D_UNICODE -DLSB_FIRST -DINCLUDE_AVI_RECORDING -DUSE_SPEEDHACKS
flags += -Wno-write-strings

options += -lsetupapi
options += -lcomctl32
options += -lwinmm
options += -lwininet
options += -lvfw32

include ../common.makefile

ifneq ($(findstring windres,$(windres)),)
  # windres
  resource.extension := .o
  resource.command = $1 $2
else
  # rc
  resource.extension := .res
  resource.command = /nologo /fo $2 $1
endif

scripts.path := ../scripts

cores := irem neogeo neogeocd

burn.path := ../burn
include $(burn.path)/GNUmakefile

burner.path := ../burner
include $(burner.path)/GNUmakefile

interface.path := ../interface
include $(interface.path)/GNUmakefile

deps.path := ../deps
include $(deps.path)/GNUmakefile

win32.path    := ../win32

win32.objects := win32-main

win32.objects += win32-about
win32.objects += win32-avi
win32.objects += win32-bzip
win32.objects += win32-choose_monitor
win32.objects += win32-cona
win32.objects += win32-d3dkmt_sync
win32.objects += win32-debugger
win32.objects += win32-drv
win32.objects += win32-fba_kaillera
win32.objects += win32-gameinfo
win32.objects += win32-image_win32
win32.objects += win32-inpc
win32.objects += win32-inpcheat
win32.objects += win32-inpd
win32.objects += win32-inpdipsw
win32.objects += win32-inps
win32.objects += win32-ips_manager
win32.objects += win32-localise
win32.objects += win32-localise_download
win32.objects += win32-localise_gamelist
win32.objects += win32-luaconsole
win32.objects += win32-media
win32.objects += win32-memcard
win32.objects += win32-menu
win32.objects += win32-misc_win32
win32.objects += win32-numdial
win32.objects += win32-paletteviewer
win32.objects += win32-placeholder
win32.objects += win32-popup_win32
win32.objects += win32-progress
win32.objects += win32-replay
win32.objects += win32-res
win32.objects += win32-romdata
win32.objects += win32-roms
win32.objects += win32-run
win32.objects += win32-scrn
win32.objects += win32-sel
win32.objects += win32-sfactd
win32.objects += win32-splash
win32.objects += win32-stated
win32.objects += win32-support_paths
win32.objects += win32-systeminfo
win32.objects += win32-wave

ifneq ($(filter neogeocd,$(cores)),)
	win32.objects += win32-neocdlist
	win32.objects += win32-neocdsel
endif

win32.objects := $(win32.objects:%=$(object.path)/%.o)
win32.objects += $(object.path)/win32-resource$(resource.extension)

$(object.path)/win32-main.o: $(win32.path)/main.cpp

$(object.path)/win32-about.o: $(win32.path)/about.cpp
$(object.path)/win32-avi.o: $(win32.path)/avi.cpp
$(object.path)/win32-bzip.o: $(win32.path)/bzip.cpp
$(object.path)/win32-choose_monitor.o: $(win32.path)/choose_monitor.cpp
$(object.path)/win32-cona.o: $(win32.path)/cona.cpp
$(object.path)/win32-d3dkmt_sync.o: $(win32.path)/d3dkmt_sync.cpp
$(object.path)/win32-debugger.o: $(win32.path)/debugger.cpp
$(object.path)/win32-drv.o: $(win32.path)/drv.cpp
$(object.path)/win32-fba_kaillera.o: $(win32.path)/fba_kaillera.cpp
$(object.path)/win32-gameinfo.o: $(win32.path)/gameinfo.cpp
$(object.path)/win32-image_win32.o: $(win32.path)/image_win32.cpp
$(object.path)/win32-inpc.o: $(win32.path)/inpc.cpp
$(object.path)/win32-inpcheat.o: $(win32.path)/inpcheat.cpp
$(object.path)/win32-inpd.o: $(win32.path)/inpd.cpp
$(object.path)/win32-inpdipsw.o: $(win32.path)/inpdipsw.cpp
$(object.path)/win32-inps.o: $(win32.path)/inps.cpp
$(object.path)/win32-ips_manager.o: $(win32.path)/ips_manager.cpp
$(object.path)/win32-localise.o: $(win32.path)/localise.cpp
$(object.path)/win32-localise_download.o: $(win32.path)/localise_download.cpp
$(object.path)/win32-localise_gamelist.o: $(win32.path)/localise_gamelist.cpp
$(object.path)/win32-luaconsole.o: $(win32.path)/luaconsole.cpp
$(object.path)/win32-media.o: $(win32.path)/media.cpp
$(object.path)/win32-memcard.o: $(win32.path)/memcard.cpp
$(object.path)/win32-menu.o: $(win32.path)/menu.cpp
$(object.path)/win32-misc_win32.o: $(win32.path)/misc_win32.cpp
$(object.path)/win32-neocdlist.o: $(win32.path)/neocdlist.cpp
$(object.path)/win32-neocdsel.o: $(win32.path)/neocdsel.cpp
$(object.path)/win32-numdial.o: $(win32.path)/numdial.cpp
$(object.path)/win32-paletteviewer.o: $(win32.path)/paletteviewer.cpp
$(object.path)/win32-placeholder.o: $(win32.path)/placeholder.cpp
$(object.path)/win32-popup_win32.o: $(win32.path)/popup_win32.cpp
$(object.path)/win32-progress.o: $(win32.path)/progress.cpp
$(object.path)/win32-replay.o: $(win32.path)/replay.cpp
$(object.path)/win32-res.o: $(win32.path)/res.cpp
$(object.path)/win32-romdata.o: $(win32.path)/romdata.cpp
$(object.path)/win32-roms.o: $(win32.path)/roms.cpp
$(object.path)/win32-run.o: $(win32.path)/run.cpp
$(object.path)/win32-scrn.o: $(win32.path)/scrn.cpp
$(object.path)/win32-sel.o: $(win32.path)/sel.cpp
$(object.path)/win32-sfactd.o: $(win32.path)/sfactd.cpp
$(object.path)/win32-splash.o: $(win32.path)/splash.cpp
$(object.path)/win32-stated.o: $(win32.path)/stated.cpp
$(object.path)/win32-support_paths.o: $(win32.path)/support_paths.cpp
$(object.path)/win32-systeminfo.o: $(win32.path)/systeminfo.cpp
$(object.path)/win32-wave.o: $(win32.path)/wave.cpp

# Resource
resource.app_gnuc := $(object.path)/license.rtf
resource.app_gnuc += $(win32.path)/app.rc
resource.app_gnuc += $(win32.path)/resource/fbneo.ico
resource.app_gnuc += $(win32.path)/resource/about.bmp
resource.app_gnuc += $(win32.path)/resource/splash.bmp
resource.app_gnuc += $(win32.path)/resource/misc.bmp

resource := $(win32.path)/resource.rc
resource += $(object.path)/app_gnuc.rc
resource += $(win32.path)/string.rc
resource += $(win32.path)/version.rc
resource += $(win32.path)/build_details.h

resource.flags := -I$(win32.path)
resource.flags += -I$(burn.path)/burn
resource.flags += -I$(burner.path)
resource.flags += -I$(object.path)
resource.flags += -I$(interface.path)/video/win32

$(resource.app_gnuc): $(object.path)
$(resource): $(object.path)

$(object.path)/license.rtf: $(win32.path)/../license.txt $(scripts.path)/license2rtf.pl | $(object.path)
	$(info Generating $@ ...)
	@perl $(scripts.path)/license2rtf.pl $< -o $@

$(object.path)/app_gnuc.rc: $(resource.app_gnuc) $(scripts.path)/fixrc.pl | $(object.path)
	$(info Generating $@ ...)
	@$(perl) $(scripts.path)/fixrc.pl $(win32.path)/app.rc -o $@

$(object.path)/win32-resource$(resource.extension): $(resource)
	$(info Compiling $(subst ../,,$<) ...)
	@$(windres) $(resource.flags) $(call resource.command,$(win32.path)/resource.rc,$@)

all.objects := $(win32.objects) $(burn.objects) $(burner.objects) $(interface.objects) $(deps.objects)
all.options := $(options)

$(all.objects): | $(object.path)

all: $(all.objects) | $(output.path)
	$(info Linking $(output.path)/$(name)$(extension) ...)
	+@$(compiler) $(call exe,$(output.path)/$(name)$(extension)) $(all.objects) $(all.options) $(flags)

clean:
ifeq ($(platform),macos)
	rm -rf $(output.path)/$(name).app
endif
	$(call rdelete,$(object.path))
	$(call rdelete,$(output.path))

install: all

uninstall:

-include $(object.path)/*.d
