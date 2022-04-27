#构建前端文件 
cd alist-web 
#构建alist-web前端
npm install && npm run build
#打包tar.gz
tar -zcvf dist.tar.gz dist
