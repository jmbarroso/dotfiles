# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";
export GRAILS_OPTS="-Xmx4000M -XX:MaxPermSize=2000M -Dfile.encoding=UTF-8";
export JAVA_OPTS="-Duser.timezone=UTC"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
	source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

alias aws-ssh="~/misc-scripts/ssh/bin/aws-ssh"
alias mysql-root='mysql -u root -p'
alias mysql-restart='sudo /usr/local/mysql/support-files/mysql.server stop && sudo /usr/local/mysql/support-files/mysql.server start'
alias run-tests='groovy ~/development/bash-scripts/runtests.groovy'
alias run-test='groovy ~/development/bash-scripts/runtests.groovy'
alias grailsgitup='~/development/bash-scripts/grailsgitup.sh'
alias grails-superclean='~/development/bash-scripts/grails-superclean.sh'

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Api Token for Github enterprise Intuit
export GPP_CI_GITHUB_API_TOKEN="0d62cbd4cb162448bbdd2d7e9fa0fcddb1d0320f"

# Set JAVA as JAVA 7
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_72.jdk/Contents/Home/

export PATH="/usr/local/mysql/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/cfaria/.sdkman"
[[ -s "/Users/cfaria/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/cfaria/.sdkman/bin/sdkman-init.sh"