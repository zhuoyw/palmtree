CFLAGS=-Werror -Wall -std=c++11 -g
LDFLAGS=-lboost_atomic-mt -lboost_system-mt -lboost_thread-mt -lglog
CC=g++

all: palmtree_test

palmtree_test: main.cpp palmtree.h
	$(CC) $(CFLAGS) -o palmtree_test main.cpp $(LDFLAGS)

clean:
	rm -rf palmtree_test *.o
