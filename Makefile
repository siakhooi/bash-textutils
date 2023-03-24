clean:
	rm -rf target *.deb
build:
	./build.sh

test-man:
#	pandoc src/md/suffix.1.md -s -t man | man -l -
#	pandoc src/md/prefix.1.md -s -t man | man -l -
	pandoc src/md/is-true.1.md -s -t man | man -l -

test-install:
	sudo apt install -f ./siakhooi-textutils_1.2.0_amd64.deb
	sudo apt remove -y indent

delete-tags:
	git tag --delete 1.0.0
	git push --delete origin 1.0.0

terminalizer:
	terminalizer render docs/terminalizer-textutils

run-in-container:
#	. in-container-init.sh

test-in-container:
	cat /etc/lsb-release | prefix ' >>>>> '
	cat /etc/lsb-release | suffix ' >>>>> '
	cat /etc/lsb-release | indent ' >>>>> '
	is-true yes
	is-true Y
	is-true on
	is-true no
	is-true no1
	is-false no
	is-false N
	is-false off
	is-false yes
	is-false yes1

