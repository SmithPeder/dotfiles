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

fzf:
	@stow fzf

sourcefont:
	@wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
	@unzip 1.050R-it.zip
	@mkdir -p ~/.fonts
	@cp source-code-pro-*-it/OTF/*.otf ~/.fonts/
	@fc-cache -f -v
	@rm -rf 1.05R-it.zip
	@rm -rf source-code-pro-2.030R-ro-105R-it



dev:
	@sudo apt-get install nodejs
	@sudo apt-get install python3.6
	@sudo apt install python-pip
	@sudo apt install python3-pip
	@sudo apt-get install git
	@sudo apt install docker.io
