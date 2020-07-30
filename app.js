const http = require("http");
const fs = require("fs");

const server = http.createServer();

server.listen(3000, () => {
  console.log("当前监听的端口为3000");
});

server.on('request',function(){
  console.log('收到客户端发出的请求.......');
});
