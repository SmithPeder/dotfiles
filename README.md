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
`Vim:` Always display `NERDTree`, and depend on multiple tabs. Using `CTRL+(H/J)` to jump 
between makes it a very natural movement. Using `ctrlP` with OpenNewTab as default also
makes working with tabs and files more enjoyable.

`tmux:` Prefer to split the terminal over splitting vim. Using `<leader>` and `h,j,k,l` 
again makes it very natural to move between multiplexes.

<p align="center"> 
<img src="http://i.imgur.com/sxTN5hF.jpg">
</p>
