FROM node:13
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
WORKDIR /home/node/app
RUN npm install -g npx npm-shrinkwrap npm-run-all
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
USER node
EXPOSE 1234
CMD ["npm", "start"]
