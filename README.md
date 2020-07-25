# Dotfiles for Ubuntu 💜

My preferred starting configuration for Ubuntu Desktop. Current version 20.04 Focal Fossa.

The [installation script included](https://github.com/victoriadrake/dotfiles/blob/ubuntu-20.04/scripts/install.sh) will install a suggested serving of programs and applications, found within the `scripts/` directory. Please verify that you want these before running the script.

Add or delete files in `scripts/install.sh` and `scripts/programs/` to modify your installation.

## Usage

After installing your fresh OS, do:

```sh
sudo apt install git vim -y
```

Use Vim to create any SSH keys you need to access GitHub, and remember to run `ssh-add` as well as `chmod 600 <key_name>`. Then clone this repository:

```sh
git clone git@github.com:victoriadrake/dotfiles.git

# Or use HTTPS
git clone https://github.com/victoriadrake/dotfiles.git
```

You may optionally like to pass the `--depth` argument to clone only a few of the [most recent commits](https://github.com/victoriadrake/dotfiles/commits/master).

Close Firefox if it's open, then run the installation script.

```sh
cd dotfiles/scripts/
./install.sh
```

Set up [powerline-shell](https://github.com/b-ryan/powerline-shell):

```sh
cd powerline-shell/
sudo python3 setup.py install
```

Then restart your terminal to see changes, or run:

```sh
cd ~
source .bashrc
```

## Random Helpful Stuff (TM)

### Clone all your remote repositories

Given a list of repository URLs, `gh-repos.txt`, run:

```sh
xargs -n1 git clone < gh-repos.txt
```

Use the [`firewood` Bash alias](https://github.com/victoriadrake/dotfiles/blob/ubuntu-20.04/.bashrc#L27) to collect remote branches.

See [How to write Bash one-liners for cloning and managing GitHub and GitLab repositories](https://victoria.dev/blog/how-to-write-bash-one-liners-for-cloning-and-managing-github-and-gitlab-repositories/) for more.

### Terminal theme

There are plenty of themes for Gnome terminal at [Mayccoll/Gogh](https://github.com/Mayccoll/Gogh).

Print a 256-color test pattern in your terminal:

```sh
for i in {0..255} ; do
    printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
    if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
        printf "\n";
    fi
done
```

### Saving and loading configuration settings

Optionally, load `settings.dconf` with:

```sh
dconf load /org/gnome/ < .config/dconf/settings.dconf
```

Back up new settings with:

```sh
dconf dump /org/gnome/ > .config/dconf/settings.dconf
```

Run `man dconf` on your machine for more.

## Recommended additions

- GNOME Tweaks
- [Emoji Selector](https://extensions.gnome.org/extension/1162/emoji-selector/) ❤️✨🦄
- [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/)
