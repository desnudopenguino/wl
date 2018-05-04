# Makefile for wl script functionality
# Run as root, needs to install into root-only locations
all:
	@echo "Run make install-global to install to /usr/local/bin\n or run make install-user to install to your home directory"

install-global:
	@echo "Moving wl and helper scripts to /usr/local/bin/ ..."
	@cp src/wl /usr/local/bin/
	@cp src/wl_box* /usr/local/bin/
	@echo "Setting up WL file structure (~/work_logs)"
	@mkdir /home/`whoami`/work_logs
	@cp -R tex /home/`whoami`/work_logs/.tex
	@echo "Moving wl man page to /usr/local/man/man1/ ..."
	@cp src/wl.1 /usr/local/man/man1/
	@echo "Done!"

install-user:
	@echo "Moving wl and helper scripts to ~/bin/ ..."
	@if [[ ! -d /home/`whoami`/bin ]]; then mkdir /home/`whoami`/bin; fi
	@cp src/wl /home/`whoami`/bin/
	@cp src/wl_box* /home/`whoami`/bin/
	@echo "Setting up WL file structure (~/work_logs)"
	@mkdir /home/`whoami`/work_logs
	@cp -R tex /home/`whoami`/work_logs/.tex
	@echo "Done!"

update:
	@echo getting repo
	@git pull origin master
	@doas make

deinstall:
	@echo "Removing Script"
	@rm /usr/local/bin/wl*
	@echo "Removing man page"
	@rm /usr/local/man/man1/wl.1
	@echo "Removing wl Repository..."
	@cd ../; rm -rf wl
	@echo "Done!"
