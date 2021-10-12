
## Neovim Configuration

This is my personal Neovim -nightly configuration. It began from the base config inspired by Luiz
Rocha and has since grown with the addition of multiple plugins, lua files, mappings, and more. Feel
free to fork this repo or use it for your own config.

## Installing files

To setup the files for [NeoVim](https://neovim.io/):
```sh
    $ git clone git@github.com:lsdr/nvim.git nvim
    $ make install
```

This will do the following:

1. Check for existing configuration files and immediately exit if it finds one
1. Put in place a `$HOME/.config` dir if it doesn't exist already
1. _Symlink_ this repos to `~/.config/nvim`
1. Create needed dirs (plugins, tmp)
1. Install [vim-plug][plug]
1. Fire `nvim` to install plugins declared in the configuration files

NeoVim is ready to roll just after the `make` is done.

## Configuration Files

Configuration files live in the `conf.d` dir and have a two-digit trailing
number to serve as both a visual cue when I'm in a terminal working on them and
to make sure files are loaded following a logical order.

# Credits to Luiz Rocha @lsdr
