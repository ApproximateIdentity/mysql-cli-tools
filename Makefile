package=mysql-cli-tools
vers=0.1

install:
	pip install .

uninstall:
	pip uninstall $(package)

clean:
	rm -rf MANIFEST dist/ sdist/ deb_dist/

package:
	python setup.py sdist
	py2dsc -m 'Thomas Nyberg <tomnyberg@gmail.com>' dist/$(package)-$(vers).tar.gz 
	cp -v debian/* deb_dist/$(package)-$(vers)/debian
	cd deb_dist/$(package)-$(vers); debuild -uc -us
