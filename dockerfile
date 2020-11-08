FROM ubuntu:18.04

# dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nano \
    cmake \
    git \
    qt5-default \
    sudo \
    omniorb \
    omniidl \
    omniorb-nameserver \
    libomniorb4-dev \
    libprotobuf-dev \
    protobuf-compiler \
    freeglut3-dev \
    libgl1-mesa-dev \
    libglm-dev \
    libglew1.5-dev \
    && apt-get clean

# gear system
RUN cd /home && \
    git clone https://github.com/maracatronics/Armorial-WS.git 

# gear system
RUN cd /home/Armorial-WS && \
    git clone https://github.com/MaracatronicsRobotics/GEARSystem.git && \
    cd GEARSystem && \
    cd trunk && \
    sh build/corba_skeletons.sh && \
    qmake install_path=/usr/lib && \
    make -j4 && \
    sh install.sh 

RUN cd /home/Armorial-WS && \ 
    git clone https://github.com/MaracatronicsRobotics/WRBackbone.git && \
    cd WRBackbone && \
    cd trunk && \
    mkdir build && \
    cd build && \
    qmake .. && \
    make -j4

RUN cd /home/Armorial-WS && \ 
    git clone https://github.com/MaracatronicsRobotics/Armorial-Actuator-VSS.git && \ 
    cd Armorial-Actuator-VSS && \  
    # se lembrar de remover isso dps \/
    # essa eh a branch do Actuator q vcs vao usar!
    git checkout master && \ 
    # se lembrar de remover isso dps /\
    cd actuator && \ 
    mkdir build && cd build && \ 
    qmake .. && \ 
    make -j8

RUN cd /home/Armorial-WS && \ 
    git clone https://github.com/MaracatronicsRobotics/Armorial-Carrero-VSS.git && \ 
    cd Armorial-Carrero-VSS && \ 
    cd Armorial-Carrero-VSS && \ 
    mkdir build && cd build && \ 
    qmake .. && \ 
    make -j8

RUN cd /home/Armorial-WS && \ 
    git clone https://github.com/MaracatronicsRobotics/Armorial-VSS.git && \ 
    cd Armorial-VSS && \ 
    # se lembrar de remover isso dps \/
    # essa eh a branch do Armorial-VSS q vcs vao usar!
    git checkout amistoso2 && \ 
    # se lembrar de remover isso dps /\
    cd vss && \ 
    mkdir build && cd build && \ 
    qmake .. && \ 
    make -j8

WORKDIR ./home/Armorial-WS/
