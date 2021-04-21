# neovim-config

This repo contains the full Neovim config that I use on a daily basis for
college and personal projects. This file explains the basic structure of my
config, while setting-specific information can be found inside the config files
themselves.

## Config structure
The config exists of a few key components:

* `coc-settings.json`: config for the
  [CoC](https://github.com/neoclide/coc.nvim) plugin.
* `init.vim`: this is the actual config file that gets loaded. It sources
  everything else.
* `autoload/`: a special directory allowing the files inside to be used in the
  `:call` command. Its only use is allowing usage of
  [vim-plug](https://github.com/junegunn/vim-plug), my plugin manager.
* `colors/`: contains my themes.
* `ftplugin/`: this is where you can put filetype plugins. These are vim
  scripts that are sourced whenever you open a buffer with the given filetype,
  e.g. if you open a file with filetype `markdown`, it will source the file
  `ftplugin/markdown.vim`, if it exists. This allows for custom configs for
  certain filetypes.
* `init/`: contains the various config files sourced by `init.vim`. I could
  just cram it all into a single file, but I find this difficult to maintain.

## Choice of leader
In my opinion, an important part of any (Neo)vim config is choosing which
leader key to use. The default `\` leader wasn't going to cut it for me for
three main reasons:

* Backslash required me to stretch my hand every time
* In Belgium (where I live), we use AZERTY instead of QWERTY, and the backslash
  key is often not present on those keyboards or requires a key combination to
  type
* I use both AZERTY and QWERTY and wanted a key that was the same on both

Therefore, I chose Space as my main leader key and Tab as my local leader (even
though I've never actually used it). This allows me to use the same muscle
memory on my refurbished MacBook (AZERTY) and my Ducky (QWERTY).
