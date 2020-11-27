FROM continuumio/anaconda3
COPY . /strucbio_practical
RUN /app/setup.sh
CMD source activate frag-api
