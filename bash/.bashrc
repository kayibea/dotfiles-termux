shopt -s nullglob

[ -f ~/.bash_exports ] && . ~/.bash_exports
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

for file in "$HOME"/.functions/*; do
  [ -f "$file" ] && . "$file"
done

for bcfile in "$HOME"/.completions/*; do
  [ -f "$bcfile" ] && . "$bcfile"
done

# PS1="→ "

prompt_color='\[\033[;32m\]'
info_color='\[\033[1;34m\]'
prompt_symbol="@"
PS1=$prompt_color'┌──${debian_chroot:+($debian_chroot)──}${VIRTUAL_ENV:+(\[\033[0;1m\]$(basename $VIRTUAL_ENV)'$prompt_color')}('$info_color'\u'$prompt_symbol'\h'$prompt_color')-[\[\033[0;1m\]\w'$prompt_color']\n'$prompt_color'└─'$info_color'\$\[\033[0m\] '
unset prompt_color
unset info_color
unset prompt_symbol

VIRTUAL_ENV_DISABLE_PROMPT=1
