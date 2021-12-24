# Dotfiles for Ubuntu 21.10

My preferred starting configuration. Currently using [Ubuntu 21.10 Impish Indri](https://ubuntu.com/download/desktop).

The installation script (`scripts/install.sh`) will install a suggested serving of programs and applications using scripts in the `scripts/programs/` directory. Please verify that you want these before running the script.

Add or delete programs in `scripts/install.sh` and `scripts/programs/` to modify your installation.

## Usage

After installing your fresh OS, [create any SSH keys](https://docs.github.com/articles/generating-an-ssh-key/) you need to access GitHub. [Here's a script to help](scripts/keygen.sh) with that.

If not generating new keys, place the ones you need in `.ssh/`. Remember to run `ssh-add` as well as `chmod 600 <key_name>`. Then clone this repository:

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

If you like, set up [powerline-shell](https://github.com/b-ryan/powerline-shell):

```sh
cd powerline-shell/
sudo python3 setup.py install
```

Uncomment the relevant lines in `.bashrc`, then restart your terminal to see changes, or run:

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

Use the `firewood` Bash alias (see `.bashrc`) to collect remote branches.

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

## Your personal CLI tool Makefile

See the Makefile in this repository for some helpful command aliases. Read about [self-documenting Makefiles on my blog](https://victoria.dev/blog/how-to-create-a-self-documenting-makefile/).
