#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

print-%  : ; @echo $* = $($*)

CXX := g++
AR := ar

INCLUDES := -I./
FLAGS := -std=c++14 -Wno-deprecated-register

OBJ_ROOT := obj

ifeq ($(MAKECMDGOALS),debug)
	OBJ = $(OBJ_ROOT)/debug
	BUILD = ./dist/debug
	CXXFLAGS = $(FLAGS) $(INCLUDES) -g -Wall
else
	OBJ = $(OBJ_ROOT)/release
	BUILD = ./dist/release
	CXXFLAGS = $(FLAGS) $(INCLUDES) -O3 -fstack-protector -Wall
endif

.PHONY: all clean

DESTBIN := $(BUILD)/lib
DESTINCLUDE := $(BUILD)/include/folly

all: distr $(DESTBIN)/libfollyparts.a headers 
debug: all

distr:
	@mkdir -p $(OBJ) $(DESTBIN) $(DESTINCLUDE)

clean:
	@rm -r $(OBJ_ROOT) dist

OBJS := $(OBJ)/ScopeGuard.o

headers:
	@cp -r ./folly/* $(DESTINCLUDE)

$(DESTBIN)/libfollyparts.a: $(OBJS)
	$(AR) rc $@ $^

$(OBJ)/%.o: ./folly/%.cpp
	$(CXX) -c -o $@ $^ $(CXXFLAGS)




