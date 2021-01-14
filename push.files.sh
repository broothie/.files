
command="${1:-updates}"

git --git-dir "$HOME/.files/.git" add "$HOME/.files"
git --git-dir "$HOME/.files/.git" commit -m "$command"
git --git-dir "$HOME/.files/.git" push
