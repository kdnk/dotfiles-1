#  General
#-----------------------------------------------
export LANG=ja_JP.UTF-8
export EDITOR=vim


#  Path
#-----------------------------------------------
# dotfiles
export DOTFILES_PATH="$HOME/dotfiles"

# node
export NVM_DIR=$HOME/.nvm

# ruby
export RBENV_ROOT=$HOME/.rbenv

# golang
export GOPATH=$HOME/go

# tex
export TEXLIVE_PATH=/usr/local/texlive
export TEXLIVE_BIN_PATH=$TEXLIVE_PATH/2015/bin/universal-darwin
export TEXLIVE_TEXMR_PATH=$TEXLIVE_PATH/texmf-local

# path
export PATH=/usr/local/bin:$PATH
export PATH=$RBENV_ROOT/bin:$PATH
export PATH=$DOTFILES_PATH/bin:$PATH

export PATH=$PATH:$HOME/.npm/node_modules/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:/usr/local/heroku/bin
export PATH=$PATH:$HOME/.cabal/bin
export PATH=$PATH:$TEXLIVE_BIN_PATH


#  Git
#-----------------------------------------------
# no need to edit merge commit message, bitch
export GIT_MERGE_AUTOEDIT='no'


#  Docker
#-----------------------------------------------
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1


#  Iruka
#-----------------------------------------------
export IRUKA_MACHINE=172.17.8.101
export IRUKA_ETCD_MACHINES=http://172.17.8.101:4001
export IRUKA_FLEET_API_URL=http://172.17.8.101:4002
export IRUKA_DOCKER_HOST=http://172.17.8.101:2375
export IRUKA_API_URL=http://127.0.0.1:8080
