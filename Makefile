CC = gcc
CPP = g++

CFLAGS = $(shell sdl2-config --cflags) 
LDFLAGS = $(shell sdl2-config --libs) -lSDL2_image -lSDL2_mixer -lSDL2_ttf -lopengl32

all: breakout.exe

cp_functions.o: cp_functions.c
	$(CC) $(CFLAGS) -c cp_functions.c

main.o: main.cpp
	$(CPP) $(CFLAGS) -c main.cpp

breakout.exe: cp_functions.o main.o
	$(CPP) -o breakout.exe cp_functions.o main.o $(LDFLAGS)

clean: 
	rm -f *.o breakout.exe


