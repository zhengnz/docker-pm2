#base image
FROM pm2

#author
MAINTAINER Norman 332535694@qq.com

ADD https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 /usr/share/
RUN apk update && apk add --no-cache fontconfig g++ && \
    ln -s /usr/share/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/phantomjs && \
    phantomjs --version
