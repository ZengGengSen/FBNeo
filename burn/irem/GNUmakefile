irem.drivers := m107
irem.drivers += m52
irem.drivers += m57
irem.drivers += m58
irem.drivers += m62
irem.drivers += m63
irem.drivers += m72
irem.drivers += m90
irem.drivers += m92
irem.drivers += vigilant

driver.sources += $(irem.drivers:%=$(burn.path)/irem/d_%.cpp)

burn.objects += $(irem.drivers:%=burn-irem-%)
burn.objects += burn-irem-cpu
burn.objects += burn-irem-sound

$(object.path)/burn-irem-m107.o: $(burn.path)/irem/d_m107.cpp
$(object.path)/burn-irem-m52.o: $(burn.path)/irem/d_m52.cpp
$(object.path)/burn-irem-m57.o: $(burn.path)/irem/d_m57.cpp
$(object.path)/burn-irem-m58.o: $(burn.path)/irem/d_m58.cpp
$(object.path)/burn-irem-m62.o: $(burn.path)/irem/d_m62.cpp
$(object.path)/burn-irem-m63.o: $(burn.path)/irem/d_m63.cpp
$(object.path)/burn-irem-m72.o: $(burn.path)/irem/d_m72.cpp
$(object.path)/burn-irem-m90.o: $(burn.path)/irem/d_m90.cpp
$(object.path)/burn-irem-m92.o: $(burn.path)/irem/d_m92.cpp
$(object.path)/burn-irem-vigilant.o: $(burn.path)/irem/d_vigilant.cpp
$(object.path)/burn-irem-cpu.o: $(burn.path)/irem/irem_cpu.cpp
$(object.path)/burn-irem-sound.o: $(burn.path)/irem/irem_sound.cpp
