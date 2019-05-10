# stuff...

export ZSH="/root/.oh-my-zsh"
ZSH_THEME="candy"
export UPDATE_ZSH_DAYS=30
COMPLETION_WAITING_DOTS="true"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/scripts"

alias gad='git add -A'
alias gsta='git status'
alias gcome='git commit --allow-empty -m "Trigger Build"'

function gcom(){
   if [ "$2" ]
    then
       echo "--- you should only be passing the commit message. did you forget to use quotes? ---"
    else
       if [ -z "$1" ]
        then
           echo "-- gcom requires a message  --"
        else
           git commit -m "$1"
       fi
   fi
}

function gpus(){
  if [ "$2" ]
    then
      echo "--- you need to include a branch e.g. 'gpus master' nothing else ---"
    else
      if [ -z "$1" ]
        then
          echo "--- you need to include a branch e.g. 'gpus master' ---"
      else
        git push origin "$1"
      fi
  fi
}

function gpul(){
  if [ "$2" ]
    then
      echo "--- you need to include a branch e.g. 'gpul master' nothing else ---"
    else
      if [ -z "$1" ]
        then
          echo "--- you need to include a branch e.g. 'gpul master' ---"
      else
        git pull origin "$1"
      fi
  fi
}
