FROM build:latest

WORKDIR build

RUN npm run test
