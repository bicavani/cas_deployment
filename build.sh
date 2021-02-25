#!/bin/bash
rm -rf cas-fe

git clone https://git.fmeet.vn/hoandm/cas-fe.git

cd cas-fe

npm install

npm build

cd ..

# Build docker image
sudo docker build -t cas_dashboard .


#upload docker image
sudo docker run -d -p 5000:5000 --restart=always --name cas_dashboard registry:2

sudo docker tag cas_dashboard hoandm/cas_dashboard

sudo docker push hoandm/cas_dashboard



