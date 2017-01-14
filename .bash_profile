alias ll="ls -al"
alias gits="git status"

#Prompt Config
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PROMPT_ROOT="\u@\h"
PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]$PROMPT_ROOT\[\e[0m\]; else echo \[\e[31m\]$PROMPT_ROOT\[\e[0m\]; fi\`:\w\$(parse_git_branch)\n> "

bind "set show-all-if-ambiguous on"
bind "TAB:menu-complete"
