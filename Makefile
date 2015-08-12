package=mysql-cli-tools
vers=0.1

install:
	pip install .

uninstall:
	pip uninstall $(package)

clean:
	rm -rf MANIFEST dist/ sdist/
