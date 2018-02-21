time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

# Run tmux if exists
	if command -v tmux>/dev/null; then
		[ -z $TMUX ] && exec tmux
	else
		echo "tmux not installed on this system"
	fi

# Get zsh config
	source ~/dotfiles/zsh/zshrc.sh
