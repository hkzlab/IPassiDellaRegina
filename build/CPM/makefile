zcc_options = +cpm -lm -DNOANSI -pragma-define:CLIB_DISABLE_FGETS_CURSOR=1
aws_options  = -m -c -s -d -n -w -3 -kk

all: cpm

queens1_no_UTF8.c: ../../aws_sources/part1/queens1.aws
	../../../aws2c $(aws_options) -f config1.h ../../aws_sources/part1/queens1.aws queens1_no_UTF8.c

queens2_no_UTF8.c: ../../aws_sources/part2/queens2.aws
	../../../aws2c $(aws_options) -f config2.h ../../aws_sources/part2/queens2.aws queens2_no_UTF8.c

queens3_no_UTF8.c: ../../aws_sources/part34/queens3.aws
	../../../aws2c $(aws_options) -f config3.h ../../aws_sources/part34/queens3.aws queens3_no_UTF8.c

part1: queens1_no_UTF8.c inout.c loadsave.c
	zcc $(zcc_options) -DCONFIG_FILENAME="\"\\\"config1.h"\"\\\" queens1_no_UTF8.c inout.c loadsave.c -o CPMqns1.com

part2: queens2_no_UTF8.c inout.c loadsave.c
	zcc $(zcc_options) -DCONFIG_FILENAME="\"\\\"config2.h"\"\\\" queens2_no_UTF8.c inout.c loadsave.c -o CPMqns2.com

part3: queens3_no_UTF8.c inout.c loadsave.c
	zcc $(zcc_options) -DCONFIG_FILENAME="\"\\\"config2.h"\"\\\" queens3_no_UTF8.c inout.c loadsave.c -o CPMqns3.com


 

cpm: part1 part2 part3

clean:
	rm config1.h config2.h config3.h queens1_no_UTF8.c queens2_no_UTF8.c queens3_no_UTF8.c *.o CPMqns1.com CPMqns2.com CPMqns3.com