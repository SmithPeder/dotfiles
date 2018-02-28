# Table of Contents

1. [Terminal](#Terminal)
2. [LaTeX](#Latex)
3. [Markdown](#Markdown)

# Terminal

*System inspired by [@Parth](https://github.com/Parth/dotfiles)*

> vim

`dotfiles/vimrc.vim` file contains the configurations for Vim

> tmux

`dotfiles/tmux.conf` file contains the configurations for tmux terminal multiplexer

> zsh

`dotfiles/zsh/zsh_manager.sh` file contains the start point of the zsh shell config

## Download
- Just clone the repo into home folder. This is the main config folder for all changes.
```bash
git clone git@github.com:SmithPeder/dotfiles.git ~/
```
## Setup

- First set the sources

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


- Then setup the [Vundle](https://github.com/VundleVim/Vundle.vim) plugin manager

This vim config uses Vundle to handle plugins. Therefore `vundle.vim` needs to be placed in your `~/.vim/bundle` folder.
This could be done manually or with `git`.
```bach
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
- Lastly open vim and run `:Plugininstall`. 

This will download and add every plugin in `vimrc.vim`.  
All new plugins needs to be added between the two `call` tags. 
Check the [Vundle](https://github.com/VundleVim/Vundle.vim) github page for more info.
```vim
call vundle#begin('~/.vim/bundle')
  Plugin 'VundleVim/Vundle.vim'
  Plugin '----------'
  Plugin '----------'
call vundle#end()
```

## Current style
<p align="center"> 
<img src="https://i.imgur.com/xLVMBxh.png">
</p>


# LaTeX
> This is a WIP LaTeX setup guid.e

Before doing anything I would recommend installing all TeX packages
```bash
sudo apt-get install texlive-full
```

# Markdown
Markdown setup to edit markdown files using `vim`. This will let you edit a markdown file in vim, and with `:w` the
markdown file will be autocompied by `grip` into HTML. Then `grip` will then render the HTML file to `localhost`. Running
`$ grip` will start the localhost server, and display a preview `PORT` for the page. 
- First install `grip`
```bash
sudo apt-get install grip
```
- Second add the `vim-markdown-preview` plugin
```vim
Plugin 'https://github.com/JamshedVesuna/vim-markdown-preview'
```
- Third enable preview
```vim
let vim_markdown_preview_github=1
```

