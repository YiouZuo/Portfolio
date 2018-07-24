# Install IRIS and Basemap
FROM continuumio/miniconda
RUN mkdir /home/project
WORKDIR /home/project
RUN conda install -c anaconda basemap
RUN conda install -c conda-forge iris
# Install scandir
RUN conda install -c conda-forge scandir

# Install apt packages
RUN apt-get update && apt-get install -y \
    python-dev
COPY project/requirements.txt /home/project
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Setup jupyter
RUN jt -cellw 1400 -fs 10 -nfs 11 -tfs 11 -T -N -t oceans16
EXPOSE 8888
