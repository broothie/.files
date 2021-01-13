### Enhancements ###

# z jump
source "$HOME/.zsh/z.sh"

# ls/exa
if [ ! -z "$(which exa)" ]; then
  alias exa="exa --long --header --git"
  alias ls="exa"
else
  alias ls="ls -lPG"
fi

# Add a dock space
dockspace() {
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
}

# Shortcuts
alias spot="spotify"
alias chrome="open /Applications/Google\ Chrome.app"

### Prompt ###
source "$HOME/.zsh/git-prompt.sh"
zstyle ':completion:*:*:git:*' script "$HOME/.zsh/git-completion.bash" # bash completion; needed for git completion
fpath=("$HOME/.zsh" $fpath) # git completion
autoload -Uz compinit && compinit

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
export GIT_PS1_SHOWDIRTYSTATE=true
# ➤ →
export PS1='%F{blue}%D %*%f %F{cyan}%1~%f%F{yellow}$(__git_ps1)%f
%(?.%F{green}.%F{red})➤%f '

### Environment ###
export EDITOR=vim

### PATH ###
export PATH=$PATH:$HOME/bin

### Machine ###
if [[ -a "$HOME/.files/machine.zshrc" ]]; then
  source "$HOME/.files/machine.zshrc"
fi

### Syntax highlighting ###
# Must go last
source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
