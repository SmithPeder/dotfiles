# Config for my dotfiles

## Config files

> vim

`dotfiles/vimrc.vim` file contains the configurations for Vim

> tmux

`dotfiles/tmux.conf` file contains the configurations for tmux terminal multiplexer

> zsh

`dotfiles/zsh/zsh_manager.sh` file contains the start point of the zsh shell config

## Setup
> Clone the repo

First clone the repo into home folder
```bash
git clone git@github.com:SmithPeder/dotfiles.git ~/
```

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

## Current style
![terminal](https://i.imgur.com/xLVMBxh.png)
