FROM fusuf/whatsasena:publicbeta

RUN git clone https://github.com/CHANDRAN2/WhatsAsena
RUN mkdir /root/WhatsAsena/bin/
WORKDIR /root/WhatsAsena/

ENV TZ=Europe/Istanbul
RUN apk add --update nodejs npm
RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install \
    && apk del build-dependencies

CMD ["node", "bot.js"]
