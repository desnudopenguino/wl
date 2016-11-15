# Makefile for wl.ksh script functionality
all:
	#cp src/wl.1 /usr/local/man/man1/
	if [[ -z `whereis vim` ]]; then su root -c 'pkg_add vim'; fi
	if [[ -z `whereis cadaver` ]]; then su root -c 'pkg_add cadaver'; fi
	if [[ -z `whereis expect` ]]; then su root -c 'pkg_add expect'; fi

	if [[ ! -e "/usr/local/man/man1/wl.1" ]]; then if [[ `groups` = *wheel* ]]; then su root -c 'cp src/wl.1 /usr/local/man/man1/'; echo "\nMan Page Added.\n"; else echo "\nTo add the man page please copy src/wl.1 to /usr/local/man/man1/ \n"; fi else echo "Man page installed"; fi

clean: 
	rm src/wl.1

