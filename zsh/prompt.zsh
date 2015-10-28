title(){
  printf "\033]0;%s\007" "$1"
}

user_name(){
	echo "%{$fg[magenta]%}%n%{$reset_color%}"
}

host_name(){
	echo "%{$fg[yellow]%}%m%{$reset_color%}"
}

directory_name(){
  echo "%{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%}"
}

preexec(){
  title `pwd`
}

set_prompt () {
  export PROMPT=$'\n$(user_name) at $(host_name) in $(directory_name) ${vcs_info_msg_0_}\n› '
}

precmd() {
  vcs_info
  set_prompt
}
