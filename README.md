# Table of Contents
This repository contains a backup of all terminal-specific config files currently in use on my Linux system. This `README` is to work as a guide to setting up the dotfiles. The repository also contains some instructions for things like writing `Markdown` and `LaTeX` with this `vim` config.
1. [Terminal](#Terminal)
2. [LaTeX](#Latex)
3. [Markdown](#Markdown)

# Terminal

*zsh settings inspired by [@Parth](https://github.com/Parth/dotfiles)*

> vim

`dotfiles/vimrc.vim` file contains the configurations for Vim

> tmux

`dotfiles/tmux.conf` file contains the configurations for tmux terminal multiplexer

> zsh

`dotfiles/zsh/zshrc_init.sh` file contains the start point of the zsh shell config

## Download
Just clone the repo into home folder. This is the main config folder for all changes.
```zsh
git clone git@github.com:SmithPeder/dotfiles.git ~/
```
## Setup

- <b>1)</b> First set the sources. `vim`, `tmux` and `zsh` must be installed before these config files will be present. All tree files should be in the home directory by default. <i>Note that `USER` must be changed to your username</i>

In `~/.vimrc` file create a source to `dotfiles/vimrc` 
```vim
so /home/USER/dotfiles/vimrc.vim
```

In `~/.tmux.conf` create a source to `dotfiles/tmux.conf`
```vim
source-file /home/USER/dotfiles/tmux.conf
```

In `~/.zshrc` create a source to `dotfiles/zsh/zshrc_init.sh`
```vim
source '/home/USER/dotfiles/zsh/zshrc_init.sh'
```
> NOTE: There is a file `zsh/bind_local.sh` that is listed in the `.gitignore`. This file is used for keybindings that contain things like API keys, SSH addresses and so forth. If you remove the file remember to remove the source to the file, located in `zsh/bind.sh`
- <b>2)</b> Then setup the [Vundle](https://github.com/VundleVim/Vundle.vim) plugin manager

This `vim` config uses Vundle to handle plugins. Therefore `vundle.vim` needs to be placed in your `~/.vim/bundle` folder.
This could be done manually or with `git`.
```zsh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
- <b>3)</b> Lastly open `vim` and run `:Plugininstall`. 

This will download and add every plugin in `vimrc.vim`.  
To add new plugins add them between the two `call vundle#` tags. 
Check the [Vundle](https://github.com/VundleVim/Vundle.vim) github page for more info.
```vim
call vundle#begin('~/.vim/bundle')
  Plugin 'VundleVim/Vundle.vim'
  Plugin '----------'
  Plugin '----------'
call vundle#end()
```

## Current style
Example running two pages with tmux, left one has `NERDTree` active, right one has `UNDOTree` active
<p align="center"> 
<img src="https://i.imgur.com/dWGdoQj.png">
</p>


# LaTeX
> This is a work in progress LaTeX setup guide

It build on [Vimtex](https://github.com/lervag/vimtex)
```vim
Plugin 'lervag/vimtex'
```

# Markdown
Markdown setup to edit markdown files using `vim`. This will let you edit a markdown file in vim, and with `:w` the
markdown file will be auto compiled by `grip` into `HTML`. Running `~/dotfiles: $ grip` will start the server, and a preview of the 
`HTML` page will be available at `localhost:PORT` for the page. 

- <b>1)</b> First install `grip`
```bash
sudo apt-get install grip
```

> Step 2 and 3 are completed if this repo is cloned

- <b>2)</b> Then add the `vim-markdown-preview` plugin
```vim
Plugin 'https://github.com/JamshedVesuna/vim-markdown-preview'
```
- <b>3)</b> Lastly enable preview
```vim
let vim_markdown_preview_github=1
```
> As stated in the README of `vimtex` reading the documentation using `:h vimtex` i necessary
