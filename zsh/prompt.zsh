git_branch() {
  echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$(/usr/bin/git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ $st == "nothing to commit (working directory clean)" ]]
    then
      echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$(/usr/bin/git name-rev --name-only HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {
  /usr/bin/git cherry -v origin/$(git_branch) 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

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

precmd(){
  
}

preexec(){
  title `pwd`
}

set_prompt () {
  # Could use preexec or precmd
  #title `pwd`

  export PROMPT=$'\n$(user_name) at $(host_name) in $(directory_name) $(git_dirty)$(need_push)\n› '
}

precmd() {
  set_prompt
}
