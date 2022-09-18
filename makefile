OBJ = hiscore rec scrctl tetanus crc allegdlg hgrcos
HEADS = tod.h allegdlg.h crc.h hgrcos.h hiscore.h
LIBS = -lalleg
CFLAGS = -Wall -march=i486 -mcpu=i686 -O3 -ffast-math
LDFLAGS = -mwindows
CC = gcc


OBJS = $(addsuffix .o,$(OBJ))

#Some of these rules are redundant on a GNU system, but they are
#necessary on some Allegro platforms to force use of GCC.

rec.exe: $(OBJS)
	gcc $(LDFLAGS) -o tod-debug.exe $(OBJS) $(LIBS)

%.o: %.c $(HEADS)
	gcc $(CFLAGS) -o $@ -c $<
