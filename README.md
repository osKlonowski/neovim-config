## Credits to Luiz Rocha @lsdr

## Pre-requisites

To use this, you'll need:

* [NeoVim](https://neovim.io/) (obviously) and
* [curl](https://curl.haxx.se/)

The latter is required to fetch and install [vim-plug][plug].

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

### Convention

Digits are used according to the following (very arbitrary) convention:

* `00-29` reserved for significant configuration and custom functions
* `30-59` for programming language setup and tweaking
* `60-89` _unused for now_
* `90-99` plugins, trackers, tools, fun stuff; everything in this range can be
  removed and no one would notice

### Troubleshooting
* Found an existing $(path to nvim) exiting
  > You can clean existing configurations: `make clean`

* Installing hung on snap
 > It happens if you no have python module `neovim`. In this case, 
>You no need clean projects. Open your nvim in a different terminal. 
>Press  `:checkhealth`. See problems in providers. 
>Install module   
>`pip install neovim`.  
>After reinstall plugins   
>open nvim  
:PlugInstall  
:UpdateRemotePlugins  
> You can see plugins where you hang.   
>Disable them by `:PlugClean`
>

[plug]: https://github.com/junegunn/vim-plug
