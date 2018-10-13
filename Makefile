help:
	@echo "Peder Smith - Dotfiles"
	@echo "Commands:"
	@echo " - vim"
	@echo " - tmux"
	@echo " - zsh"
	@echo " - fzf"

vim:
	@sudo apt-get install vim
	@if [ ! -d ~/.vim/bundle/Vundle.vim ]; \
	then \
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim; \
	fi
	@stow vim

tmux:
	@sudo apt-get install tmux
	@stow tmux

zsh:
	@sudo apt-get install zsh
	@stow zsh
	@chsh -s $(which zsh)

fzf:
	@stow fzf
