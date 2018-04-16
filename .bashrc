eval "$(ssh-agent)"

alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias ll="ls -lah"
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

. ~/.git-completion.bash
. ~/.git-prompt.sh

MAGENTA="\\[\\033[0;35m\\]"
YELLOW="\\[\\033[0;33m\\]"
BLUE="\\[\\033[34m\\]"
LIGHT_GRAY="\\[\\033[0;37m\\]"
CYAN="\\[\\033[0;36m\\]"
GREEN="\\[\\033[0;32m\\]"
GIT_PS1_SHOWDIRTYSTATE=true

export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_GRAY"\\u@\\h"'$(
      if [[ $(__git_ps1) =~ \\*\\)$ ]]
      # a file has been modified but not added
      then echo "'$YELLOW'"$(__git_ps1 " (%s)")
      elif [[ $(__git_ps1) =~ \\+\\)$ ]]
      # a file has been added, but not commited
      then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
      # the state is clean, changes are commited
      else echo "'$CYAN'"$(__git_ps1 " (%s)")
      fi)'$BLUE" \\w$GREEN: "

export GOPATH=$HOME/Documents/projects
export PATH=$PATH:$GOPATH/bin
