autoload -U colors && colors
setopt PROMPT_SUBST

# Full lineup of the promt
set_prompt() {
	# White [ at the start
	PS1="%{$fg[white]%}[%{$reset_color%}"
	# Path: http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
	PS1+="%{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%}"
	# Status Code
	PS1+='%(?.., %{$fg[red]%}%?%{$reset_color%})'
	# Git
	if git rev-parse --is-inside-work-tree 2> /dev/null | grep -q 'true' ; then
		PS1+=', '
		# Branch 
		PS1+="%{$fg[blue]%}$(git rev-parse --abbrev-ref HEAD 2> /dev/null)%{$reset_color%}"
		# Status
		if [ $(git status --short | wc -l) -gt 0 ]; then 
			PS1+="%{$fg[red]%}+$(git status --short | wc -l | awk '{$1=$1};1')%{$reset_color%}"
		fi
	fi
	# White ] at the end pluss :
	PS1+="%{$fg[white]%}]: %{$reset_color%}% "
}

precmd_functions+=set_prompt
