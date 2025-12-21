aws_options  = -m -c -s -d -n -w -3
zcc_options = +msx -DMSX -O3 -create-app -pragma-define:CLIB_DISABLE_FGETS_CURSOR=1 -lndos -zorg=32768 -pragma-define:CRT_INITIALIZE_BSS=0

all: msx

queens1_no_UTF8.c: ../../aws_sources/part1/queens1.aws
	../../../aws2c $(aws_options) -f config1.h ../../aws_sources/part1/queens1.aws queens1_no_UTF8.c

queens2_no_UTF8.c: ../../aws_sources/part2/queens2.aws
	../../../aws2c $(aws_options) -f config2.h ../../aws_sources/part2/queens2.aws queens2_no_UTF8.c

queens3_no_UTF8.c: ../../aws_sources/part34/queens3.aws
	../../../aws2c $(aws_options) -f config3.h ../../aws_sources/part34/queens3.aws queens3_no_UTF8.c

msx: part1 part2 part3

part1: queens1_no_UTF8.c inout.c loadsave.c
	zcc $(zcc_options) -DCONFIG_FILENAME="\"\\\"config1.h"\"\\\" queens1_no_UTF8.c inout.c loadsave.c -o tqf1

part2: queens2_no_UTF8.c inout.c loadsave.c
	zcc $(zcc_options) -DCONFIG_FILENAME="\"\\\"config2.h"\"\\\" queens2_no_UTF8.c inout.c loadsave.c -o tqf2

part3: queens3_no_UTF8.c inout.c loadsave.c
	zcc $(zcc_options) -DCONFIG_FILENAME="\"\\\"config2.h"\"\\\" queens3_no_UTF8.c inout.c loadsave.c -o tqf3


clean:
	rm config1.h config2.h config3.h queens1_no_UTF8.c queens2_no_UTF8.c queens3_no_UTF8.c *.o tqf1 tqf2 tqf3