#  Current OSX dotfiles 

| Program           | Name         | Version |
| ----------------- | ------------ | ------: |
| Operating System  | OSX Catalina | 10.15.2 |
| Terminal Emulator | iTerm2       |   3.3.7 |
| Shell             | Zsh          |   5.7.1 |
| Package Manager   | Homebrew     |   2.2.1 |
| Terminal Editor   | NeoVim       |   0.4.3 |
| GUI Editor        | VsCode       |  1.40.2 |

### Full Install

The `Makefile` will do all the following steps
```sh
$ make
```

### Homebrew

Install all preset `brew` packages

```sh
$ make brew
```

### iTerm2

Enable settings: `Preferences -> General`, load settings found in the `iterm2` folder.

Enable profile: `Preferences -> Profiles`, load profile found in the `iterm2` folder.

### NeoVim

> Installed by brew

```sh
$ make neovim -B
```

Plugin manager `Plug` and all listed plugins are installed on launch

<details><summary><code>Vim Plugins</code></summary>
<p>
'airblade/vim-rooter'
'airblade/vim-gitgutter'
'haya14busa/incsearch.vim'
'google/vim-searchindex'
'liuchengxu/vim-clap'
'junegunn/fzf',
'junegunn/fzf.vim'
'neoclide/coc.nvim',
'smithpeder/vim-hybrid'
'kristijanhusak/vim-hybrid-material'
'itchyny/lightline.vim'
'mengelbrecht/lightline-bufferline'
'sheerun/vim-polyglot'
'RRethy/vim-illuminate'
'chrisbra/Colorizer'
'ryanoasis/vim-devicons'
'Raimondi/delimitMate'
'w0rp/ale'
</p>
</details>

### ZSH Shell

> Installed by brew

```sh
$ make zsh -B
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
