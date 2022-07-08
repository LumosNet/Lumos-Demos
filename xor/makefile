LINUX=1

# 源代码所在目录（包括所有子目录）
VPATH=./ \
	  ./xor/ \

EXEC=main.exe
OBJDIR=./obj/

CC=gcc

LDFLAGS= -L/usr/local/lumos/lib -llumops -llumgraph -llumos
COMMON= -Ixor -I/usr/local/lumos/include/ -std=c99 -fopenmp
CFLAGS=-Wall -Wno-unused-result -Wno-unknown-pragmtensor -Wfatal-errors

OBJ=	xor.o \

EXECOBJA=main.o

EXECOBJ = $(addprefix $(OBJDIR), $(EXECOBJA))
OBJS = $(addprefix $(OBJDIR), $(OBJ))
DEPS = makefile

all: obj backup $(EXEC)

$(EXEC): $(OBJS) $(EXECOBJ)
	$(CC) $(COMMON) $(CFLAGS) $^ -o $@ $(LDFLAGS)

$(OBJDIR)%.o: %.c $(DEPS)
	$(CC) $(COMMON) $(CFLAGS) -c $< -o $@

obj:
	mkdir obj
backup:
	mkdir backup

.PHONY: clean

clean:
	rm -rf obj
	rm -f main.exe