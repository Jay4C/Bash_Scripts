#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-flask-on-ubuntu-18-04/

python3 -V

sudo apt install python3-venv

mkdir my_flask_app

cd my_flask_app

python3 -m venv venv

source venv/bin/activate

pip install Flask

python -m flask --version

export FLASK_APP=hello.py

flask run

deactivate