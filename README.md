#  Current OSX dotfiles 

| Program           | Name         | Version |
| ----------------- | ------------ | ------: |
| Operating System  | OSX Catalina | 10.15.2 |
| Terminal Emulator | iTerm2       |   3.3.7 |
| Shell             | Zsh          |   5.7.1 |
| Package Manager   | Homebrew     |   2.2.1 |
| Terminal Editor   | NeoVim       |   0.4.3 |
| GUI Editor        | VsCode       |  1.40.2 |

Catalina **10.15.2**

### Homebrew

Install all preset `brew` packages

```sh
$ brew bundle
```

### iTerm2

Enable settings: `Preferences -> General`, load settings found in the `iterm2` folder.

Enable profile: `Preferences -> Profiles`, load profile found in the `iterm2` folder.

### NeoVim

Get Plug For NeoVim

```zsh
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

SymLink `HOME` config to `dotfiles` config

```zsh
$ ln -s ~/dotfiles/neovim ~/.config/nvim
```

### ZSH Shell

> Installed by brew

Symlink the main path of configuration

```zsh
$ mv $HOME.zshrc $HOME.zshrc.backup && rm $HOME.zshrc && ln -s $HOME/dotfiles/zsh/.zshrc $HOME.zshrc
```

### Hack patched Font

> Installed by brew

Enable font: `Preferences -> Profiles -> Text` select `Hack Regular Nerd Font Complete`

### Fuzzyfinder (fzf)

> Installed by brew

`fzf` for searching in `CTRL-R` search. Comes with brew and vim install.

### RipGrep (rg)

> Installed by brew

`ripgrep` for a multiple of fuzzysearch options, used by a multitude of the neovim plugins.
