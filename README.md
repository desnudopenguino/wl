# wl
wl - Work Logger, a ksh-based set of functions to help log time based on tmux sessions.

This script is written in KSH and based in OpenBSD (as well as the makefile).

To install:
clone the repo
cd into wl
su/doas/sudo and run make

make will put the manual file in the correct location, and put the script into /usr/local/bin to be run by all users (no sourcing or running the script from it's current directory)

make clean will remove the repo files (the whole wl directory), do it after you install the files, and you won't have to deal with extra files all over the place.

TODO
I have to sanitize the box expect scripts and add them to the repository so they can be used with anyone. 
Add a config file (and logic to use it)
