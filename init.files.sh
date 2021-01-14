
for filename in $(ls -A $HOME/.files/home); do
  ln -s "$HOME/.files/home/$filename" "$HOME/$filename"
done

mkdir -p "$HOME/bin"

if ! grep main.zshrc $HOME/.zshrc; then
  echo 'source "$HOME/.files/main.zshrc"' >> "$HOME/.zshrc"
fi

source "$HOME/.zshrc"
