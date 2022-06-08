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

[[ -s "$(brew --prefix)/etc/bash_completion.d/go" ]] && source "$(brew --prefix)/etc/bash_completion.d/go"

# pyenv
export PATH="$PATH:/Users/yuqi/.pyenv/bin"
eval "$(pyenv virtualenv-init - --no-rehash)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
# from https://www.americaninno.com/boston/speeding-up-your-console-when-using-rbenv/
eval "$(rbenv init - zsh --no-rehash)"
# using mirror in china
export RUBY_BUILD_MIRROR_URL=https://cache.ruby-china.com


# Node Version Manager - NVM
# from https://www.ioannispoulakas.com/2020/02/22/how-to-speed-up-shell-load-while-using-nvm/
# to speedup the loading process
# Add default node to path
export PATH="$HOME/.nvm/versions/node/v14.19.3/bin:$PATH"

# Setting the default directory
export NVM_DIR="$HOME/.nvm"
export NVM_BIN_DIR="$(brew --prefix)/opt/nvm"
# Load nvm
[[ -s "$NVM_BIN_DIR/nvm.sh" ]] && source "$NVM_BIN_DIR/nvm.sh" --no-use
[[ -s "$NVM_BIN_DIR/etc/bash_completion.d/nvm" ]] && source "$NVM_BIN_DIR/etc/bash_completion.d/nvm"

# some work configs
[[ -s "$HOME/work/setup.bashrc" ]] && source "$HOME/work/setup.bashrc"

# enable autocompletion
autoload -Uz compinit && compinit
