# Full lineup of the promt
set_prompt() {
    # Path 
    PS1="%{$fg[white]%}%{$reset_color%}% "
    PS1+="%{$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%}"
    # Git
    if git rev-parse --is-inside-work-tree 2> /dev/null | grep -q 'true' ; 
    then
      PS1+='  '
      # Branch 
      PS1+="%{$fg[yellow]%}$(git rev-parse --abbrev-ref HEAD 2> /dev/null)%{$reset_color%}"
      # Status
      if [ $(git status --short | wc -l) -gt 0 ]; 
      then 
        PS1+="%{$fg[green]%}  $(git status --short | wc -l | awk '{$1=$1};1')%{$reset_color%}"
      fi
    fi
    if [[ -z "${VIRTUAL_ENV}" ]]; then
      PS1+=""
    else
      PS1+="%{$fg[white]%} in%{$reset_color%}"
      PS1+="%{$fg[green]%}  %{$reset_color%}% "

    fi 
    # White ] at the end
    PS1+="%{$fg[white]%} %{$reset_color%}% "
}

precmd_functions+=set_prompt
