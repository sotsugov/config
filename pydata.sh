#!/usr/bin/env bash

# ~/pydata.sh

# Removed user's cached credentials
# This script might be run with .dots, which uses elevated privileges
sudo -K

echo "------------------------------"
echo "Setting up pip."

# Install pip
easy_install pip

###############################################################################
# Virtual Enviroments                                                         #
###############################################################################

echo "------------------------------"
echo "Setting up virtual environments."

# Install virtual environments globally
# It fails to install virtualenv if PIP_REQUIRE_VIRTUALENV was true
export PIP_REQUIRE_VIRTUALENV=false
pip install virtualenv
pip install virtualenvwrapper

echo "------------------------------"
echo "Source virtualenvwrapper from ~/.extra"

EXTRA_PATH=~/.extra
echo $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "" >> $EXTRA_PATH
echo "# Source virtualenvwrapper, added by pydata.sh" >> $EXTRA_PATH
echo "export WORKON_HOME=~/.virtualenvs" >> $EXTRA_PATH
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $EXTRA_PATH
echo "" >> $BASH_PROFILE_PATH
source $EXTRA_PATH

###############################################################################
# Python 2 Virtual Enviroment                                                 #
###############################################################################

echo "------------------------------"
echo "Setting up py2-data virtual environment."

# Create a Python2 data environment
mkvirtualenv py2-data
workon py2-data

# Install Python data modules
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install sympy
pip install nose
pip install unittest2
pip install seaborn
pip install scikit-learn
pip install "ipython[all]"
pip install bokeh
pip install Flask
pip install sqlalchemy
pip install mysql-python

###############################################################################
# Python 2 nexmo-qa Enviroment                                                #
###############################################################################

echo "------------------------------"
echo "Setting up nexmo-qa virtual environment."

# Create a Python2 nexmoqa environment
mkvirtualenv nexmo-qa
workon nexmo-qa

# Install Python nexmoqa modules
# pip install crypt
# pip install boto3
# pip install botocore
# pip install browsermob-proxy
# pip install confluent_kafka
# pip install couchbase
# pip install fabric
# pip install fasteners
# pip install flask
# pip install google-auth
# pip install google-cloud
# pip install grequests
# pip install lxml
# pip install mysql-connector==2.1.6
# pip install MySQL-python
# pip install pandas
# pip install paramiko
# pip install phonenumbers
# pip install pillow
# pip install pymongo
# pip install pytest
# pip install pytest-xdist
# pip install python-consul
# pip install python-dateutil
# pip install python-jose
# pip install python-magic
# pip install pyvirtualdisplay
# pip install requests
# pip install scipy
# pip install selenium==2.53.1
# pip install socketIO_client
# pip install SpeechRecognition
# pip install sqlparse
# pip install statistics
# pip install Wand
# pip install xlrd
# pip install xmltodict
pip install -r https://gist.githubusercontent.com/sotsugov/4f61c1e61868047894a2fd751280e126/raw/89055dfe85bc1d1a0c2b60e3a267e08455996d31/requirements.txt


###############################################################################
# Python 3 Virtual Enviroment                                                 #
###############################################################################

echo "------------------------------"
echo "Setting up py3-data virtual environment."

# Create a Python3 data environment
mkvirtualenv --python=/usr/local/bin/python3 py3-data
workon py3-data

# Install Python data modules
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install sympy
pip install nose
pip install unittest2
pip install seaborn
pip install scikit-learn
pip install "ipython[all]"
pip install bokeh
pip install Flask
pip install sqlalchemy
pip install mysqlclient

###############################################################################
# Python 3 Deep Learning Virtual Enviroment                                   #
###############################################################################

echo "------------------------------"
echo "Setting up dl virtual environment."

# Create a Python3 data environment
mkvirtualenv --python=/usr/local/bin/python3 dl
workon dl

# Install Python data modules
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install sympy
pip install nose
pip install unittest2
pip install seaborn
pip install scikit-learn
pip install "ipython[all]"
pip install bokeh
pip install Flask
pip install sqlalchemy
pip install mysqlclient
pip install ipython-genutils
pip install jupyter-client
pip install jupyter-console
pip install jupyter-core
pip install keras
pip install moviepy
pip install prompt-toolkit
pip install protobuf
pip install pyyaml
# pip install tensorflow-gpu
pip install tensorflow
pip install theano
pip install tqdm

###############################################################################
# Install IPython Profile
###############################################################################

echo "------------------------------"
echo "Installing IPython Notebook Default Profile"

# Add the IPython profile
mkdir -p ~/.ipython
cp -r init/profile_default/ ~/.ipython/profile_default

echo "------------------------------"
echo "Script completed."
echo "Usage: workon nexmo-qa for Python2"
echo "Usage: workon py2-data for Python2"
echo "Usage: workon py3-data for Python3"
echo "Usage: workon dl for Python3"
