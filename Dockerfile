FROM node:12-alpine
WORKDIR /app
COPY . .
# new stuff here
# ...

# RUN yarn install --production
RUN yarn install
CMD ["npm", "test"]
# CMD ["node", "src/index.js"]