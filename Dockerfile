FROM node:latest

#RUN yum install wget -y

#RUN yum install unzip -y

RUN git clone https://github.com/Ayyappan97/simpleexpressjs.git

COPY . /opt

WORKDIR /opt/simpleexpressjs

CMD npm install express

CMD npm start

EXPOSE 3000

ENTRYPOINT ["node", "index.js"]


