apk add git
mkdir /pw
cd /pw
git clone https://github.com/microsoft/playwright.git
cd /pw/playwright
git checkout v1.54.1
npm install -g vite
npm i #it reads the package json from repo root dir and installs many packages to node_modules/! 

cd /pw/playwright/packages/
npm run build || true
# comment thgis lise as official SCR does not have it: npm run build-sw || true