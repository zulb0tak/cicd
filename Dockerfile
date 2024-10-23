FROM node
RUN mkdir /workdir/app

WORKDIR /workdir/app
ENV PATH /workdir/app/node_modules/.bin: PATH
COPY package*.json /workdir/app/

RUN npm install

COPY . /workdir/app/

EXPOSE 4000
CMD ["npm", "start"]