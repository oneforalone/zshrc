# customize prompt
export CLICOLOR=1
PROMPT="%B%F{green}%17<...<%3~%<< > %b%f"

# proxy
alias proxy="export http_proxy=http://127.0.0.1:7890; export https_proxy=http://127.0.0.1:7890"
alias unproxy="unset http_proxy; unset https_proxy"
proxy

# LLVM
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# setup for rustup completions
fpath+=~/.zfunc

# Foundry
export PATH="$PATH:/Users/yuqi/.foundry/bin"

# setup for Golang
export GOPATH=$HOME/coding/golang
export PATH=$PATH:$GOPATH/bin

# pyenv
export PATH="$PATH:/Users/yuqi/.pyenv/bin"
function pyenv_on() {
  eval "$(pyenv virtualenv-init -)"
}

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
function rbenv_on() {
  eval "$(rbenv init - zsh)"
  export RUBY_BUILD_MIRROR_URL=https://cache.ruby-china.com
}

# Node Version Manager
# loading nvm would slow the shell, load it manually
export NVM_DIR="$HOME/.nvm"
function nvm_on() {
  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
  # This loads nvm bash_completion
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
}

# some work configs
[ -s "$HOME/work/setup.bashrc" ] && source "$HOME/work/setup.bashrc"

# enable autocompletion
autoload -Uz compinit && compinit
