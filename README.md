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

2. Pulling the image from dockerhub **(easiest)**
```bash
docker pull xchem/strucbio-practical:latest
```

### Option 2: Using an anaconda envrionment
You can also use an anaconda environment, especially if you are having trouble installing docker for any reason.  **(hardest)**
```bash
git clone https://github.com/xchem/strucbio_practical
cd strucbio_practical 
conda env create -f environment.yml
source activate frag-api
```

## Running the environment and launching jupyter
### Docker container
This practical will be run using jupyter notebooks. To ensure we can view the notebooks locally in our browser, we must map port 8888 from the
container to our localhost with ``-p 8888:8888`` when we use ``docker run``. Additionally, we want to run the container interactivley with access
to a bash console. To do this, we specify the ``-i`` flag, and the ``/bin/bash`` shell.  

The command to do this:
```bash
docker run -p 8888:8888 -i -t xchem/strucbio-practical /bin/bash
```

Next, to start the jupyter notebook server from within the container:
```bash
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
```  

This should start the notebook server. There will be a message in the container similar to:
```bash
[I 14:12:29.104 NotebookApp] JupyterLab extension loaded from /opt/conda/lib/python3.8/site-packages/jupyterlab
[I 14:12:29.104 NotebookApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
[I 14:12:29.108 NotebookApp] Serving notebooks from local directory: /strucbio_practical
[I 14:12:29.108 NotebookApp] The Jupyter Notebook is running at:
[I 14:12:29.108 NotebookApp] http://5288af3b4be2:8888/?token=21c4c0ec06b330c582e95425cf74954bf4027a20724dc5dd
[I 14:12:29.108 NotebookApp]  or http://127.0.0.1:8888/?token=21c4c0ec06b330c582e95425cf74954bf4027a20724dc5dd
[I 14:12:29.108 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 14:12:29.114 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/nbserver-14-open.html
    Or copy and paste one of these URLs:
        http://5288af3b4be2:8888/?token=21c4c0ec06b330c582e95425cf74954bf4027a20724dc5dd
     or http://127.0.0.1:8888/?token=21c4c0ec06b330c582e95425cf74954bf4027a20724dc5dd
 ```   
 
 Copy one of the URLs in the output into your browser. You should now see the jupyter home page
 
 ### Anaconda environment
 Launching the jupyter notebook server with anaconda is slighlty less complicated:
 ```bash
 source activate fragalysis-api
 jupyter notebook
 ```
 This should open up the jupyter home page in your default browser
     
    
