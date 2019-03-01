autoload -U colors
colors

# Full lineup of the promt
set_prompt() {
    # Path
    PS1="%{$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%}"
    
    # Git
    if git rev-parse --is-inside-work-tree 2> /dev/null | grep -q 'true' ; 
    then
      PS1+="%{$fg[white]%} on %{$reset_color%}% "
      PS1+="%{$fg[magenta]%} %{$reset_color%}% "
      # Branch 
      PS1+="%{$fg[magenta]%}$(git rev-parse --abbrev-ref HEAD 2> /dev/null)%{$reset_color%}"
      # Status
      if [ $(git status --short | wc -l) -gt 0 ]; 
      then 
        PS1+="%{$fg[green]%} [ $(git status --short | wc -l | awk '{$1=$1};1')]%{$reset_color%}"
      fi
    fi
    if [[ -z "${VIRTUAL_ENV}" ]]; then
      PS1+=""
    else
      PS1+="%{$fg[white]%} in%{$reset_color%}"
        PS1+="%{$fg[green]%}  %{$reset_color%}% "

    fi
    PS1+=" "
    RPROMPT="%{$fg[yellow]%}%D{%L:%M:%S} %{$reset_color%}% "
}

precmd_functions+=set_prompt
