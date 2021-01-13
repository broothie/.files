
while read filename; do
  echo "$HOME/$filename -> $HOME/.files/home/$filename"
  cp -rp "$HOME/$filename" "$HOME/.files/home"
done < "$HOME/.files/track.txt"
