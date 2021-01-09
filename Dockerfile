FROM fusuf/whatsasena:latest

RUN git clone https://github.com/CHANDRAN2/WhatsAsena

WORKDIR /root/WhatsAsena/

ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN apk add --update nodejs npm
RUN npm install

CMD ["node", "bot.js"]
