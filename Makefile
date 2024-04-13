info:

prepare-on-codespace:
	sudo apt update -y
	sudo apt install -y shellcheck pandoc fakeroot

clean:
	rm -rf target *.deb *.deb.sha*sum test_helper bats-test-*.log

build:
	./build.sh

run-in-container:
	. in-container-init.sh

generate-test-outputs-in-docker:
	test/generate-test-outputs.sh test/expected
	sudo chown siakhooi:siakhooi test/expected/*
run-tests:
	test/run-tests.sh

test-man:
	pandoc src/md/is-true.1.md -s -t man | man -l -

prepare-bats-test:
	scripts/bats-test-setup.sh
bats-run:
	scripts/bats-test-run.sh
