LINUX=1
GPU=1

# 源代码所在目录（包括所有子目录）

VPATH=./ \
	  ./lumos/lenet \
	  ./lumoe/mnist \
	  ./lumos/ xor

COMMON=-Ilumos/lenet \
	   -Ilumos/mnist \
	   -Ilumos/xor

EXEC=lumos.exe
OBJDIR=./obj/

CC=gcc

LDFLAGS= -L/usr/local/lumos/lib -llumos
COMMON+= -I/usr/local/lumos/include -std=c99 -fopenmp
CFLAGS=-Wall -Wno-unused-result -Wno-unknown-pragmtensor -Wfatal-errors

ifeq ($(GPU),1)
COMMON+= -DGPU
CFLAGS+= -DGPU
endif

OBJ=	xor.o mnist.o lenet.o \

EXECOBJA=lumos.o

EXECOBJ = $(addprefix $(OBJDIR), $(EXECOBJA))
OBJS = $(addprefix $(OBJDIR), $(OBJ))
DEPS = makefile

all: obj $(EXEC)

$(EXEC): $(OBJS) $(EXECOBJ)
	$(CC) $(COMMON) $(CFLAGS) $^ -o $@ $(LDFLAGS)

$(OBJDIR)%.o: %.c $(DEPS)
	$(CC) $(COMMON) $(CFLAGS) -c $< -o $@

obj:
	mkdir obj

.PHONY: clean

clean:
	rm -rf obj
	rm -f lumos