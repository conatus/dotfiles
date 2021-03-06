setopt APPEND_HISTORY 
setopt INC_APPEND_HISTORY 
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt complete_in_word         # Not just at the end
setopt always_to_end            # When complete from middle, move cursor
setopt prompt_subst
setopt auto_cd
setopt extendedglob

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "on %{$fg_bold[green]%}%b%{$reset_color%}"
