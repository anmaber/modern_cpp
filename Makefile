CXX=g++
STD= -std=c++14
CXXFLAGS=-Wall -Wextra -Wpedantic 
SRC=$(wildcard *.cpp)
OBJ=$(SRC:.cpp=.o)

%.o: %.cpp %.hpp
	$(CXX) $(STD) $(CXXFLAGS) -c -o $@ $<

modern:$(OBJ)
	$(CXX) $(STD) $(CXXFLAGS) -o $@ $^

clean:
	rm modern $(OBJ)
