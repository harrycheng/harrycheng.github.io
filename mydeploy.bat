@echo off
echo "使用bat脚本来复制文件夹和文件"
xcopy public\*.* ..\masterMyblog\harrycheng.github.io\  /s /e /c /y /h /r
cd ..\masterMyblog\harrycheng.github.io
git add .
git commit -m "auto deploy..."
git push origin master
cd ../../hexoblog
pause


