# Makefile for wl script functionality
# Run as root, needs to install into root-only locations
all:
	@echo "Run make rootinstall to install to /usr/local/bin\n or run make localinstall to install to your home directory"

install-global:
	@echo "Installing Required Packages..."
	@if [[ -z `whereis vim` ]]; then pkg_add vim; fi
	@if [[ -z `whereis cadaver` ]]; then pkg_add cadaver; fi
	@if [[ -z `whereis expect` ]]; then pkg_add expect; fi
	@echo "Moving wl and helper scripts to /usr/local/bin/ ..."
	@cp src/wl /usr/local/bin/
	@cp src/wl_box* /usr/local/bin/
	@echo "Moving wl man page to /usr/local/man/man1/ ..."
	@cp src/wl.1 /usr/local/man/man1/
	@echo "Done!"

install-user:
	@echo "Installing Required Packages..."
	@if [[ -z `whereis vim` ]]; then doas pkg_add vim; fi
	@if [[ -z `whereis cadaver` ]]; then doas pkg_add cadaver; fi
	@if [[ -z `whereis expect` ]]; then doas pkg_add expect; fi
	@echo "Moving wl and helper scripts to ~/bin/ ..."
	@if [[ ! -d /home/`whoami`/bin ]]; then mkdir /home/`whoami`/bin; fi
	@cp src/wl /home/`whoami`/bin/
	@cp src/wl_box* /home/`whoami`/bin/
	@echo "Skip moving wl man page to /usr/local/man/man1/"
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
