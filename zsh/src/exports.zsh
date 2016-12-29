#  General
#-----------------------------------------------
export LANG=ja_JP.UTF-8
export EDITOR=vim

export LSCOLORS='Gxfxcxdxbxegedabagacad'


#  Path
#-----------------------------------------------
# dotfiles
export DOTFILES_PATH="$HOME/dotfiles"

# golang
export GOPATH=$HOME/go

# tex
export TEXLIVE_PATH=/usr/local/texlive
export TEXLIVE_BIN_PATH=$TEXLIVE_PATH/2015/bin/universal-darwin
export TEXLIVE_TEXMR_PATH=$TEXLIVE_PATH/texmf-local

# android
export ANDROID_HOME=/usr/local/opt/android-sdk

# anyenv
export ANYENV_DIR=$HOME/.anyenv

# path
export PATH=/usr/local/bin:$PATH

export PATH=$ANYENV_DIR/bin:$PATH
export PATH=$ANYENV_DIR/envs/rbenv/shims:$PATH
export PATH=$ANYENV_DIR/envs/ndenv/shims:$PATH
export PATH=$ANYENV_DIR/envs/jenv/shims:$PATH
export PATH=$ANYENV_DIR/envs/luaenv/shims:$PATH
export PATH=$ANYENV_DIR/envs/pyenv/shims:$PATH
export PATH=$ANYENV_DIR/envs/goenv/shims:$PATH

export PATH=$DOTFILES_PATH/bin:$PATH
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:/usr/local/heroku/bin
export PATH=$PATH:$HOME/.cabal/bin
export PATH=$PATH:$TEXLIVE_BIN_PATH


#  Git
#-----------------------------------------------
# no need to edit merge commit message, bitch
export GIT_MERGE_AUTOEDIT='no'


#  Rails
#-----------------------------------------------
export DISABLE_SPRING=1


#  Tmux
#-----------------------------------------------
TMUX_RESURRECT_SCRIPTS_PATH=~/.tmux/plugins/tmux-resurrect/scripts