# VSS-Docker

## Installation

See [this](https://docs.docker.com/engine/install/ubuntu/#installation-methods) link to install docker on your computer and clone this repository.

## Running
First, build the docker

```
sudo sh dockerbuild.sh
```

After this, run it

```
sudo sh dockerrun.sh
```

Now, run the `suassuna.sh` to run all softwares

```
# sudo sh suassuna.sh ip-actuator ip-multicast teamColor port-actuator port-vision port-referee port-replacer
sudo sh suassuna.sh 127.0.0.1 224.5.23.2 yellow 20011 10002 10003 10004
```
