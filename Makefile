clean:
	rm -rf target *.deb *.sha256sum *.sha512sum *.rpm ~/rpmbuild test_helper bats-test-*.log
build-deb: clean
	./scripts/build-deb.sh
build-rpm: clean
	scripts/build-rpms.sh

set-version:
	scripts/set-version.sh
git-commit-and-push:
	scripts/git-commit-and-push.sh
create-release:
	scripts/create-release.sh
check-rpm-package:
	rpm -qf /usr/bin/is-true

prepare-on-codespace:
	sudo apt update -y
	sudo apt install -y shellcheck pandoc fakeroot

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
