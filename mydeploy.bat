@echo off
xcopy public\*.* ..\masterMyblog\harrycheng.github.io\  /s /e /c /y /h /r
cd ..\masterMyblog\harrycheng.github.io
git add .
git commit -m "auto deploy...%date%%time%"
git push origin master
cd ../../hexoblog
pause


