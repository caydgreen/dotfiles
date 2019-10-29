export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/cayla.green/.oh-my-zsh"

ZSH_THEME="bullet-train"
PROMPT='mothership'

if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
 source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
fi

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
# alias list
alias opry="docker-compose -f docker-compose-mac.yml exec application pry-remote"
alias dca="docker-compose -f docker-compose-mac.yml exec application"
alias dcd="docker-compose -f docker-compose-mac.yml exec database psql -U branded_web -d branded_web_v3_dev"
alias rc="docker-compose -f docker-compose-mac.yml exec application rails console"
alias co="checkout"
alias grm="git checkout master && git pull && git checkout - && git rebase -i master"
alias dcup="docker-compose -f docker-compose-mac.yml up"
alias dcdown="docker-compose -f docker-compose-mac.yml down"
alias db="docker-compose -f docker-compose-mac.yml build"
alias tests="docker-compose -f docker-compose-mac.yml bin/rspec"
alias git statys="git status"
alias j="jobs"
alias gitclean="git branch -D `git branch -vv | grep -v origin | awk '{print $1}'`"
