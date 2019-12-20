<p align="center">
  <h1 align="center"> OSX dotfiles </h1>
  <p align="center">
    <img src="https://badgen.net/github/last-commit/smithpeder/dotfiles" />
    <img src="https://pedersmith.visualstudio.com/dotfiles/_apis/build/status/SmithPeder.dotfiles?branchName=azure" />
    <img src="https://badgen.net//badge/license/MIT/blue" />
    <img src="https://img.shields.io/github/repo-size/smithpeder/dotfiles?color=gree&label=size" />
  </p>
    <p align="center">
      <img src="https://i.imgur.com/tWN6X6W.png" width="600px" />
    </p>
</p>

### Homebrew

Install `brew` packages from Brewfile

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
<img src="https://i.imgur.com/5WNzyaX.png" />
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

### Node Version Management (nvm)

> Installed by brew

Lazyloaded by `zsh/nvm.zsh` to limit `SHELL` boot time.

<details><summary><code>Images</code></summary>
<p>
<img src="https://i.imgur.com/eUnXwdM.png" />
</p>
</details>

### Python Version Management (pyenv / pyenv-virtualenv)

> Installed by brew

- `pyenv` lets you easily switch between multiple versions of Python
- `pyenv-virtualenv` provides features to manage virtual environments

<details><summary><code>Images</code></summary>
<p>
<img src="https://i.imgur.com/v6eTrK6.png" />
</p>
</details>
