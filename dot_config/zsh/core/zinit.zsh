# ====================== PATH CONFIGS HERE ======================
# If possible set in .zprofile for configs and path not here
# ====================== PATH CONFIGS HERE ======================

# ====================== ZSH CONFIGS AND MINIMUM CONFIGS ======================
# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"


# Download zinit, if it's not there yet
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

# source and load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Load starship theme
# line 1: `starship` binary as command, from github release
# line 2: starship setup at clone(create init.zsh, completion)
# line 3: pull behavior same as clone, source init.zsh
zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

# ZSH PLUGINS
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# ADD IN SNIPPETS
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::dirhistory
# zinit snippet OMZP::macos # Only on macos machines some directories not working
zinit snippet OMZP::aws
# zinit snippet OMZP::docker # some directories not working
zinit snippet OMZP::docker-compose
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# LOAD COMPLETIONS
autoload -U compinit && compinit
zinit cdreplay -q
