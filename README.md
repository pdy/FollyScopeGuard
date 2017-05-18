# Why?

I don't always want to link whole folly library, but still use few of
its utilities.

# Build

Linux only. You need: 
* g++ which supports c++14
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


