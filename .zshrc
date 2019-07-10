export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/cayla.green/.oh-my-zsh"

ZSH_THEME="bullet-train"
PROMPT='mothership'

if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
 source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
fi

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
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
