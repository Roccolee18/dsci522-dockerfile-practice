FROM continuumio/miniconda3

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN conda create -n myenv --file /tmp/conda-linux-64.lock -y