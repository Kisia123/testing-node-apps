FROM builder:latest

WORKDIR /testing-node-apps/

RUN npm install
RUN npm run test:final
