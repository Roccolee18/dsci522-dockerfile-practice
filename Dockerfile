FROM continuumio/miniconda3

COPY conda-lock.yml /tmp/conda-lock.yml

RUN conda install -c conda-forge conda-lock -y

RUN conda-lock install -n myenv conda-lock.yml