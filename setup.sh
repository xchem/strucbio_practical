#!/bin/bash

# 1 - install fragalysis-api
#conda create -n frag-api anaconda -y
#conda init bash
#conda activate frag-api
conda install -c conda-forge rdkit -y

# Install our-bespoke version of gemmi # Required
git clone https://github.com/xchem/gemmi_pandda.git
cd gemmi_pannda/
pip install -U --force-reinstall .
cd ..

# Also Required
git clone https://github.com/xchem/pandda_gemmi.git
cd pandda_gemmi/
pip install -e .
cd ..

# Finally install the api
git clone https://github.com/xchem/fragalysis-api.git
git pull origin map-alignment
cd fragalysis-api/
pip install -e .
cd ..
