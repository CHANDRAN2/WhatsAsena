FROM fusuf/whatsasena:latest

RUN git clone https://github.com/CHANDRAN2/WhatsAsena
WORKDIR /root/WhatsAsena/
ENV TZ=Europe/Istanbul
RUN npm install -g npm@7.4.0
RUN npm install supervisor -g

CMD ["node", "bot.js"]
