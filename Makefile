all: sum_test

sum_test: main.o sum.o
	g++ -o sum_test main.o sum.o

main.o: main.cpp sum.h
	g++ -c -o main.o main.cpp

sum.o: sum.cpp sum.h
	g++ -c -o sum.o sum.cpp

clean:
	rm -f *.o
	rm sum_test


