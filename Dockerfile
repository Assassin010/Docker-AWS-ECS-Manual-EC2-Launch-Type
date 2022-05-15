FROM node:alpine
ENV NODE_ENV=development

WORKDIR /app

COPY package.json .

RUN npm install --development

COPY . .                                        

EXPOSE 80

CMD ["node", "index.js"]
