# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="presto"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias vim="nvim"
alias zs="vim ~/.zshrc"
alias szs="source ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
DISABLE_AUTO_TITLE=true
export EDITOR='vim'
# eval "$(rbenv init -)"

export DEFAULT_USER="presto"

searchAndDestroy(){
  # kill processes on some tcp port:
  if [ -z "$1" ]; then
    echo "Usage: searchAndDestroy [numeric port identifier]" >&2
    return 1
  fi
  lsof -i TCP:$1 | awk '/LISTEN/{print $2}' | xargs kill -9
}

export NPM_TOKEN=c9bd3200-0e79-4056-98c8-ea383e16b1ff
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
source ~/bin/tmuxinator.zsh

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="$PATH:$HOME/.rvm/bin"

export DELIVER_USERNAME='luisk.hernandez.macias@gmail.com'
export DELIVER_PASSWORD='PRweZZmgTv8cFHDz'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# export LDFLAGS=“-L/usr/local/opt/openssl/lib”
# export CPPFLAGS=“-I/usr/local/opt/openssl/include”
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# backend () {
#   username=luiskhernandez
#   project_name=feature_staging
#   ips_file_path=~/ips
#   while read p
#   do
#     container_id=$(ssh $username@$p docker ps | grep $project_name | head -n 1 | awk '{ print $1 }')
#     if [ -n "$container_id" ]
#     then
#       instance_ip=$(ssh $username@$p curl -s http://169.254.169.254/latest/meta-data/public-ipv4)
#       break
#     fi
#   done < $ips_file_path
#   if [ -n "$container_id" ]
#   then
#     ssh -t $username@$instance_ip docker exec -it $container_id sh
#   fi
# }

download_stagging_db () {
  username=luiskhernandez
  ip=18.210.12.52
  ssh $username@$ip
  docker run -it -v $PWD:$HOME postgres:10.2 bash
  export PGPASSWORD=TlWPO2S60UZkOvDkQwA3
  pg_dump -h luna-api-staging.cygk0he9vwao.us-east-1.rds.amazonaws.com -U luna_api -d luna_api_staging > /home/luiskhernandez/luna_api_staging_$(date +%d-%m-%y).sql
  exit
  exit
  scp username@ip:/home/username/file_name.sql ~/local_path
}

search(){
  #!/bin/bash
  username=luiskhernandez
  project_name=feature_staging

  ips_file_path=~/ips
  while read p
  do
    container_id=$(ssh -n $username@$p docker ps | grep $project_name | head -n 1 | awk '{ print $1 }')
    if [ -n "$container_id" ]
    then
      instance_ip=$p
      break
    fi
  done < $ips_file_path
  if [ -n "$container_id" ]
  then
    ssh -t $username@$instance_ip docker exec -it $container_id sh
  fi
}


