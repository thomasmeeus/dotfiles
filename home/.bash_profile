# Correct path for homebrew
export PATH="$PATH:/usr/local/bin/"

# Correct path for ruby
export PATH=$(brew --prefix ruby)/bin:$PATH

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases, and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{aliases,extra,bash_prompt,exports,functions}; do
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

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on /etc/ssh_config, ignoring wildcards
[ -e "/etc/ssh_config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" /etc/ssh_config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults
if [ -f /usr/local/bin/brew ]; then
	source "`brew --prefix grc`/etc/grc.bashrc"
fi

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

