# Cubist Mirror Docker Container
# Alexander Ecker, Leon Gatys & Matthias Bethge
# 2017-02-22

FROM bethgelab/jupyter-torch:cuda8.0-cudnn5
MAINTAINER Alexander Ecker <alex@deepart.io>

RUN /usr/local/torch/install/bin/luarocks install camera
RUN /usr/local/torch/install/bin/luarocks install qtlua

RUN apt-get update
RUN apt-get install -y cheese

RUN apt-get install -y gfortran swig rcconf dialog

RUN export LIBRARY_PATH=/usr/local/lib:/usr/lib/gcc/x86_64-linux-gnu/4.8:$LIBRARY_PATH
RUN cd /tmp && \
    git clone git://github.com/xianyi/OpenBLAS
RUN cd /tmp/OpenBLAS && \
    make FC=gfortran USE_OPENMP=1 OMP_NUM_THREADS=4 && \
    make PREFIX=/usr/local/ install

RUN /usr/local/torch/install/bin/luarocks --server=https://raw.github.com/torch/rocks/master install torch
 
RUN echo "chmod 666 /dev/video0" >> /usr/local/bin/startup

WORKDIR /


