FROM node

WORKDIR ~
RUN git clone https://github.com/konieshadow/docker-node-proxy.git ./node-proxy
WORKDIR node-proxy
RUN npm install
ENTRYPOINT ["node", "proxy.js"]
EXPOSE 80
