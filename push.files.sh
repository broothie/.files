
cd "$HOME/.files"

git add -A
git commit -m "${1:-updates}"
git push
