# FROM node:14.15.4-buster-slim

# LABEL maintainer="Chu Trong Khanh <khanhct@fpt.com.vn>"

# RUN apt-get update -y
# # install system dependencies
# RUN apt-get update 

# # ENV HOME=/home/app
# # ENV APP_HOME=/home/app/src
# # WORKDIR /usr/src/app
# WORKDIR /app

# ENV PATH /app/node_modules/.bin:$PATH

# COPY ./cas-fe .

# # # create the app user
# # RUN addgroup app && useradd -m app -g app
# # RUN adduser app sudo

# RUN npm install

# # # copy project
# # COPY . $APP_HOME

# # # chown all the files to the app user
# # RUN chown -R app:app $APP_HOME

# # # change to the app user
# # USER app

# CMD ["npm", "start"]
FROM nginx:1.19.0

WORKDIR /usr/share/nginx/html

COPY ./cas-fe/build . 
