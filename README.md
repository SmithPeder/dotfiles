#  Current OSX dotfiles 

> Disclaimer: My current OSX dotfiles are not tuned to work on a Linux system. If you cant see the two Apple icons above, then you should not try this configuration!!

### Homebrew

```sh
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Homebrew install script is located in the `homebrew` folder, and will install common dependencies.

```sh
$ ~/dotfiles/homebrew/install.sh
```

### iTerm2

Currently using the iTerm2 terminal

```sh
$ brew install iTerm2
```

Current settings can be found in the `iterm2` folder.


### Shell (zsh)

Currently using the `zsh` shell with a selection of plugins. All plugins are listed in the `.zshrc` file, and loaded using `oh-my-zsh`.

```zsh
$ brew install zsh
```

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

### Vim

The `vim` configuration is a simple `.vimrc` file with all the configurations. The setup here is very simple
and only requires three steps.

1. Create a source from the `~/.vimrc` file in your home directory to the configuration.

```zsh
$ ln -s $HOME/dotfiles/vim/.vimrc $HOME.vimrc
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
