# anal.zsh-theme

MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"
local icon="󰯬"

# Git status indicators (robbyrussel style)
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}(%{$FG[196]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}) %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[magenta]%}) %{$fg[green]%}✓"

# Main prompt: magenta sign + path + space + git info + system time
PROMPT='%{$fg[magenta]%}%{$icon%}%{$reset_color%} %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)$(current_time)
%{$fg[green]%}➜%{$reset_color%} '

RPROMPT=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

function prompt_char() {
  git branch >/dev/null 2>/dev/null && echo "%{$fg[green]%}±%{$reset_color%}" && return
  hg root >/dev/null 2>/dev/null && echo "%{$fg_bold[red]%}☿%{$reset_color%}" && return
  echo "%{$fg[cyan]%}◯%{$reset_color%}"
}

# Current time function using system clock
function current_time() {
    # Get current time in HH:MM format
    local current_time=$(date +%H:%M)
    
    # Use gray colors for time display
    echo "%{$fg[white]%}[%{$fg[white]%}${current_time}%{$fg[white]%}]%{$reset_color%}"
}
