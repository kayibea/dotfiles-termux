shopt -s nullglob

[ -f ~/.bash_exports ] && . ~/.bash_exports
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

for file in "$HOME"/.{functions,completions}/*; do
  [ -f "$file" ] && source "$file"
done

gpg-connect-agent "keyinfo --ssh-list" /bye >/dev/null

prompt_color='\[\033[;32m\]'
export PS1=$prompt_color'\[\033[0;1m\]─'$prompt_color'\[\033[0m\] '
