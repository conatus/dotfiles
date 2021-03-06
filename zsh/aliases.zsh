# Open Dotfiles
alias z="$EDITOR ~/Code/dotfiles"

# Run git status
alias s='git status'

# Run git log
alias l='git log'

# Edit the current directory in Sublime Edit
alias e='atom .'

# Run npm test
alias t='npm test'

# Clear screen
alias c='clear'

# Locate IP
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 |
   cut -d\   -f2"

alias e="$EDITOR ."

alias today="todo -a -d today"

# Reload .zshrc
function zr () {
  source $HOME/.zshrc
}

# cd to the default working directory set by current_working_project
function cwp {
  export wdir=`cat $HOME/bin/config/current_project_path`
  cd $wdir
}

# Better than rm -rf
function trash () {
  mv $* ~/.Trash
}

function pw () {
  pwgen -ys 50 1 | pbcopy
  echo "New password copied to clipboard"
  # TODO: Remove password after a minute with: pbcopy < /dev/null
}

function this {
  pwd > ~/bin/config/current_project_path
  echo "Set current working project to `pwd`"
}

function killport () {
  lsof -i TCP:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9
}

function internet {
  if (ping -c 3 -t 3 google.com > /dev/null 2>&1)
  then
    echo 'There is the internet.'
  else
    echo 'No internet up.'
  fi
}
