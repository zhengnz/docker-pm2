#base image
FROM node:6-alpine

#author
MAINTAINER Norman 332535694@qq.com

ADD init.sh /
RUN chmod +x /*.sh && \
    apk add --no-cache bash mysql-client git && \
    npm config set registry https://registry.npm.taobao.org && \
    npm install -g cnpm && \
    cnpm install -g pm2@next babel-core babel-preset-es2015 babel-preset-stage-0 babel-runtime babel-plugin-transform-runtime && \
    pm2 install lgp-monitor

ENV NODE_PATH /usr/local/lib/node_modules

VOLUME ["/root/.ssh", "/web"]
CMD ["/bin/bash", "/init.sh"]