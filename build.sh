#!/bin/bash
rm -rf cas-fe

git clone https://git.fmeet.vn/hoandm/cas-fe.git

cd cas-fe

yarn install

yarn build

cd ..

# Build docker image
docker build -t cas_dashboard .


#upload docker image
docker run -d -p 5000:5000 --restart=always --name cas_dashboard registry:2

docker tag cas_dashboard hoandm/cas_dashboard

docker push hoandm/cas_dashboard



