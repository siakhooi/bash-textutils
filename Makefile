clean:
	rm -rf target *.deb run-test.actual.log
build:
	./build.sh

test-man:
#	pandoc src/md/suffix.1.md -s -t man | man -l -
#	pandoc src/md/prefix.1.md -s -t man | man -l -
	pandoc src/md/is-true.1.md -s -t man | man -l -

run-in-container:
#	. in-container-init.sh

test:
	test/run-test.sh > run-test.actual.log
	diff test/run-test.expected.log run-test.actual.log
