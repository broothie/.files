
while read filename; do
  echo "$HOME/$filename -> $HOME/.files/home/$filename"
  cp -rpf "$HOME/$filename" "$HOME/.files/home"
done < "$HOME/.files/copy.txt"
