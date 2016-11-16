# Makefile for wl script functionality
# Run as root, needs to install into root-only locations
all:
	@echo "Installing Required Packages..."
	@if [[ -z `whereis vim` ]]; then pkg_add vim; fi
	@if [[ -z `whereis cadaver` ]]; then pkg_add cadaver; fi
	@if [[ -z `whereis expect` ]]; then pkg_add expect; fi
	@echo "Moving wl to /usr/local/bin/ ..."
	@cp src/wl /usr/local/bin/
	@echo "Moving wl man page to /usr/local/man/man1/ ..."
	@cp src/wl.1 /usr/local/man/man1/
	@echo "Done!"
clean:
	@echo "Removing wl Repository..."
	@cd ../; rm -rf wl
	@echo "Done!"
