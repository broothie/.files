
set -e

for filename in $(ls -A $HOME/.files/home); do
  ln -svf "$HOME/.files/home/$filename" "$HOME/$filename"
done

if ! grep main.zshrc $HOME/.zshrc; then
  sed -i .bak '1i\
  source "$HOME/.files/main.zshrc"

  ' "$HOME/.zshrc"
fi

mkdir -p "$HOME/bin"
ln -svf "$HOME/.files/dotfiles" "$HOME/bin/dotfiles"
