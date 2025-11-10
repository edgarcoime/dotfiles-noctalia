alias open="xdg-open"

alias ll="eza -F -lh --icons=always --group-directories-first"
alias llt="eza -F -l --icons=always --group-directories-first --sort=time"
alias tree="eza -F -l --group-directories-first --tree --icons=always"

alias lg="lazygit"
alias lazyg="lazygit"
alias lazyd="lazydocker"

alias nv='NVIM_APPNAME="nvim_12" bob run nightly'
alias chz="chezmoi"

sc() {
  # Needs to be here because we are trying to find the result of 
  # command substitution ie. $(...)
  sesh connect "$(sesh list | fzf)"
}
