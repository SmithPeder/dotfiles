#  Current OSX dotfiles 

| Program           | Name         | Version |
| ----------------- | ------------ | ------: |
| Operating System  | OSX Catalina | 10.15.2 |
| Terminal Emulator | iTerm2       |   3.3.7 |
| Shell             | Zsh          |   5.7.1 |
| Package Manager   | Homebrew     |   2.2.1 |
| Terminal Editor   | NeoVim       |   0.4.3 |
| GUI Editor        | VsCode       |  1.40.2 |

### Homebrew

Install all preset `brew` packages

```sh
$ brew bundle
```

### iTerm2

Enable settings: `Preferences -> General`, load settings found in the `iterm2` folder.

Enable profile: `Preferences -> Profiles`, load profile found in the `iterm2` folder.

### NeoVim

> Installed by brew

Plugin manager `Plug` and all listed plugins are installed on launch

<details><summary><code>Vim Plugins</code></summary>
<p>
<ul>
<li>['Colorizer'].commit = '5fbdf24'</li>
<li>['ale'].commit = '5f84325'</li>
<li>['coc.nvim'].commit = 'd005447'</li>
<li>['delimitMate'].commit = '728b57a'</li>
<li>['fzf'].commit = '9fefe08'</li>
<li>['fzf.vim'].commit = '65edb6a'</li>
<li>['incsearch.vim'].commit = '25e2547'</li>
<li>['lightline-bufferline'].commit = '8743156'</li>
<li>['lightline.vim'].commit = 'ef6df46'</li>
<li>['vim-clap'].commit = '9c12bf2'</li>
<li>['vim-devicons'].commit = 'e3e6aa1'</li>
<li>['vim-gitgutter'].commit = '1c53af9'</li>
<li>['vim-hybrid'].commit = '13c04af'</li>
<li>['vim-hybrid-material'].commit = 'f2e92ac'</li>
<li>['vim-illuminate'].commit = '4929d19'</li>
<li>['vim-polyglot'].commit = 'cea0d08'</li>
<li>['vim-rooter'].commit = 'eef9813'</li>
<li>['vim-searchindex'].commit = 'b0788c8'</li>
</ul>

</p>
</details>

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
