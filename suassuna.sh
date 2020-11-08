scriptWD=`pwd`

# how to run
# sudo sh suassuna.sh ip-actuator port-actuator ip-multicast port-vision teamColor port-referee port-replacer

sudo rm -rf /var/lib/omniorb/*
sudo service omniorb4-nameserver restart

sleep 2

cd /home/Armorial-WS/
cd WRBackbone
cd trunk
cd build
cd bin
./WRBackbone &> /dev/null &

sleep 2
cd /home/Armorial-WS/
cd Armorial-Actuator-VSS/actuator/bin
./Armorial-Actuator-VSS $1 $2 &> /dev/null &

sleep 2

cd /home/Armorial-WS/
cd ./Armorial-Carrero-VSS/Armorial-Carrero-VSS/bin
./Armorial-Carrero-VSS $3 $4 &> /dev/null &

sleep 2

cd /home/Armorial-WS/
cd ./Armorial-VSS/
cd ./vss/bin/
./Maracatronics-VSS $5 false $3 $6 $3 $7&> /dev/null &
