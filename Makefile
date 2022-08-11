BREW := /usr/local/bin/brew

# Install a Homebrew package only when it is not already installed
PACKAGE = brew list --versions $(1) > /dev/null || brew install $(1)$(2)

# Install a Homebrew Cask application only when it is not already installed
CASK = brew list --cask $(1) > /dev/null 2>&1 || brew install --cask $(1)

.PHONEY: links install brew taps packages casks lists clean

links: | neovim zsh kitty

install: | taps packages casks link clean

brew: | $(BREW)
	brew update

$(BREW):
	@/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Ensure all brew taps are ... tapped??
taps: | brew
				brew tap homebrew/cask
				brew tap homebrew/bundle
				brew tap homebrew/cask
				brew tap homebrew/core
				brew tap homebrew/services
				brew tap homebrew/cask-fonts
				brew tap amar1729/formulae

# Ensure all brew packages are installed
packages: | brew
				$(call PACKAGE, coreutils) # Those that come with macOS are outdated
				$(call PACKAGE, gnu-sed)
				$(call PACKAGE, htop)
				$(call PACKAGE, cmake)
				$(call PACKAGE, telnet)
				$(call PACKAGE, git)
				$(call PACKAGE, pass)
				$(call PACKAGE, wget)
				$(call PACKAGE, openssl)
				$(call PACKAGE, tree)
				$(call PACKAGE, jq)
				$(call PACKAGE, gnupg)
				$(call PACKAGE, grep)
				$(call PACKAGE, python@3.8)
				$(call PACKAGE, python@3.9)
				$(call PACKAGE, python@3.10)
				$(call PACKAGE, fnm)
				$(call PACKAGE, pinentry-mac)
				$(call PACKAGE, neovim)
				$(call PACKAGE, vim)
				$(call PACKAGE, fzf)
				$(call PACKAGE, ripgrep)
				$(call PACKAGE, zsh)
				$(call PACKAGE, exa)
				$(call PACKAGE, ccat)
				$(call PACKAGE, direnv)
				$(call PACKAGE, kubectx)
				$(call PACKAGE, postgresql@11)
				$(call PACKAGE, gh)
				$(call PACKAGE, amar1729/formulae/browserpass) # https://github.com/browserpass/browserpass-native
				$(call PACKAGE, ccat)

casks: | brew
				$(call CASK, alfred)
				$(call CASK, kitty)
				$(call CASK, font-hack-nerd-font)
				$(call CASK, google-cloud-sdk)
				$(call CASK, github)
				$(call CASK, postman)
				$(call CASK, visual-studio-talk)
				$(call CASK, spotify)
				$(call CASK, mimestream)
				$(call CASK, google-chrome)
				$(call CASK, slack)

# Use to update install lists.
lists:
	brew tap
	@echo "\n"
	brew leaves
	@echo "\n"
	brew list --cask

clean:
	brew cleanup formulae
	brew cleanup cask

# Ensure vim has the correct path config
neovim:
	ln -v -F -s ~/dotfiles/neovim/ ~/nvim
	ln -v -F -s ~/dotfiles/neovim/ ~/.config/nvim

# Ensure zsh has the correct path config
zsh:
	ln -v -F -s ~/dotfiles/zsh/zshrc ~/.zshrc

# Ensure kitty has the correct path config
kitty:
	ln -F -s ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf
