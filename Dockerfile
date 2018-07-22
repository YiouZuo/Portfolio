FROM  python:2.7

# Install apt packages
RUN apt-get update && apt-get install -y \
    python-dev

# Install IRIS and Basemap
FROM continuumio/miniconda3
RUN conda install basemap
RUN conda install --yes -c conda-forge iris

# Build working directory and install pip requirements
RUN mkdir /home/project
WORKDIR /home/project
COPY project/requirements.txt /home/project
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Setup jupyter
RUN jt -cellw 1400 -fs 10 -nfs 11 -tfs 11 -T -N -t oceans16
EXPOSE 8888

