#!/bin/bash

apt update
apt install python3 python3-venv py3-pip git
cd ~
python3 -m venv .
source bin/activate
mkdir app
git clone https://github.com/alpeon/test-app.git app
cd app
pip install -r requirements.txt
