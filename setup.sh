apt-get update && apt-get upgrade 
wget https://github.com/juice-shop/juice-shop/releases/download/v14.0.1/juic> 
tar zxvf juice-shop-14.0.1_node14_linux_x64.tgz
wget https://nodejs.org/download/release/v14.1.0/node-v14.1.0-linux-x64.tar.> 
tar -xvf node-v14.1.0-linux-x64.tar.xz
cp -r node-v14.1.0-linux-x64/{bin,include,lib,share} /usr/
cd juice-shop_14.0.1
npm install
