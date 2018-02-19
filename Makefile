.SUFFIXES: .c .o

CXX = g++

CFLAGS = -O3 -g

INC = 
LIBS = 
OBJS = hello.o
SRCS = hello.cpp

TARGET = hello.out

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LIBS)

dep:
	gccmakedep $(INC) $(SRCS)

clean:
	rm -rf $(OBJS) $(TARGET)

new:
	$(MAKE) clean
	$(MAKE)
