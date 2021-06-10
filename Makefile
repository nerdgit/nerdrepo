
CC=gcc
RM=rm

CCFLAGS=-g
RMFLAGS=-rf

OUTPUT=main

$(OUTPUT): main.c
	$(CC) $(CCFLAGS) main.c -o $(OUTPUT)

.PHONY: clean

clean:
	$(RM) $(RMFLAGS) $(OUTPUT)

