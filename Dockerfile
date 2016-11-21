FROM node:6.9.1

ENV http_proxy=http://proxy.houston.hpecorp.net:8080
# 設定 container 的預設目錄位置
WORKDIR /hello-ci-workflow

# 將專案根目錄的檔案加入至 container
# 安裝 npm package
ADD . /hello-ci-workflow
RUN npm install

# 開放 container 的 3000 port
EXPOSE 3000
CMD npm start

