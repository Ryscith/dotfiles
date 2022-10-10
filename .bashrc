#
# ~/.bashrc
#

export CDPATH=":$HOME:$HOME/College/CollegeClasses/Year4Senior:$HOME/College:/run/media/ryscith"

export PATH="/home/ryscith/.local/bin:/home/ryscith/.emacs.d/bin:$PATH"

### Apply pywal theme to new instances
(cat ~/.cache/wal/sequences &)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.welcome_screen ]] && . ~/.welcome_screen

### Colorful prompt

# This one is a bit too noisy, maybe come back to it later
#PS1="\[$(tput setaf 202)\][\[$(tput setaf 134)\]\u\[$(tput setaf 202)\]@\[$(tput setaf 134)\]\h \[$(tput setaf 123)\]\W \[$(tput setaf 202)\]]\$\[$(tput sgr0)\] "

# This prompt ends up being: [user@computer directory ]$
PS1="\[$(tput setaf 134)\][ \[$(tput setaf 202)\]\W\[$(tput setaf 134)\] ]\$\[$(tput sgr0)\] "

### Alternate utils

alias ls='exa --icons'

### Always-wanted options

alias free='free -m'                # Display memory in megabytes
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

### Navigation aliases

alias la='ls -al'

# Automatically ls after any cd
chdir () 
{
	cd "$@"
	ls
}
alias cd=chdir

alias dotfiles='/usr/bin/git --git-dir=$HOME/Repos/dotfiles/ --work-tree=$HOME'

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

