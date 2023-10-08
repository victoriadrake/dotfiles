# Dotfiles for Ubuntu 22.04

My preferred starting configuration. Currently using [Ubuntu 22.04](https://ubuntu.com/download/desktop) + [Pop_OS! Shell](https://github.com/pop-os/shell) for tiling.

The installation script (`scripts/install.sh`) will install a suggested serving of programs and applications using scripts in the `scripts/programs/` directory. Please verify that you want these before running the script.

Add or delete programs in `scripts/install.sh` and `scripts/programs/` to modify your installation.

## Usage

After installing your fresh OS:

1. [Create any SSH keys](https://docs.github.com/articles/generating-an-ssh-key/) you need to access GitHub. See [copy-able commands](#set-up-ssh-keys) for doing this below. If not generating new keys, place the ones you need in `.ssh/`. Remember to run `ssh-add` as well as `chmod 600 <key_name>`.
2. Then clone this repository:

    ```sh
    git clone git@github.com:victoriadrake/dotfiles.git

    # Or use HTTPS
    git clone https://github.com/victoriadrake/dotfiles.git
    ```

    You may optionally like to pass the `--depth` argument to clone only a few of the [most recent commits](https://github.com/victoriadrake/dotfiles/commits/master).

3. Close Firefox if it's open, then run the installation script. ([Read it first](scripts/install.sh) so you know what it does!)

    ```sh
    cd dotfiles/scripts/
    ./install.sh
    ```

To install the Pop_OS! Shell for window tiling, see [Installation in their repo.](https://github.com/pop-os/shell#installation)

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

For the Gogh script to work, you may need to have an existing terminal profile named `Default`. This will get overwritten.

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

Where `SETTINGS_BACKUP` is wherever you backed up/want to back up your settings (aptly named, isn't it?), load `settings.dconf` with:

```sh
dconf load /org/gnome/ < $(SETTINGS_BACKUP)/.config/dconf/settings.dconf
```

Back up new settings with:

```sh
dconf dump /org/gnome/ > $(SETTINGS_BACKUP)/.config/dconf/settings.dconf
```

Run `man dconf` on your machine for more.

### Set up SSH Keys

Commands for setting up a new SSH key.

1. Generate the key:

    ```sh
    ssh-keygen -t ed25519
    ```

2. Add it to the ssh-agent:

    ```sh
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519
    ```

3. Set appropriate permissions:

    ```sh
    chmod 600 ~/.ssh/id_ed25519
    ```

4. Show the public key so you can copy it to the service, e.g. GitHub:

    ```sh
    cat ~/.ssh/id_ed25519.pub
    ```

## Your personal CLI tool Makefile

See the Makefile in this repository for some helpful command aliases. Read about [self-documenting Makefiles on my blog](https://victoria.dev/blog/how-to-create-a-self-documenting-makefile/).
