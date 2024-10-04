# Config for Mac OSX zsh

# Add new /opt/homebrew folder to path?
export PATH=/opt/homebrew/bin:$PATH

# vim as default editor
export EDITOR=vim

# add slash to directories in ls
alias ls='ls -p'

# add color to ls output
export CLICOLOR=1

# http://askubuntu.com/questions/123268/changing-colors-for-user-host-directory-information-in-terminal-command-prompt
# https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
PROMPT=" %B%F{green}%1~%f%b %# "

# add kubernetes context to prompt: https://github.com/jonmosco/kube-ps1
source "/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh"
PROMPT='$(kube_ps1)'$PROMPT

# colorized grep output
export GREP_OPTIONS='--color=auto'

# jump words with option key
bindkey "^[f" forward-word
bindkey "^[b" backward-word

# sublime text command line utility
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
