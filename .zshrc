# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

plugins=(git)
source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"

alias python=/usr/bin/python3
alias intel=arch -x86_64
alias gp="git push"
alias v="nvim"
alias zshconf="nvim ~/.zshrc"
alias luaconf="nvim ~/.config/nvim/lua/arie/plugins.lua"
alias after="cd ~/.config/nvim/after/plugin"
alias nvimconf="nvim ~/.nvimrc"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias pingg="ping google.com"
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias ni="npm install"
alias n="npm"
alias lsd='ls -l | grep "^d"'
alias piew="cd ~"
alias please="sudo"
alias g="git"
alias gpatch="git format-patch -1"
alias brall="brew leaves"
alias nvall="nvm list"
alias cheat="~/.cheatsheet/init.sh"
alias lg='lazygit'
alias sz='source ~/.zshrc'

export PATH="/opt/homebrew/opt/libxml2/bin:$PATH"
export ZSH=$HOME/.local/share/oh-my-zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
test -e /Users/ariesyukron/.iterm2_shell_integration.zsh && source /Users/ariesyukron/.iterm2_shell_integration.zsh || true
export PATH=/Users/ariesyukron/.nvm/versions/node/v16.15.0/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin:/opt/homebrew/bin
export FORMAT="\nID\t{{.ID}}\nIMAGE\t{{.Image}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.RunningFor}}\nSTATUS\t{{.Status}}\nPORTS\t{{.Ports}}\nNAMES\t{{.Names}}\n"

