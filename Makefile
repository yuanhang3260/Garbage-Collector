CC = gcc
CFLAGS = -Wall -Werror
OBJ = main.o

all: a.out

a.out: $(OBJ)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -c $^

%.o: %.S
	$(CC) -c -o $@ $<

clean:
	rm -f *.o a.out
