FROM fusuf/whatsasena:latest

RUN git clone https://github.com/CHANDRAN2/WhatsAsena
WORKDIR /root/WhatsAsena/
ENV TZ=Europe/Istanbul
//RUN npm install supervisor -g
//RUN npm install
RUN cd $(npm root -g)/npm
RUN npm install fs-extra
RUN sed -i -e s/graceful-fs/fs-extra/ -e s/fs.rename/fs.move/ ./lib/utils/rename.js

CMD ["node", "bot.js"]
