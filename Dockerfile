FROM fusuf/whatsasena:latest

RUN git clone https://github.com/CHANDRAN2/WhatsAsena

WORKDIR /root/WhatsAsena/

ENV TZ=Europe/Istanbul
RUN apk add --update nodejs npm
RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install \
    && apk del build-dependencies
RUN npm install

CMD ["node", "bot.js"]
