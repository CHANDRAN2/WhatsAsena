FROM fusuf/whatsasena:latest

RUN git clone https://github.com/CHANDRAN2/WhatsAsena

WORKDIR /root/WhatsAsena/

ENV TZ=Europe/Istanbul
RUN apk add --update nodejs npm
RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install -g npm@7.6.0 \
    && apk del build-dependencies

CMD ["node", "bot.js"]
