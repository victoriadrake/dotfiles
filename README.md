# Dotfiles and scripts that behave in much the same way that manual configurations don't

My personal set-up scripts. I wrote about these in this [accompanying article](https://victoria.dev/verbose/how-to-set-up-a-fresh-ubuntu-desktop-using-only-dotfiles-and-bash-scripts/).

## `scripts/`

* `symlink.sh` sets up symlinks in `$HOME`
* `aptinstall.sh` is for Ubuntu repository installs
* `programs.sh` is for other software
* `desktop.sh` is for GNOME desktop settings
* `setup.sh` runs all the scripts and an `apt upgrade` 
