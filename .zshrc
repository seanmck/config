# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:/Users/seanmck/work/kubernetes/aadconfig/istio-0.8.0/bin"
export PATH="$PATH:/Users/seanmck/work/aks/keda/Azure.Functions.Cli.osx-x64.2.7.72"
export PATH=$PATH:$HOME/.linkerd2/bin

# Path to your oh-my-zsh installation.
export ZSH=/Users/seanmck/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
  kube-ps1
  virtualenv
  tmux
)

POWERLEVEL9K_CUSTOM_KUBE_PS1='kube_ps1'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_COLOR_SCHEME='light'

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv custom_kube_ps1)

source $ZSH/oh-my-zsh.sh
source <(kubectl completion zsh)
source <(helm completion zsh)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set default user to remove unnecessary name@host in prompt
DEFAULT_USER="seanmck"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias k=kubectl
alias rec="asciinema rec"
alias watch="watch -n 3 "
alias kcdebug="kubectl run -i --tty --rm --generator=run-pod/v1 --image ubuntu --restart=Never -- bash"
source ~/.bash_aliases

source ~/demos/events/fnw2019/.fnw_aliases

autoload bashcompinit && bashcompinit
source /usr/local/etc/bash_completion.d/az
source /etc/bash_completion.d/azds
# source ~/completions/istioctl.bash

# Other exports

export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:/Users/seanmck/kubernetes/istio/istio-0.2.12/bin"

fpath=(/usr/local/share/zsh-completions $fpath)
