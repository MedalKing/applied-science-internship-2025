#!/bin/bash

# Create the Miniconda directory
mkdir -p ~/miniconda3

# Download the Miniconda installer
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh

# Run the Miniconda installer silently
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3

# Remove the installer to save space
rm ~/miniconda3/miniconda.sh

# Initialize Conda
source ~/miniconda3/bin/activate
conda init --all

# Create Conda environment from environment.yml
conda env create --file environment.yml