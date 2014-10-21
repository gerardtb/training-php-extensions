CC=gcc
CFLAGS=-c -O2 -Wall -std=c99
LDFLAGS=
SOURCES=test2.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=test2
 
all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@
	
clean:
	rm $(OBJECTS) $(EXECUTABLE)
