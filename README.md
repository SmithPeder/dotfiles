<div align="center">
  <h1>
    <code>.dtfiles</code>
  </h1>

  <h4>
    Configuration for neovim, zsh, fzf, rg, brew, kitty, and more.</h4>
  <h5>
    <i>
      <b>Disclaimer:</b> If you can't see the Apple icons you probably want to stay away!
    </i>
  </h5>

  <h2> ━━━━━━    ━━━━━━ </h2>


  <a href="https://github.com/neovim/neovim"> <img src="https://img.shields.io/badge/requires-neovim%200.8%2B-green?color=76946A&labelColor=16161D&style=for-the-badge&logo=neovim"> </a>
  <img src="https://img.shields.io/github/repo-size/smithpeder/dotfiles?color=C34043&labelColor=16161D&style=for-the-badge">
  </a>
</div>

<!-- <details><summary><code>Images</code></summary> -->
<!-- <p> -->
<!-- <img src="https://github.com/SmithPeder/dotfiles/blob/master/.github/nvim.png?raw=true" /> -->
<!-- <img src="https://github.com/SmithPeder/dotfiles/blob/master/.github/telescope.png?raw=true" /> -->
<!-- </p> -->
<!-- </details> -->

### Quickstart!

> **There is no __automatic__ backup of your all configuration here!**

```sh
# Install all required software using brew
$ make install

# Setup all required symlinks
$ make install
```

## Editor - NeoVim

Fully migrated `lua` based config. All config located in [nvim](https://github.com/smithpeder/dotfiles/nvim) with the whole nvim folder being a symlink from `~/.config/nvim/` making [nvim/init](https://github.com/smithpeder/dotfiles/nvim/init.lua) the config entrypoint. Default _(core)_ settings are located in [nvim/settings](https://github.com/smithpeder/dotfiles/nvim/settings,lua). 

```sh
$ make neovim
```

### NeoVim Plugins

The configuration uses a lot of custom nvim plugins `(lua)`. The full list can be found at [nvim/lua/plugins](https://github.com/smithpeder/dotfiles/nvim/lua/plugins.lua) and uses [packer](https://github.com/wbthomason/packer.nvim) as the default package manager. Many plugins have additional configuration found within the [nvim/lua/config/](https://github.com/smithpeder/dotfiles/nvim/lua/config/) folder.

### Search - Fuzzyfinder (fzf) and RipGrep (rg)

`fzf` is used for searching in `CTRL-R` search and is used by a multitude of the neovim plugins. `ripgrep` is used for a multiple of fuzzysearch options, used by a multitude of the neovim plugins.



## Homebrew

This configuration uses the `brew` package manager. The ``Brewfile`` contains a lot of core packages, as well as a lot of the GUI based programs I use on a day-to-day basis.

```sh
$ make brew
```

## Terminal

### Warp terminal config

My main terminal atm is Warp. I am still in a trail phase here and will decide later if will stay. At this time there is no exportable configuration.


### kitty terminal config

I use kitty as my secondary terminal. It is specifically configured to have neovim open at all times. All config located in `kitty.conf` with symlink from `~/.config/kitty/kitty.conf`.

```sh
$ make kitty
```

### ZSH Shell

Config root located in `zsh/zshrc` with symlink from `~/.zshrc`


### Hasklig-nerd-font

This font is enabled by default in the `kitty.conf` and is installed via Brew.

