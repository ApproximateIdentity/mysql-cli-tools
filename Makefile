package=mysql-cli-tools

install:
	pip install .

uninstall:
	pip uninstall $(package)

clean:
	rm -rf MANIFEST dist/ sdist/
