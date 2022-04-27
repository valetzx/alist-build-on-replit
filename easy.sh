git clone https://github.com/Xhofe/alist
mv alist/build.sh .
bash build.sh web
mv dist/* alist/public
bash build.sh build
