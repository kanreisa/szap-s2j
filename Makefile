CC=gcc

SRC=lnb.c szap-s2j.c
HED=lnb.h
OBJ=lnb.o szap-s2j.o

BIND=/usr/local/bin/
INCLUDE=-I../s2/linux/include

TARGET=szap-s2j

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLG) $(OBJ) -o $(TARGET) $(CLIB) 

$(OBJ): $(HED)

install: all
	cp $(TARGET) $(BIND)

uninstall:
	rm $(BIND)$(TARGET)

clean:
	rm -f $(OBJ) $(TARGET) *~

%.o: %.c
	$(CC) $(INCLUDE) -c $< -o $@
