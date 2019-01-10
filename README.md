#  Current OSX dotfiles 

> These dotfiles are under development and are not stable

### Homebrew
Homebrew install script is located in the `homebrew` folder. This will install `homebrew` and some other common dependencies like `grc`, `coreutils`, `htop`, `unrar`, `hub`, `node`, `python`, `python3`, `vim`, `postgresql`, `redis`, `yarn`, `go`, `cmake`, `elasticsearch`, `telnet`, `tmux`.

```sh
$ ~/dotfiles/homebrew/install.sh
```

### iTerm2
Currently using the iTerm2 terminal
```sh
$ brew install iTerm2
```
Current settings can be found in the `iterm2` folder. This file should be put in the iterm2 setting location. This can be done with the following command
```sh
$ cp com.googlecode.iterm2.plist ~/Library/Preferences
```

### Shell (ZSH)
Currently using the `zsh` shell with a selection of plugins.
- [History completions](https://github.com/zsh-users/zsh-autosuggestions)
- [Syntax hightlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
```zsh
# Get zsh
$ brew install zsh

# Get plugins
$ brew install zsh-autosuggestions
$ brew install zsh-syntax-highlighting
```

## Notes
Get the `Hack` patched font [https://github.com/ryanoasis/nerd-fonts]. Look at the cheetsheet [http://nerdfonts.com/?set=nf-dev-#cheat-sheet].

Get the `colorls` gem at [https://github.com/athityakumar/colorls]. One must create a symlink from folder `colorls` to `~/.config/colorls`


### Images

> Prompt

<p align="center"> 
<img src="https://i.imgur.com/0RlJygX.png">
</p>

> VIM

<p align="center"> 
<img src="https://i.imgur.com/vhtlTno.jpg">
</p>
