# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="miloshadzic"
ZSH_THEME="spaceship"
# ZSH_THEME="code_smell"

plugins=(git)
source $ZSH/oh-my-zsh.sh

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

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=false
SPACESHIP_GIT_BRANCH_COLOR=#FDEDD5
SPACESHIP_DIR_COLOR=#1E90FF
SPACESHIP_GIT_STATUS_COLOR=#00d2e9
SPACESHIP_CHAR_SYMBOL=''
SPACESHIP_CHAR_COLOR_SUCCESS=#04ee40
SPACESHIP_TIME_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=false
SPACESHIP_CHAR_SYMBOL_ROOT=

# Set Spaceship ZSH as a prompt
autoload prompt spaceship

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

