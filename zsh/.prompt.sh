# ====PROMPT-CONFIGURATION====

# Prompt:
# %F => Color codes
# %f => Reset color
# %~ => Current path
# %(x.true.false) => Specifies a ternary expression
#   ! => True if the shell is running with root privileges
#   ? => True if the exit status of the last command was success
#
# Git:
# %a => Current action (rebase/merge)
# %b => Current branch
# %c => Staged changes
# %u => Unstaged changes
#

setopt PROMPT_SUBST

autoload -U add-zsh-hook
autoload -Uz vcs_info

# Colors from profile
black="%F{black}"
red="%F{red}"
green="%F{green}"
yellow="%F{yellow}"
blue="%F{blue}"
magenta="%F{magenta}"
cyan="%F{cyan}"
white="%F{white}"

# Reset color.
R="%f"

# VCS style formats.
FMT_VCS_STATUS="on %{$yellow%} %b%u%c%{$R%}"
FMT_STAGED="%{$R%} %{$green%}S"
FMT_UNSTAGED="%{$R%} %{$blue%}M"
FMT_ACTION="(%{$magenta%}%a%{$R%})"

zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr      "${FMT_STAGED}"
zstyle ':vcs_info:*' unstagedstr    "${FMT_UNSTAGED}"
zstyle ':vcs_info:*' actionformats  "${FMT_VCS_STATUS} ${FMT_ACTION}"
zstyle ':vcs_info:*' formats        "${FMT_VCS_STATUS}"
zstyle ':vcs_info:*' nvcsformats    ""
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

# Check for untracked files.
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
    git status --porcelain | grep --max-count=1 '^??' &> /dev/null; then
    hook_com[staged]+="%{$R%} %{$red%}N"
  fi
}

# Executed before each prompt.
add-zsh-hook precmd vcs_info

# Left Prompt
PROMPT='%{$green%}%c%{$R%} ${vcs_info_msg_0_}'
PROMPT+='%(?.%{$blue%}.%{$red%})%(!.#. ❯)'
PROMPT+='%{$R%} '

# Right prompt
RPROMPT='%{$red%} %L%{$R%}'
