alias ..='cd ..'
alias ...='cd ../..'

alias gs='git status'
alias git-lazy-commit='git commit -m "$(fortune -s || date "+%Y-%m-%d %H:%M:%S")"'

alias pass-totp='sed -n '2p' | gopher-totp'
alias llpg='gpg --list-key --keyid-format LONG'

alias cl='clear'
alias man='batman'
alias ff='fastfetch'
# alias reload='source $HOME/.bashrc && echo ".bashrc reloaded !"'

alias e='$EDITOR'
alias x='extract'
alias lz='lazygit'

alias ls='ls --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ealias='$EDITOR $HOME/dotfiles/bash/.bash_aliases'
alias eexport='$EDITOR $HOME/dotfiles/bash/.bash_exports'
alias ebashrc='$EDITOR $HOME/dotfiles/bash/.bashrcxt $HOME/.bashrc'
