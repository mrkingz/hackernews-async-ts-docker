FROM node:10.13

# Env
ENV TIME_ZONE=Asia/Hong_Kong
ENV ENV_NAME prod
ENV MYSQL_HOST tos-web-campaign:asia-east1:toswebcampaign

# Create Directory for the Container
WORKDIR /usr/src/app

# Install all Packages
COPY package.json .
RUN npm install

# TypeScript
ADD . /usr/src/app
RUN npm run tsc

# Start
#RUN npm startA
CMD [ "npm", "start" ]
EXPOSE 7001

