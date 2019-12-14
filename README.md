#  Current OSX dotfiles 

### Homebrew

```sh
$ brew bundle
```

### iTerm2

`Preferences -> General`, load settings found in the `iterm2` folder.

`Preferences -> Profiles`, load profile found in the `iterm2` folder.

### ZSH

Symlink the main path of configuration

```zsh
$ mv $HOME.zshrc $HOME.zshrc.backup && rm $HOME.zshrc && ln -s $HOME/dotfiles/zsh/.zshrc $HOME.zshrc
```

### Font (Hack)

Some parts of this configuration requires the patched font `Hack`.
The font supplies custom icons that can be used in the terminal.

1. Link to the `Hack` font [HackFont](https://github.com/ryanoasis/nerd-fonts). Navigate to Option 4
   and install the font with `brew`

```zsh
$ brew tap caskroom/fonts
$ brew cask install font-hack-nerd-font
```

2. Navigate to the iTerm2 settings, _Preferences_ -> _Profiles_ -> _Text_, then select
   the `Hack Regular Nerd Font Complete`

### NeoVim

Get Plug For NeoVim
```zsh
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```zsh
$ ln -s ~/dotfiles/neovim ~/.config/nvim
```

2. Open vim and run `:PlugInstall`

### Fuzzyfinder (fzf)

Currently using the `fzf` for searching in files, command history, etc.

1. Install `fzf` with brew

```zsh
$ brew install fzf
$ (brew --prefix)/opt/fzf/install
```

2. Remove the content of `.fzf.zsh` in root, and source this repo config.

```zsh
$ echo "source ~/dotfiles/fzf/.fzf.zsh" > ~/.fzf.zsh
```
