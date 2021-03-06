# Comment

function battery() {
    if plugged_in; then
    else
        if [ $(battery_pct) -gt 20 ]; then
            echo "%{\e[0m%}%b%B[%b%{$fg[blue]%}$(battery_pct)%%%{\e[0m%}%B]%b"
        else
            echo "%{\e[0m%}%b%B[%b%{$fg[red]%}$(battery_pct)%% : $(battery_time_remaining)%{\e[0m%}%B]%b"
        fi
    fi
}

PROMPT='%{$fg[magenta]%}[%2~] %{$reset_color%}'

RPROMPT='%{$fg[magenta]%}$(git_prompt_status)%{$reset_color%} $(git_prompt_info)%{$reset_color%} %{$fg[green]%}$(git_prompt_short_sha)%{$reset_color%} $(battery)'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} +"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} !"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} x"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ᛅ"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%} ?"
