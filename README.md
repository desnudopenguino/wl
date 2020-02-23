# wl
wl - Work Logger, a ksh-based set of functions to help log time based on tmux sessions.

This script is written in POSIX sh and based in OpenBSD (as well as the makefile).

## Installation
1. `git clone https://github.com/desnudopenguino/wl.git`
2. `cd wl`
3. `make local` - install the script to your local (~/bin/) directory
4. `make init` - initialize your local filesystem (~/work_logs)

## Files of interest
* '~/work_logs/.tex/example.conf' - an example client's config contains their name, rate, type of service, and email for sending invoices
* '~/work_logs/.tex/.conf' - the base config for your settings including mailgun API key and template name, send email, and bcc email for sending invoices

## Dependencies
* [tmux](https://github.com/tmux/tmux.git) - this is how the work logs are more or less managed.
* [vim](https://www.vim.org) - for editing files (`wl -e`)
* [texinfo](https://www.gnu.org/software/texinfo/) (texi2pdf) - to compile invoices (`wl -x`)
* a [MailGun](https://www.mailgun.com/) subscription - to send invoices via email
* [curl](https://curl.haxx.se/) - to send API call to send email through MailGun
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
5. Send the pdf
    `wl -p'`
5. ???
6. Profit!

## Notes
The invoice tex and cls files were found at [LaTeX Templates](https://www.latextemplates.com/template/invoice).
