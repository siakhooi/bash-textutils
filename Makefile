clean:
	rm -rf target *.deb
build:
	./build.sh

test-man:
	pandoc src/md/indent.1.md -s -t man | man -l -

test-install:
	sudo apt install -f ./siakhooi-devutils-indent_1.0.0_amd64.deb 
	sudo apt remove -y siakhooi-devutils-indent

delete-tags:
	git tag --delete 1.0.0
	git push --delete origin 1.0.0
