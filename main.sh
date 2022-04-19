rm -f build
rm -rf alist 
rm -rf alist-web
git clone https://github.com/Xhofe/alist-web
git clone https://github.com/Xhofe/alist
cp run.sh alist/
cd alist-web 
npm install && npm run build
cd .. 
cp -r alist-web/dist/* alist/public/
cd alist
sh run.sh
cp alist ../build
cd ..
chmod +x build 
./build 
