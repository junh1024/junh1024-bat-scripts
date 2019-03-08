git add *.txt
git add *.md
git add *.bat
git status
REM set /p msg="Enter commit message: "
git commit -m "s"
git reset --soft HEAD~1
git commit --amend -C HEAD
git push -f

REM pause