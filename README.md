# Why?

I don't always want to link whole folly library, but still use few of
its utilities.

# What is diffrent

I want simple 'make' utilities so I added Makefiles for library and UTs.
Some headers are merged or removed in order to minimaze files number.

# What I didn't change

Unit tests. Modules needs to retain exact same mechanics as in folly library, 
so I make sure, that unit tests in unchanged form passes.

# Build

Linux only. You need: 
* g++ with c++14 support
* ar to pack library.

````
$ git clone https://github.com/severalgh/FollyParts.git
$ cd FollyParts
$ make
````

Build result under dist/release.

For debug:

````
$ git clone https://github.com/severalgh/FollyParts.git
$ cd FollyParts
$ make debug
````

Build result under dist/debug.

Run unit tests:

````
$ cd FollyParts
$ make && make test
````


