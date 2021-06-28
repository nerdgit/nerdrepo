
CC=gcc
RM=rm
GD=gdb

CCFLAGS=-g
RMFLAGS=-rf
GDFLAGS=-tui

OUTPUT=main

$(OUTPUT): main.c
	$(CC) $(CCFLAGS) main.c -o $(OUTPUT)

.PHONY: clean debug run

TTY:=/dev/null

clean:
	$(RM) $(RMFLAGS) $(OUTPUT)

debug: $(OUTPUT)
	$(GD) $(GDFLAGS) -ex "tty $(TTY)" -ex "source gdbinit"

run: $(OUTPUT)
	./$(OUTPUT)
