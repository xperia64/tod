OBJ = hiscore rec scrctl tetanus crc allegdlg hgrcos
HEADS = tod.h allegdlg.h crc.h hgrcos.h hiscore.h
LIBS = `allegro-config --libs`
CFLAGS += `allegro-config --cflags` -Wall -O0
CC = gcc


OBJS = $(addsuffix .o,$(OBJ))

#Some of these rules are redundant on a GNU system, but they are
#necessary on some Allegro platforms to force use of GCC.

rec.exe: $(OBJS)
	gcc $(LDFLAGS) -o tod-debug.exe $(OBJS) $(LIBS)

%.o: %.c $(HEADS)
	gcc $(CFLAGS) -o $@ -c $<
