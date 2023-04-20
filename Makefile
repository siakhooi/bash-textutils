info:

clean:
	rm -rf target *.deb *.deb.sha*sum

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
