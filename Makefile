clean:
	rm -rf target *.deb
build:
	./build.sh

test-man:
	pandoc src/md/suffix.1.md -s -t man | man -l -
	pandoc src/md/prefix.1.md -s -t man | man -l -

test-install:
	sudo apt install -f ./siakhooi-textutils_1.2.0_amd64.deb
	sudo apt remove -y indent

delete-tags:
	git tag --delete 1.0.0
	git push --delete origin 1.0.0

terminalizer:
	terminalizer render docs/terminalizer-textutils

docker-ubuntu-bash:
	docker run --rm -it -w /working -v $$(pwd):/working ubuntu bash
#	. in-container-init.sh

docker-debian-bash:
	docker run --rm -it -w /working -v $$(pwd):/working debian bash
#	. in-container-init.sh
