BINARIES := mv-mysql ls-mysql

local_dir=bin/
install_dir=/usr/local/bin/

LOCALBINARIES = $(addprefix bin/,$(BINARIES))
INSTALLEDBINARIES = $(addprefix $(install_dir),$(BINARIES))

install:
	mkdir -p $(install_dir)
	cp -v $(LOCALBINARIES) $(install_dir)

uninstall:
	rm -v $(INSTALLEDBINARIES)
