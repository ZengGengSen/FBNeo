flags += -I$(interface.path)/audio
flags += -I$(interface.path)/cd
flags += -I$(interface.path)/input
flags += -I$(interface.path)/video
flags += -I$(interface.path)/video/scalers
flags += -I$(interface.path)/video/win32

options += -lgdi32

interface.objects := interface

interface.objects += interface-audio-interface
interface.objects += interface-audio-dsp
interface.objects += interface-audio-lowpass

ifeq ($(platform),windows)
	interface.objects += interface-audio-dsound-core
	interface.objects += interface-audio-dsound3
	interface.objects += interface-audio-xaudio2
endif

interface.objects += interface-cd-interface

ifeq ($(platform),windows)
	interface.objects += interface-cd-img
endif

interface.objects += interface-input-interface

ifeq ($(platform),windows)
	interface.objects += interface-input-dinput
	interface.objects += interface-input-dinput-core
endif

interface.objects += interface-perfcount-interface
ifeq ($(platform),windows)
	interface.objects += interface-perfcount-performance-counter
endif

interface.objects += interface-video-interface
interface.objects += interface-video-softfx
interface.objects += interface-video-support

interface.objects += interface-video-scalers-crt
interface.objects += interface-video-scalers-ddt3x
interface.objects += interface-video-scalers-epx
interface.objects += interface-video-scalers-hq2xs
interface.objects += interface-video-scalers-hq2xs_16
interface.objects += interface-video-scalers-xbr
interface.objects += interface-video-scalers-xbr32

# win32 video
ifeq ($(platform),windows)
	interface.objects += interface-video-ddraw-core
	interface.objects += interface-video-directx9-core
	interface.objects += interface-video-d3d
	interface.objects += interface-video-ddraw
	interface.objects += interface-video-ddrawfx
	interface.objects += interface-video-directx9
	interface.objects += interface-video-directx-support
	interface.objects += interface-video-effect
endif

interface.objects := $(interface.objects:%=$(object.path)/%.o)

$(object.path)/interface.o: $(interface.path)/interface.cpp

$(object.path)/interface-audio-interface.o: $(interface.path)/audio/aud_interface.cpp
$(object.path)/interface-audio-dsp.o: $(interface.path)/audio/aud_dsp.cpp
$(object.path)/interface-audio-lowpass.o: $(interface.path)/audio/lowpass2.cpp

$(object.path)/interface-audio-dsound-core.o: $(interface.path)/audio/win32/dsound_core.cpp
$(object.path)/interface-audio-dsound3.o: $(interface.path)/audio/win32/aud_dsound3.cpp
$(object.path)/interface-audio-xaudio2.o: $(interface.path)/audio/win32/aud_xaudio2.cpp

$(object.path)/interface-cd-interface.o: $(interface.path)/cd/cd_interface.cpp
$(object.path)/interface-cd-img.o: $(interface.path)/cd/win32/cd_img.cpp

$(object.path)/interface-input-interface.o: $(interface.path)/input/inp_interface.cpp

$(object.path)/interface-input-dinput.o: $(interface.path)/input/win32/inp_dinput.cpp
$(object.path)/interface-input-dinput-core.o: $(interface.path)/input/win32/dinput_core.cpp

$(object.path)/interface-perfcount-interface.o: $(interface.path)/perfcount/prf_interface.cpp
$(object.path)/interface-perfcount-performance-counter.o: $(interface.path)/perfcount/win32/prf_performance_counter.cpp

$(object.path)/interface-video-interface.o: $(interface.path)/video/vid_interface.cpp
$(object.path)/interface-video-softfx.o: $(interface.path)/video/vid_softfx.cpp
$(object.path)/interface-video-support.o: $(interface.path)/video/vid_support.cpp

$(object.path)/interface-video-scalers-crt.o: $(interface.path)/video/scalers/crt.cpp
$(object.path)/interface-video-scalers-ddt3x.o: $(interface.path)/video/scalers/ddt3x.cpp
$(object.path)/interface-video-scalers-epx.o: $(interface.path)/video/scalers/epx.cpp
$(object.path)/interface-video-scalers-hq2xs.o: $(interface.path)/video/scalers/hq2xs.cpp
$(object.path)/interface-video-scalers-hq2xs_16.o: $(interface.path)/video/scalers/hq2xs_16.cpp
$(object.path)/interface-video-scalers-xbr.o: $(interface.path)/video/scalers/xbr.cpp
$(object.path)/interface-video-scalers-xbr32.o: $(interface.path)/video/scalers/xbr32.cpp

$(object.path)/interface-video-ddraw-core.o: $(interface.path)/video/win32/ddraw_core.cpp
$(object.path)/interface-video-directx9-core.o: $(interface.path)/video/win32/directx9_core.cpp
$(object.path)/interface-video-d3d.o: $(interface.path)/video/win32/vid_d3d.cpp
$(object.path)/interface-video-ddraw.o: $(interface.path)/video/win32/vid_ddraw.cpp
$(object.path)/interface-video-ddrawfx.o: $(interface.path)/video/win32/vid_ddrawfx.cpp
$(object.path)/interface-video-directx9.o: $(interface.path)/video/win32/vid_directx9.cpp
$(object.path)/interface-video-directx-support.o: $(interface.path)/video/win32/vid_directx_support.cpp
$(object.path)/interface-video-effect.o: $(interface.path)/video/win32/vid_effect.cpp
