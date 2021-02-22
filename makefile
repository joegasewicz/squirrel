PROG_NAME = squirrel

SRC_FILES = server.c squirrel.c
CFLAGS = -g -Wall

build:
	gcc $(CFLAGS) -o $(PROG_NAME) $(SRC_FILES)
run:
	./$(PROG_NAME)

compile:
	gcc -Wall -g -c server.c -o server.o

py-build:
	gcc -Wall -g -c server.c -o server.o
	ar -rc libserver.a server.o
	python3.9 setup.py build_ext --inplace

py-run:
	python3.9 squirrel.py

test:
	make py-build
	make py-run