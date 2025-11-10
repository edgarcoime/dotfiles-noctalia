# KEYBINDS
bindkey -e
# Make history related to commands
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# HISTORY
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space # useful if you want to input sensitive data, prepend with space and continue cmd
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion Styling from zinit
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
