package=mysql-cli-tools

install:
	pip install .

uninstall:
	pip uninstall $(package)
