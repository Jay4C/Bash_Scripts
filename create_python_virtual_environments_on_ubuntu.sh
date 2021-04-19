#!/bin/bash

# follow these steps : https://linuxize.com/post/how-to-create-python-virtual-environments-on-ubuntu-18-04/

python3 -V

sudo apt install python3-venv

python3 -m venv my-project-env

source my-project-env/bin/activate

pip install requests

python -c "import requests"

nano testing.py

python testing.py

deactivate