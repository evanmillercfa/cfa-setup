#!/usr/bin/env bash

##########################################
# Install python development environment #
##########################################
PYVER="3.7.3" && curl https://www.python.org/ftp/python/$PYVER/python-$PYVER-macosx10.9.pkg --output /tmp/python.pkg && sudo installer -pkg /tmp/python.pkg -target / && PYVER2=`echo "$PYVER" | cut -c1-3`; sudo echo "/Library/Frameworks/Python.framework/Versions/$PYVER2/bin/" | sudo tee -a /etc/paths.d/python-org
rm -f /usr/local/bin/pip
ln -s /usr/local/bin/pip3.7 /usr/local/bin/pip
rm -f /usr/local/bin/python
ln -s /usr/local/bin/python3.7 /usr/local/bin/python
#setup up pip.conf
mkdir -p ~/.pip && touch ~/.pip/pip.conf && cat > ~/.pip/pip.conf <<EOL
[global]
index-url = https://nexus3.ittools.cfahome.com/repository/python-all/simple
trusted-host = nexus3.ittools.cfahome.com
    pypi.org
extra-index-url = http://pypi.org/simple
EOL

#install key python modules, no need for -i now that we have pip.conf setup
pip install awscli cfautils code-warp code-spawn cfn-lint local-pipeline-utils cli-tools-cfa


########################################
# Install secondary python environment #
########################################

# Set PYVER to desired python version
PYVER="3.6.8" && curl https://www.python.org/ftp/python/$PYVER/python-$PYVER-macosx10.9.pkg --output /tmp/python.pkg && sudo installer -pkg /tmp/python.pkg -target / && PYVER2=`echo "$PYVER" | cut -c1-3`; sudo echo "/Library/Frameworks/Python.framework/Versions/$PYVER2/bin/" | sudo tee -a /etc/paths.d/python-org
