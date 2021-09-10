CC = gcc
TARGET = hello
CFLAGS =

LIB = lib
SRCDIR = src
BUILDDIR = build

LIBS = -I$(LIB)

SRCFILES := $(wildcard src/*.c)
OBJFILES := $(patsubst $(SRCDIR)/%.c, $(BUILDDIR)/%.o, ${SRCFILES})

all : $(TARGET)

$(BUILDDIR)/%.o : $(SRCDIR)/%.c $(LIB)/%.h
	${CC} ${CFLAGS} ${LIBS} $< -c -o $@

$(TARGET) : $(OBJFILES)
	${CC} ${CFLAGS} ${LIBS} -o $@ $^


clean:
	rm *.o
