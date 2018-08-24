export MANPATH=/opt/local/share/man:$MANPATH
export CDPATH=~/projects:~/
export RUBYOPT='rubygems'
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'
export EDITOR='atom --wait'
export TERM=xterm-color
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLICOLOR=1
export PROJECTS=$HOME/projects
export NODE_PATH=/usr/local/lib/node
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_67.jdk/Contents/Home

# Turns on colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export TERM=xterm-color

export GREP_COLOR='3;33'
export GREP_OPTIONS='--color=auto'

# Ruby always requires rubygems
export RUBYOPT='rubygems'

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# rbenv Installation - if we have rbenv installed.
if (( $+commands[rbenv] )) ; then
	eval "$(rbenv init -)"
fi

# Use nvm ZSH plugin if it exists.
if [ -e "/Users/alex/Code/zsh-nvm/zsh-nvm.plugin.zsh" ]; then
	source /Users/alex/Code/zsh-nvm/zsh-nvm.plugin.zsh
fi