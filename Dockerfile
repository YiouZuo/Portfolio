FROM  python:2.7

# Install apt packages
RUN apt-get update && apt-get install -y \
    python-dev


# Build working directory and install pip requirements
RUN mkdir /home/project
WORKDIR /home/project
COPY project/requirements.txt /home/project
RUN pip install -r requirements.txt

# Setup jupyter
RUN jt -cellw 1400 -fs 10 -nfs 11 -tfs 11 -T -N -t oceans16
EXPOSE 8888
