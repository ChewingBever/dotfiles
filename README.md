# dotfiles

This repo contains the various dotfiles I use on my machines.

# List of contents

* [`Gitignore`](.config/git/ignore): global gitignore file
* [`Htop`](.config/htop/htoprc): Config for Htop
* [`Ion`](.config/ion/initrc): init file for the [Ion shell](https://github.com/redox-os/ion)
* [`Picom`](.config/picom.conf): used for the Picom compositor
* [`dunst`](.config/dust/dunstrc): config for the Dunst notification server
* [`i3`](.config/i3): config files for the i3 window manager, based off the
  original EndeavourOS config
* [`nvim`](.config/nvim): the crown jewel: my Neovim configs
* [`qutebrowser`](.config/qutebrowser): Qutebrowser configs
* [`yay`](.config/yay): The yay package manager for Arch

# How to

I'm able to manage my dotfiles using Git thanks to a thing called a bare git
repo. It basically means that you can place the Git directory anywhere,
allowing you to specify the work tree using a command line parameter. It's
pretty easy to set up:

```bash
# This initializes the repo
# I personally use ~/.cfg as the .git folder, but you can change this to
whatever you want
git init --bare "$HOME/.cfg"

# For convenience, it's best to define an alias
# Don't forget to replace the '$HOME/.cfg' if you're using another directory.
alias dots="git --git-dir='$HOME/.cfg' --work-tree='$HOME'"

# Then, when you wish to add a dotfile, you just use the alias
# This works from anywhere in the file system
dots add yourdotfile

# You can check the status just like any other repo
dots status

# Don't forget to add your remote
dots remote add origin yourremote

# And then, you can commit and push!
dots commit -m "Bare repos are cool"
dots push

# It's a git repo, that's all it is
```
