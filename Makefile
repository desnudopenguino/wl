# Makefile for wl script functionality
# Run as root, needs to install into root-only locations
all:
	if [[ -z `whereis vim` ]]; then pkg_add vim; fi
	if [[ -z `whereis cadaver` ]]; then pkg_add cadaver; fi
	if [[ -z `whereis expect` ]]; then pkg_add expect; fi
	cp src/wl.1 /usr/local/man/man1/
	cp src/wl /usr/local/bin/
clean:
	cd ../; rm -rf wl
