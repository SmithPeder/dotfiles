# Config for my dotfiles

## Config files

> vim

`dotfiles/vimrc.vim` file contains the configurations for Vim

> tmux

`dotfiles/tmux.conf` file contains the configurations for tmux terminal multiplexer

> zsh

`dotfiles/zsh/zsh_manager.sh` file contains the start point of the zsh shell config

## Download

> Clone the repository

First clone the repo into home folder. This is the main config folder for all changes.
```bash
git clone git@github.com:SmithPeder/dotfiles.git ~/
```
## Setup

> Set sources

In your `~/.vimrc` file create a source to `dotfiles/vimrc` 
```vim
so /home/USER/dotfiles/vimrc.vim
```

In your `~/.tmux.conf` create a source to `dotfiles/tmux.conf`
```vim
source-file /home/USER/dotfiles/tmux.conf
```

In your `~/.zshrc` create a source to `dotfiles/zsh/zshrc_manager.sh`
```vim
source '/home/USER/dotfiles/zsh/zshrc_manager.sh'
```

<br/>

> Vundle plugin manager 

[https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim)

**Setting up Vundle**  
This vim config uses Vundle to handle plugins. Therefore `vundle.vim` needs to be placed in your `~/.vim/bundle` folder.
This could be done manually or with `git`.
```bach
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

<br/>

**Run the installer command**  
Open vim and run `:Plugininstall`. This will download and add every plugin in `vimrc.vim`  
  
All new plugins needs to be added between `call vundle#begin()` and `call vundle#end()`
<p align="center"> 
<img src="https://i.imgur.com/jAYskkL.png">
</p>

## Current style
<p align="center"> 
<img src="https://i.imgur.com/xLVMBxh.png">
</p>
