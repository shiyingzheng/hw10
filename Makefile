all: shell arraylist.o

arraylist.o: arraylist.c
	clang -c arraylist.c

shell: shell.c arraylist.o
	clang -g -pedantic -std=c99 -o shell shell.c arraylist.o

clean:
	rm -f shell arraylist.o
