REM Squash last 2 commits
git reset --soft HEAD~1
git commit --amend -C HEAD
git push -f
pause