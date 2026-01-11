cc65_options = -O -C apple2enh-system.cfg -t apple2enh -D APPLE2E -D NCOL=80 -D CV_IS_A_FUNCTION 
output_dir = Apple2e_IPassiDellaRegina
aws_options  = -m -c -s -d -n -w -3 -kk -p

all: Apple2e
queens_no_utf8.c: ../../aws_sources/all_parts/queens_complete.aws
	../../../aws2c $(aws_options) -R res_it.lst mapfile_it.h -f config_it_nu.h $< $@

text_it.dat: queens_no_utf8.c
	python ../../../utils/retro/res_packer.py res_it.lst text_it.dat

queens_it.bin: inout.c queens_no_utf8.c resource.c text_it.dat
	cl65  -DCONFIG_FILENAME=\"config_it_nu.h\" --mapfile queens_it.map $(cc65_options) queens_no_utf8.c inout.c loadsave.c resource.c -o $@

Apple2e: queens_it.bin 

clean:
	rm queens_no_utf8.c config_it_nu.h *.o *.dat *.po *.map *.bin mapfile_*.h *.lst *.zip
