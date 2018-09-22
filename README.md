# Terminal

> vim

`dotfiles/.vimrc` contains the configurations for Vim

> tmux

`dotfiles/.tmux.conf` contains the configurations for tmux terminal multiplexer

> zsh

`dotfiles/zsh/.zshrc.sh` contains the start point of the zsh shell config

> fzt

`dotfiles/fzf/.fzf.zsh` contains the start configurations for fzf

## Download
Just clone the repo into the home folder. This is the main config folder for all changes.
```zsh
git clone git@github.com:SmithPeder/dotfiles.git ~/
```
## Setup
- Use the `Makefile` in the root directory.
```zsh
make -B vim
make -B tmux
make -B zsh
make -B fzf
```
- Lastly open `vim` and run `:Plugininstall`. 

This will download and add every plugin in `.vimrc`.  
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
Example running three pages with tmux. 
<p align="center"> 
<img src="http://i.imgur.com/vcmqqXg.jpg">
</p>
