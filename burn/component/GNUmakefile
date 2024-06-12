flags += -I$(burn.path)/component/devices
flags += -I$(burn.path)/component/snd
flags += -I$(burn.path)/component/processor
flags += -I$(burn.path)/component/processor/i8039
flags += -I$(burn.path)/component/processor/i8051
flags += -I$(burn.path)/component/processor/v60

burn.objects += burn-devices-pic8259
burn.objects += burn-devices-resnet

$(object.path)/burn-devices-pic8259.o: $(burn.path)/component/devices/pic8259.cpp
$(object.path)/burn-devices-resnet.o: $(burn.path)/component/devices/resnet.cpp

burn.objects += burn-processor-i8039
burn.objects += burn-processor-m6800 burn-processor-m6800_intf
burn.objects += burn-processor-m68kcpu burn-processor-m68kops burn-processor-m68000_intf
burn.objects += burn-processor-mcs51
burn.objects += burn-processor-nec burn-processor-nec_intf burn-processor-v25
burn.objects += burn-processor-v60
burn.objects += burn-processor-z80 burn-processor-z80ctc burn-processor-z80daisy burn-processor-z80pio burn-processor-z80_intf

$(object.path)/burn-processor-i8039.o: $(burn.path)/component/processor/i8039/i8039.cpp

$(object.path)/burn-processor-m6800.o: $(burn.path)/component/processor/m6800/m6800.cpp
$(object.path)/burn-processor-m6800_intf.o: $(burn.path)/component/processor/m6800_intf.cpp

$(object.path)/burn-processor-m68kcpu.o: $(burn.path)/component/processor/m68k/m68kcpu.c
$(object.path)/burn-processor-m68kops.o: $(burn.path)/component/processor/m68k/m68kops.c
$(object.path)/burn-processor-m68000_intf.o: $(burn.path)/component/processor/m68000_intf.cpp

$(object.path)/burn-processor-mcs51.o: $(burn.path)/component/processor/i8051/mcs51.cpp

$(object.path)/burn-processor-nec.o: $(burn.path)/component/processor/nec/nec.cpp
$(object.path)/burn-processor-v25.o: $(burn.path)/component/processor/nec/v25.cpp
$(object.path)/burn-processor-nec_intf.o: $(burn.path)/component/processor/nec_intf.cpp

$(object.path)/burn-processor-v60.o: $(burn.path)/component/processor/v60/v60.cpp

$(object.path)/burn-processor-z80.o: $(burn.path)/component/processor/z80/z80.cpp
$(object.path)/burn-processor-z80ctc.o: $(burn.path)/component/processor/z80/z80ctc.cpp
$(object.path)/burn-processor-z80daisy.o: $(burn.path)/component/processor/z80/z80daisy.cpp
$(object.path)/burn-processor-z80pio.o: $(burn.path)/component/processor/z80/z80pio.cpp
$(object.path)/burn-processor-z80_intf.o: $(burn.path)/component/processor/z80_intf.cpp

burn.objects += burn-snd-ay8910
burn.objects += burn-snd-burn_ym2151 burn-snd-ym2151
burn.objects += burn-snd-burn_ym2203
burn.objects += burn-snd-burn_ym2608
burn.objects += burn-snd-burn_ym2610
burn.objects += burn-snd-burn_ym2612
burn.objects += burn-snd-dac
burn.objects += burn-snd-fm
burn.objects += burn-snd-iremga20
burn.objects += burn-snd-msm5205
burn.objects += burn-snd-msm5232
burn.objects += burn-snd-msm6295
burn.objects += burn-snd-samples
burn.objects += burn-snd-ymdeltat

$(object.path)/burn-snd-ay8910.o: $(burn.path)/component/snd/ay8910.c
$(object.path)/burn-snd-burn_ym2151.o: $(burn.path)/component/snd/burn_ym2151.cpp
$(object.path)/burn-snd-burn_ym2203.o: $(burn.path)/component/snd/burn_ym2203.cpp
$(object.path)/burn-snd-burn_ym2608.o: $(burn.path)/component/snd/burn_ym2608.cpp
$(object.path)/burn-snd-burn_ym2610.o: $(burn.path)/component/snd/burn_ym2610.cpp
$(object.path)/burn-snd-burn_ym2612.o: $(burn.path)/component/snd/burn_ym2612.cpp
$(object.path)/burn-snd-dac.o: $(burn.path)/component/snd/dac.cpp
$(object.path)/burn-snd-fm.o: $(burn.path)/component/snd/fm.c
$(object.path)/burn-snd-iremga20.o: $(burn.path)/component/snd/iremga20.cpp
$(object.path)/burn-snd-msm5205.o: $(burn.path)/component/snd/msm5205.cpp
$(object.path)/burn-snd-msm5232.o: $(burn.path)/component/snd/msm5232.cpp
$(object.path)/burn-snd-msm6295.o: $(burn.path)/component/snd/msm6295.cpp
$(object.path)/burn-snd-samples.o: $(burn.path)/component/snd/samples.cpp
$(object.path)/burn-snd-ym2151.o: $(burn.path)/component/snd/ym2151.c
$(object.path)/burn-snd-ymdeltat.o: $(burn.path)/component/snd/ymdeltat.c
