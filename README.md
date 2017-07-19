# FollyScopeGuard

Extracted scope guard from facebook's folly's repository with minimazed depndencies and simplified building.
 
# What is diffrent

Building is simplified to just 'make'. 
Some headers are merged or removed in order to reduce files dependencies.

# What stayed the same

Unit tests. Module keeps exact same mechanics as in folly library.

# Build

Linux only. You need: 
* g++ with c++14 support
* ar to pack library.

````
$ git clone https://github.com/severalgh/FollyScopeGuard.git
$ cd FollyScopeGuard
$ make
````

Build result under dist/release.

For debug:

````
$ git clone https://github.com/severalgh/FollyScopeGuard.git
$ cd FollyScopeGuard
$ make debug
````

Build result under dist/debug.

Run unit tests:

````
$ cd FollyScopeGuard
$ make && make test
````


