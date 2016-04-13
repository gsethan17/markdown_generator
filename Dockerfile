FROM node:4.4.3

RUN mkdir /data
WORKDIR /data

COPY ./ /data/
RUN npm intall forever -g
EXPOSE 3000

CMD [ "forever", "start", " /data/bin/www"]
