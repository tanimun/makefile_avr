
CC = g++

CFLAGS = -c -Wall

all: hello

hello: main.o test1.o test2.o
		$(CC) main.o test1.o test2.o -o hello

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

test1.o: test1.cpp
	$(CC) $(CFLAGS) test1.cpp

test2.o: test2.cpp
	$(CC) $(CFLAGS) test2.cpp
	
clean:
	rm -rf *o hello



# all: hello
# hello: main.o test1.o test2.o
#   g++ main.o test1.o test2.o -o hello

# main.o: main.cpp
# 	g++ -c main.cpp

# test1.o: test1.cpp
# 	g++ -c test1.cpp

# test2.o: test2.cpp
# 	g++ -c test2.cpp

# clean:
# 	rm -rf *o hello

