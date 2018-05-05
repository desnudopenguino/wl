# wl
wl - Work Logger, a ksh-based set of functions to help log time based on tmux sessions.

This script is written in POSIX sh and based in OpenBSD (as well as the makefile).

## Installation
1.  `git clone https://github.com/desnudopenguino/wl.git`
2. `cd wl`
3. `make local` - install the script to your local (~/bin/) directory
4. `make init` - initialize your local filesystem (~/work_logs)

## Dependencies
* [tmux](https://github.com/tmux/tmux.git) - this is how the work logs are more or less managed.
* [vim](https://www.vim.org) - for editing files (`wl -e`)
* [texinfo](https://www.gnu.org/software/texinfo/) (texi2pdf) - to compile invoices (`wl -x`)
* tex packages (I found them installing "texlive_texmf-full" on OpenBSD)
    * fp
    * calc
    * longtable
    * graphicx

## Get Started
1. Start up a tmux session
    `tmux new -s example`
2. Create a new wl csv
    `wl -n`
3. Make some entries
    `wl -s` - to start a time block
    `wl -f "<some comment>"` - to finish a time block
    `wl -e` - to edit a time block
4. Export to pdf
    `wl -x`
5. ???
6. Profit!
