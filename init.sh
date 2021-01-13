
while read filename; do
  echo "$HOME/.files/home/$filename -> $HOME/$filename"
  cp -rpf "$HOME/.files/home/$filename" "$HOME"
done < "$HOME/.files/copy.txt"
