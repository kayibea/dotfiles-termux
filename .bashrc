shopt -s nullglob

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_exports ]; then
    . ~/.bash_exports
fi

# Load custom functions from the .bash_functions directory
for file in "$HOME/.bash_functions"/*; do
  [[ -f "$file" ]] && source "$file"
done

export PS1='$(set_prompt_emoji) \[\e[0;33m\]➤ \[\e[0m\]'
