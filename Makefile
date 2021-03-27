build:
	mkdir -p ./build && cd build && cmake .. && make 

delete:
	rm -rf ./build

run:
	./build/src/HelloWorld

test:
	./build/tests/HelloWorld_test
