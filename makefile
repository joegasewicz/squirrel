PROG_NAME = squirrel

SRC_FILES = server.c squirrel.c
CFLAGS = -g -Wall

build:
	gcc $(CFLAGS) -o $(PROG_NAME) $(SRC_FILES)
run:
	./$(PROG_NAME)
