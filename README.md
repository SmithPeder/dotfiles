<p align="center">
  <h1 align="center"> Current OSX dotfiles </h1>
    <p align="center">
      <img src="http://simpleicon.com/wp-content/uploads/apple.png" width="50px" />
      <img src="https://i.imgur.com/G7VqzcM.png" width="55px" />
      <img src="https://i.imgur.com/dEqXUCc.png" width="50px" />
      <img src="https://brew.sh/assets/img/homebrew-256x256.png" width="50px" />
      <img src="https://symbols.getvecta.com/stencil_89/30_neovim-icon.ed94bd2e58.svg" width="40px" />
      <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Visual_Studio_Code_1.35_icon.svg/1024px-Visual_Studio_Code_1.35_icon.svg.png" width="50px" />
    </p>
</p>

### Homebrew

Install all preset `brew` packages

```sh
$ make brew
```

### iTerm2

> Installed by brew

Enable settings: `Preferences -> General`, load settings found in the `iterm2` folder.

Enable profile: `Preferences -> Profiles`, load profile found in the `iterm2` folder.

<img src="https://i.imgur.com/GzJp8GW.png" />

### NeoVim

> Installed by brew

```sh
$ make neovim -B
```

<details><summary><code>Images</code></summary>
<p>
<img src="https://i.imgur.com/vtXiHQ0.png" />
</p>
</details>

### ZSH Shell

> Installed by brew

```sh
$ make zsh -B
```

<details><summary><code>Images</code></summary>
<p>
<img src="https://i.imgur.com/Qnz3IZG.png" />
</p>
</details>

### Hack patched Font

> Installed by brew

Enable font: `Preferences -> Profiles -> Text` select `Hack Regular Nerd Font Complete`

<details><summary><code>Images</code></summary>
<p>
<img src="https://www.nerdfonts.com/assets/img/sankey-glyphs-combined-diagram.png" />
</p>
</details>

### Fuzzyfinder (fzf)

> Installed by brew

`fzf` for searching in `CTRL-R` search. Comes with brew and vim install.

<details><summary><code>Images</code></summary>
<p>
<img src="https://i.imgur.com/L35rILr.png" />
</p>
</details>

### RipGrep (rg)

> Installed by brew

`ripgrep` for a multiple of fuzzysearch options, used by a multitude of the neovim plugins.

<details><summary><code>Images</code></summary>
<p>
Search for files
<img src="https://i.imgur.com/tK6x229.png" />
Regex search for text inside files
<img src="https://i.imgur.com/u9TME6X.png" />
Search after buffers
<img src="https://i.imgur.com/kHaAbi1.png" />
Search for yanks
<img src="https://i.imgur.com/m9KFtzA.png" />
Search for commands
<img src="https://i.imgur.com/05I8ER3.png" />
</p>
</details>
