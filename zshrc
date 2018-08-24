[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

autoload -U compinit && compinit
autoload -U zmv
autoload colors && colors

source ~/.zsh/exports.zsh
source ~/.zsh/path.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/history.zsh
source ~/.zsh/set_options.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion_rake.zsh

if [ -e ~/.local.zsh ]; then
	source ~/.local.zsh
fi

# Disable Boxen for the moment.
#source /opt/boxen/env.sh
. "/Users/alex/.acme.sh/acme.sh.env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/alex/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/alex/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/alex/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/alex/Downloads/google-cloud-sdk/completion.zsh.inc'
fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/alex/Code/lightful/delightfulapi/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/alex/Code/lightful/delightfulapi/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/alex/Code/lightful/delightfulapi/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/alex/Code/lightful/delightfulapi/node_modules/tabtab/.completions/sls.zsh