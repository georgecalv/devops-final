test:
	pytest ./src/usr/local/bin/mypl_tests.py
build:
	./build.sh
clean:
	./clean.sh
build-deb: build
	./debBuild.sh
lint-deb: build-deb
	lintian mypl.deb