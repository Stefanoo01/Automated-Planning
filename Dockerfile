FROM aiplanning/planutils:latest

# Install system tools
RUN apt-get update && apt-get install -y \
    bc \
    git \
    cmake \
    build-essential \
    bison \
    flex \
    wget \
    patch \
    && rm -rf /var/lib/apt/lists/*

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

# Install and build Lilotane
RUN git clone https://github.com/domschrei/lilotane.git /opt/lilotane

WORKDIR /opt/lilotane

# Fix missing includes for newer GCC versions
RUN sed -i '/#include <algorithm>/a #include <limits>' src/util/robin_hood.h && \
    sed -i '/#include "algo\/plan_writer.h"/a #include <optional>' src/algo/planner.h && \
    sed -i '/#include <vector>/a #include <cstddef>' src/sat/binary_amo.h

RUN mkdir -p build && \
    cd build && \
    cmake .. -DCMAKE_BUILD_TYPE=RELEASE -DIPASIRSOLVER=glucose4 && \
    make

# Make Lilotane executable globally available
RUN ln -s /opt/lilotane/build/lilotane /usr/local/bin/lilotane

# Modify the configuration file to enable hostfs, i.e. use the host file system
RUN perl -pi.bak -e "s/mount hostfs = no/mount hostfs = yes/g" /etc/apptainer/apptainer.conf

WORKDIR /project

CMD /bin/bash