FROM xchem/strucbio-practical:latest

RUN chmod 777 /opt/conda/envs/frag-api/
SHELL ["/bin/bash", "-c"]
ARG NB_USER=joyvan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

# Make sure the contents of our repo are in ${HOME}
ADD entrypoint.sh .
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
RUN echo "source activate frag-api" > ${HOME}/.bashrc
RUN chmod 777 > ${HOME}/.bashrc
#RUN echo /home/${NB_USER}/entrypoint.sh

#CMD conda run -n frag-api /bin/bash -c "$@" 


#ENTRYPOINT ${HOME}/entrypoint.sh
#CMD source activate frag-api; jupyter notebook --ip 0.0.0.0
