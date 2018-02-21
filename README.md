# Config for my dotfiles

## Config files

> Vim

`dotconf/vimrc.vim` file contains the configurations for Vim

> tmux

`dotconf/tmux.conf` file contains the configurations for tmux terminal multiplexer

> zsh

`dotconf/zsh/zsh_manager.sh` file contains the start point of the zsh shell confing

## Setup
> Clone the repo

First clone the repo into home folder
```bash
git clone git@github.com:SmithPeder/dotconf.git ~/
```

> Set sources

In your `~/.vimrc` file create a source to `dotconf/vimrc` file 
```vim
so /home/USER/dotconf/vimrc.vim
```

In your `~/.tmux.conf` create a source to `dotconf/tmux.conf`
```vim
source-file /home/USER/dotconf//tmux.conf
```

In your `~/.zshrc` create a source to `dotconf/zsh/zshrc_manager.sh`
```vim
source '/home/smith/dotfiles/zsh/zshrc_manager.sh'
```
