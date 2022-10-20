FROM --platform=linux/amd64 node

WORKDIR /app

COPY package.json .

RUN npm install
RUN npm install pm2 -g

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=root
ENV MONGODB_URL=cluster0.jglupcu.mongodb.net

CMD [ "pm2", "start", "app.js", "--no-daemon" ]
