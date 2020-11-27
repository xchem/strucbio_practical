# Structural Biology Practical - 4th December 2020

## Links you will need:
Fragalysis: https://fragalysis.diamond.ac.uk   
Fragalysis API: https://github.com/xchem/fragalysis-api

## Requirements
Docker or anaconda

## Install instructions
### Option 1: Using a docker container
To use the python packages required for the practical, and access the material in an isolated environment, you might want to set up a working environment in a 
docker container. To do this, you can either build the container locally using the [Dockerfile](Dockerfile) in this repository (more complicated), or pull
a copy of the image straight from dockerhub.  

1. Building from this repository:
```bash
git clone https://github.com/xchem/strucbio_practical
cd strucbio_practical 
docker build -t strucbio .
```  

2. Pulling the image from dockerhub
```bash
docker pull xchem/strucbio-practical:latest
```

### Option 2: Using an anaconda envrionment
You can also use an anaconda environment, especially if you are having trouble installing docker for any reason. 
```bash
git clone https://github.com/xchem/strucbio_practical
cd strucbio_practical 
conda env create -f environment.yml
source activate frag-api
```
