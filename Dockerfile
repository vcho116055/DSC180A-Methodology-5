ARG BASE_CONTAINER=ghcr.io/ucsd-ets/datascience-notebook:2023.4-notebook7
FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

USER root

RUN apt-get update && \
    apt-get -y install aria2 nmap traceroute && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER jovyan

RUN pip install --no-cache-dir geopandas babypandas==0.1.5

CMD ["/bin/bash"]
