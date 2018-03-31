#!/bin/bash
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv $1
pip install -r /requirements/requirements_$1.txt
workon $1
#deactivate
pip install ipykernel
python3 -m ipykernel install --user --name $1 --display-name $1
