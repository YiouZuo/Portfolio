# Install miniconda for packages not available in pip
# I'm not pinning any version for miniconda here because the latest (as of 2018.7.25) version doesn't match any of the tags
FROM continuumio/miniconda
RUN mkdir /home/project
WORKDIR /home/project
RUN conda install -c anaconda basemap
RUN conda install -c conda-forge iris

# install scandir here to avoid gcc error from pip install: https://github.com/ContinuumIO/docker-images/pull/69
RUN conda install -c conda-forge scandir

# Install apt packages
RUN apt-get update && apt-get install -y \
    python-dev
COPY projects/requirements.txt /home/project
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Setup jupyter
RUN jt -cellw 1400 -fs 10 -nfs 11 -tfs 11 -T -N -t oceans16
EXPOSE 8888
