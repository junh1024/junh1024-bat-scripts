git add *.txt
git add *.md
git add *.bat
git status
set /p msg="Enter commit message: "
git commit -m "%msg%"
git push

pause