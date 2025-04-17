FROM node:12-alpine
#gopihereee
RUN apk add --no0cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "./index.html" ]
EXPOSE 3000