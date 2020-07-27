# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  #time          # Time stamps section
  #user          # Username section
  dir # Current directory section
  #host          # Hostname section
  git # Git section (git_branch + git_status)
  #hg            # Mercurial section (hg_branch  + hg_status)
  package # Package version
  node    # Node.js section
  #ruby          # Ruby section
  #elixir        # Elixir section
  #xcode         # Xcode section
  #swift         # Swift section
  #golang        # Go section
  php # PHP section
  #rust          # Rust section
  #haskell       # Haskell Stack section
  #julia         # Julia section
 # docker # Docker section
  aws    # Amazon Web Services section
  #venv          # virtualenv section
  #conda         # conda virtualenv section
  #pyenv         # Pyenv section
  dotnet # .NET section
  #ember         # Ember.js section
  #kubecontext   # Kubectl context section
  #terraform     # Terraform workspace section
  exec_time # Execution time
  line_sep  # Line break
  #battery       # Battery level and status
  vi_mode   # Vi-mode indicator
  jobs      # Background jobs indicator
  exit_code # Exit code section
  char      # Prompt character
)

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git npm zsh-z zsh-autosuggestions zsh-syntax-highlighting)

# Change ugly background color in ls
export LS_COLORS="$LS_COLORS:ow=1;32:tw=1;34:"

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias gitk="gitk.exe"
alias gitgui="git-gui.exe"
alias clip="clip.exe"
alias explore="explorer.exe ."
alias ccat="pygmentize -O style=monokai -g"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
