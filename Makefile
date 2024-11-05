CC=gcc
CFLAGS=-Wall -O3 -I.
DEPS = genpass.c
OBJ = genpass.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

genpass: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

prefix=/usr/local
    
install: genpass
	install -d $(prefix)/bin
	install -m 0755 genpass $(prefix)/bin
    
.PHONY: install

clean:
	rm -f *.o

.PHONY: clean
