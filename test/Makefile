CXX := g++

.PHONY: all clean

all: comp strip run clean

comp:
	@$(CXX) -std=c++14 -o a.out TestMain.cpp ScopeGuardTest.cpp \
		-I../dist/release/include \
		-L../dist/release/lib \
		-I./3rd/gtest/include \
		-L./3rd/gtest/lib \
		-I./3rd/gmock/include \
		-L./3rd/gmock/lib \
		-I./3rd/glog/include \
		-L./3rd/glog/lib \
		-lpthread -lfollyscopeguard -lgtest -lgtest_main -lglog
		
strip:
	@strip a.out

run:
	@LD_LIBRARY_PATH=./3rd/glog/lib ./a.out
	 
clean:
	@rm a.out
