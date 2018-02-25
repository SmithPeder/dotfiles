# Config for my dotfiles

## Config files

> vim

`dotfiles/vimrc.vim` file contains the configurations for Vim

> tmux

`dotfiles/tmux.conf` file contains the configurations for tmux terminal multiplexer

> zsh

`dotfiles/zsh/zsh_manager.sh` file contains the start point of the zsh shell config

## Setup
> 1. Clone the repo

First clone the repo into home folder
```bash
git clone git@github.com:SmithPeder/dotfiles.git ~/
```

> 2. Set sources

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

> 3. Vundle plugin manager 

**Add Vundle**
[link-style](https://github.com/VundleVim/Vundle.vim)
This vim config uses Vundle to handle plugins. Therefore `vundle.vim` needs to be placed in your `~/.vim/bundle` folder.
.This could be done manually or with `git`.
```bach
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

**:PluginInstall**
Open vim and run `:Plugininstall`



## Current style
![terminal](https://i.imgur.com/xLVMBxh.png)
