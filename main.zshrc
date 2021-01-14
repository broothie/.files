### Environment ###
export EDITOR=code

### PATH ###
mkdir -p "$HOME/bin"
export PATH=$PATH:$HOME/bin

### Enhancements ###

# z jump
source "$HOME/.files/.zsh/z.sh"

# ls/exa
if [ ! -z "$(which exa)" ]; then
  alias ls="exa --header --git"
else
  alias ls="ls -hF"
fi

# Add a dock space
dockspace() {
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
}

# Shortcuts
alias spot="spotify"
alias chrome="open /Applications/Google\ Chrome.app"
alias zshedit="$EDITOR $HOME/.files/*.zshrc"
alias zshsrc="source $HOME/.zshrc"

# Completion
zstyle ':completion:*:*:git:*' script "$HOME/.files/.zsh/git-completion.bash" # bash completion; needed for git completion
fpath=("$HOME/.files/.zsh" $fpath) # git completion
autoload -Uz compinit && compinit

### Prompt ###
source "$HOME/.files/.zsh/git-prompt.sh"
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
export GIT_PS1_SHOWDIRTYSTATE=true
export PS1='%F{blue}%D %*%f %F{cyan}%1~%f%F{yellow}$(__git_ps1)%f
%(?.%F{green}.%F{red})➤%f '

### Syntax highlighting ###
# Must go last
source "$HOME/.files/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
