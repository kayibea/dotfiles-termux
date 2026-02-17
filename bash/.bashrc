shopt -s nullglob

[ -f ~/.bash_exports ] && . ~/.bash_exports
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

source_dirs=("$XDG_DATA_HOME/bash-completions" "$XDG_DATA_HOME/bash-helpers")
for dir in "${source_dirs[@]}"; do
  [[ -d "$dir" ]] || continue
  for f in "$dir"/*; do
    [ -f "$f" ] && . "$f"
  done
done
unset source_dirs

gpg-connect-agent "keyinfo --ssh-list" /bye >/dev/null

prompt_color='\[\033[;32m\]'
export PS1=$prompt_color'\[\033[0;1m\]─'$prompt_color'\[\033[0m\] '
