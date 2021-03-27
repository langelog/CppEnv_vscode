build:
	mkdir -p ./build && cd build && cmake .. && make 

delete:
	rm -rf ./build

run:
	./build/src/HelloWorld

test:
	./build/tests/HelloWorld_test

# make migrate-ssh key=$HOME/.ssh/id_ed25519 docker=great_swartz
migrate-ssh:
	docker cp $(key) $(docker):/home/vscode/.ssh/`basename $(key)`
	docker exec -it $(docker) sudo chown vscode:vscode /home/vscode/.ssh/`basename $(key)`
