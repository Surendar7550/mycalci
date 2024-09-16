#!/bin/bash

# Variables
REPO_URL="https://github.com/yourusername/mycalci.git"
SOURCE_DIR="mycalci"
INSTALL_DIR="/usr/local/mycalci"

# Fetch the source code
if [ -d "$SOURCE_DIR" ]; then
    echo "Source directory already exists. Pulling latest changes."
    cd $SOURCE_DIR
    git pull
else
    echo "Cloning repository."
    git clone $REPO_URL
    cd $SOURCE_DIR
fi

# Compile the source code
echo "Compiling source code."
make clean
make

# Install the compiled code
echo "Installing."
sudo make install PREFIX=$INSTALL_DIR

# Generate a package (e.g., using tar)
PACKAGE_NAME="mycalci-$(date +%F).tar.gz"
echo "Creating package: $PACKAGE_NAME"
cd $INSTALL_DIR
tar -czvf $PACKAGE_NAME mycalci
