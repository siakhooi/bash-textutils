clean:
	rm -rf target *.deb *.deb.sha*sum

build:
	./build.sh

test-man:
#	pandoc src/md/suffix.1.md -s -t man | man -l -
#	pandoc src/md/prefix.1.md -s -t man | man -l -
	pandoc src/md/is-true.1.md -s -t man | man -l -

run-in-container:
#	. in-container-init.sh

generate-test-output:
	test/generate-test-output.sh test/expected
test:
	test/run-test.sh

