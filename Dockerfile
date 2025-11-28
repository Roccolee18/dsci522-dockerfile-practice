FROM continuumio/miniconda3

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN conda install -c conda-forge conda-lock -y

RUN conda install --file conda-linux-64.lock

