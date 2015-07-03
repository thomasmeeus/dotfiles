# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases, and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{aliases,extra,bash_prompt,exports,functions,profile}; do
    [ -r "$file" ] && source "$file"
done
unset file

# disable "new mail"-warnings
unset MAILCHECK

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Autocorrect window size after every command
shopt -s checkwinsize

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults
if [ -f /usr/local/bin/brew ]; then
	source "`brew --prefix grc`/etc/grc.bashrc"
fi

if [ -e /usr/local/Cellar/bash-completion/ ]; then
  . /usr/local/Cellar/bash-completion/1.3/etc/profile.d/bash_completion.sh
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
