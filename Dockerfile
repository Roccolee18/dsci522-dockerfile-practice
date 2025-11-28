FROM continuumio/miniconda3

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

# No need for conda-lock, just use conda directly
RUN conda create -n myenv --file /tmp/conda-linux-64.lock -y