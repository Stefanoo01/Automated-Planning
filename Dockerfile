FROM aiplanning/planutils:latest

# Install solvers and tools
RUN planutils install -y val
RUN planutils install -y ff
RUN planutils install -y metric-ff
RUN planutils install -y enhsp
RUN planutils install -y popf
RUN planutils install -y optic
RUN planutils install -y tfd
RUN planutils install -y downward
RUN planutils install -y panda

# Modify the configuration file to enable hostfs, i.e. use the host file system
RUN perl -pi.bak -e "s/mount hostfs = no/mount hostfs = yes/g" /etc/apptainer/apptainer.conf

RUN apt-get update && apt-get install -y bc

CMD /bin/bash

# To build the docker image
# docker build --rm  --tag myplanutils . --file Dockerfile