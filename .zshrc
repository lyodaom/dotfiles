# Created by newuser for 4.3.11

if [[ -f ~/.bashrc_local ]]; then
    source ~/.bashrc_local
fi

# unset HISTFILE
# autoload -Uz compinit promptinit
# compinit
# promptinit

# prompt zefram

source ~/.zsh/setopt.sh
source ~/.zsh/functions.sh
source ~/.zsh/bindkeys.sh

eval "$(fasd --init auto)"

# Plugins and Frameworks
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Oh-my-zsh
export ZSH=~"/.zsh/oh-my-zsh"

ZSH_THEME="tjkirch"

plugins=(git tmux dirhistory)

source ~/.zsh/oh-my-zsh/oh-my-zsh.sh

# Syntax highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
