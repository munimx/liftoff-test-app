FROM node:20-alpine
WORKDIR /app
RUN echo "const http=require('http');http.createServer((_,r)=>{r.writeHead(200);r.end(JSON.stringify({status:'ok'}))}).listen(3000)" > index.js
CMD ["node", "index.js"]
