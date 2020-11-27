FROM continuumio/anaconda3
COPY . /strucbio_practical
WORKDIR /strucbio_practical
SHELL ["/bin/bash", "--login", "-c"]
RUN apt-get update -y
RUN apt-get install -y build-essential python-dev python-pmw libglew-dev freeglut3-dev libpng-dev libfreetype6-dev libxml2-dev libmsgpack-dev python-pyqt5.qtopengl libglm-dev libnetcdf-dev
RUN apt-get install -y git-all
RUN conda env create -f environment.yml
RUN conda init bash
RUN echo "conda activate frag-api" > ~/.bashrc

