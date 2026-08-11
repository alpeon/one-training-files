#!/bin/bash

## install python packages
apk add python3 py3-pip

## create virtual environment
cd ~
python3 -m venv .
source bin/activate
mkdir app

## clone the application and install dependencies
git clone https://github.com/alpeon/test-app.git app
cd app
mv app/* .
pip install -r requirements.txt

## install cloudflared cli

curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o /usr/bin/cloudflared
chmod +x /usr/bin/cloudflared