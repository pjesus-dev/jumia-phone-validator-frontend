#Build Stage Start

FROM node:14.18-alpine3.14 as builder
WORKDIR /validator-frontend
COPY . .
RUN npm install
RUN npm run build

#Run Stage Start

FROM node:alpine3.12
WORKDIR /validator-frontend
COPY --from=builder /validator-frontend/build .
RUN npm i serve -g
CMD ["serve", "-s", "-l", "8081"]