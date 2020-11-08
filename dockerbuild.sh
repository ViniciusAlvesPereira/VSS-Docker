xhost +local:docker

docker build . -f dockerfile --no-cache -t maracatronics_vss_larc2020
