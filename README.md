#  Current OSX dotfiles 

> Disclaimer: My current OSX dotfiles are not tuned to work on a Linux system. If you cant see the two Apple icons above, then you should not try this configuration!!

### Homebrew

Homebrew install script is located in the `homebrew` folder.
This will install `homebrew` and some other common dependencies
like `grc`, `coreutils`, `htop`, `unrar`, `hub`, `node`, `python`, `python3`, `vim`,
`postgresql`, `redis`, `yarn`, `go`, `cmake`, `elasticsearch`, `telnet`, `tmux`.

```sh
$ ~/dotfiles/homebrew/install.sh
```

### iTerm2

Currently using the iTerm2 terminal

```sh
$ brew install iTerm2
```

Current settings can be found in the `iterm2` folder. This file should be put in the
iTerm2 setting location. This can be done with the following command

```sh
$ cp ~/dotfiles/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences
```

Current profile can also be found in the `iterm2` folder. This can be imported via the
profile menu of iTerm2.

### Shell (zsh)

Currently using the `zsh` shell with a selection of plugins.

- [History completions](https://github.com/zsh-users/zsh-autosuggestions)
- [Syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

1. Install the following plugins

```zsh
$ brew install zsh
$ brew install zsh-autosuggestions
$ brew install zsh-syntax-highlighting
```

2. Source the main path of configuration
```zsh
$ echo "source ~/dotfiles/zsh/.zshrc.sh" > ~/.zshrc
```

### Colorls

Additionally for i make us of the `colorls` gem

1. Link to the `colorls` gem [Colorls](https://github.com/athityakumar/colorls). Navigate to the installation
   section and install the gem with `gem`

```zsh
$ gem install colorls
```

2. One must then create a symlink from the folder `~/dotfiles/colorls`, to `~/.config/colorls`

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

> Note: Look at the [cheetsheet](http://nerdfonts.com/?set=nf-dev-#cheat-sheet]) for icons.

### VIM
The `vim` configuration is a simple `.vimrc` file with all the configurations. The setup here is very simple
and only requires three steps.
1. Create a source from the `~/.vimrc` file in your home directory to the configuration.
```zsh
$ echo "source ~/dotfiles/vim/.vimrc" > ~/.vimrc
```
2. Run the `install.sh` script. This will add the `Vundle` package manager to your `~/.vim` folder.
3. Open vim and run `:PluginInstall`

> Note: There will be a lot of errors when opening `vim` before the plugins are installed

### Fuzzyfinder (fzf)
Currently using the `fzf` for searching in files, command history, etc.
1. Install `fzf` with brew
```zsh
$ brew install fzf
$ (brew --prefix)/opt/fzf/install
```

2. Source the main part of the configuration
```zsh
$ echo "source ~/dotfiles/zsh/.zshrc.sh" > ~/.zshrc
```

### Images

> Custom promt with patched font

<p align="center"> 
<img src="https://i.imgur.com/0RlJygX.png">
</p>

> Fuzzy finding old commands

<p align="center"> 
<img src="https://i.imgur.com/PUdvtTQ.png">
</p>

> Colorls and NERDTREE with patched font

<p align="center"> 
<img src="https://i.imgur.com/OjHlPlF.png">
</p>

> VIM config with NERDTREE open

<p align="center"> 
<img src="https://i.imgur.com/vhtlTno.jpg">
</p>

### List of cool tools
1. [Markdown folder structure generator](https://www.npmjs.com/package/mddir)
