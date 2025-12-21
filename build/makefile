all: subdirs

# Subdirectories for building versions
# SUBDIRS_M = Amiga Mac68k Plus4 modern_terminal MSDOS C128 CPM C64 VIC20 PET RC2014 CPC MSX Spectrum M20 CX16 SpectrumNext

SUBDIRS_M = Atari C128 CPM C64 PET RC2014 Spectrum CambridgeZ88 AppleII CPC

.PHONY: subdirs $(SUBDIRS_M)

subdirs: $(SUBDIRS_M)

$(SUBDIRS_M):
	$(MAKE) -C $@
