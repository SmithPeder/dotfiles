# Setup fzf
# ---------
if [[ ! "$PATH" == */home/smith/.fzf/bin* ]]; then
  export PATH="$PATH:/home/smith/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/smith/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/smith/.fzf/shell/key-bindings.zsh"

