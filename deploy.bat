:: 生成静态文件
echo "======begin to npm build======="
call npm run docs:build

:: 进入生成的文件夹
echo "======begin to git push======="
cd docs/.vuepress/dist

:: git变更及推送

git init
git add -A
git commit -m 'deploy'
git config http.sslVerify "false"

git push -f https://github.com/chenmingkong/chenmingkong.github.io.git master

cd ../../..
