FROM xchem/strucbio-practical:latest

RUN chmod 777 /opt/conda/envs/frag-api/
ARG NB_USER=joyvan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
SHELL ["/bin/bash", "-c"]
ENV SHELL /bin/bash
RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    --shell /bin/bash \
    ${NB_USER}

# Make sure the contents of our repo are in ${HOME}
ADD entrypoint.sh .
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
#RUN conda init bash; . ${HOME}/.bashrc
RUN echo "source activate frag-api" > ${HOME}/.bashrc
RUN chmod 777 ${HOME}/.bashrc
#RUN echo /home/${NB_USER}/entrypoint.sh

#CMD conda run -n frag-api /bin/bash -c "$@" 


#ENTRYPOINT ${HOME}/entrypoint.sh
#CMD source activate frag-api; jupyter notebook --ip 0.0.0.0
