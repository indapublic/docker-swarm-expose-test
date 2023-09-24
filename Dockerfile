ARG NODE_VERSION=18
FROM node:$NODE_VERSION-alpine
WORKDIR /app
COPY index.js ./
EXPOSE 3000
CMD ["node", "index.js"]
