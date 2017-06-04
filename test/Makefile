CXX := g++

.PHONY: all clean

all: comp strip run clean

comp:
	@$(CXX) -std=c++14 -o a.out TestMain.cpp ScopeGuardTest.cpp \
		-I../dist/release/include \
		-I./3rd/googletest-1.8.0/googletest/include \
		-I./3rd/googletest-1.8.0/googlemock/include \
		-I./3rd/glog/include \
		-L./3rd/glog/lib \
		-L../dist/release/lib \
		-L./3rd/googletest-1.8.0/googlemock/gtest \
		-lpthread -lfollyparts -lgtest -lgtest_main -lglog
		
strip:
	@strip a.out

run:
	@LD_LIBRARY_PATH=./3rd/glog/lib ./a.out
	 
clean:
	@rm a.out
