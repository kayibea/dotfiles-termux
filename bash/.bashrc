shopt -s nullglob

[ -f ~/.bash_exports ]  && . ~/.bash_exports
[ -f ~/.bash_aliases ]  && . ~/.bash_aliases

for file in "$HOME"/.functions/*; do
  [ -f "$file" ] && . "$file"
done

# for bcfile in "$HOME"/.bash_completion.d/*; do
	# [ -f "$bcfile" ] && . "$bcfile"
# done

PS1="→ "
