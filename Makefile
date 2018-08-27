help:
	@echo "Peder Smith - Dotfiles"
	@echo "Commands:"
	@echo " - vim"
	@echo " - tmux"
	@echo " - zsh"

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

dev:
	@sudo apt-get install nodejs
	@sudo apt-get install python3.6
	@sudo apt install python-pip
	@sudo apt install python3-pip
	@sudo apt-get install git
	@sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
	@sudo chmod +x /usr/local/bin/docker-compose
	@sudo apt install docker.io
