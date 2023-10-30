CC = gcc
CFLAGS = -Wall -std=c99

all: ppos-test

ppos-test: ppos-core-aux.c pingpong-scheduler-srtf.c libppos_static.a
	$(CC) $(CFLAGS) ppos-core-aux.c pingpong-scheduler-srtf.c libppos_static.a -o ppos-test

clean:
	rm -f ppos-test

.PHONY: all clean

