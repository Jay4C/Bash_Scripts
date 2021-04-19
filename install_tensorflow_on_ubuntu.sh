#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-install-tensorflow-on-ubuntu-20-04/

python3 -V

sudo apt install python3-venv python3-dev

mkdir my_tensorflow

cd my_tensorflow

python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip

pip install --upgrade tensorflow

python -c 'import tensorflow as tf; print(tf.__version__)'

deactivate