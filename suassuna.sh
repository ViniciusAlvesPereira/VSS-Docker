## how to run
# sudo sh suassuna.sh ip-actuator ip-multicast teamColor port-actuator port-vision port-referee port-replacer

scriptWD=`pwd`

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
./Armorial-Actuator-VSS $1 $4 &> /dev/null &

sleep 2

cd /home/Armorial-WS/
cd ./Armorial-Carrero-VSS/Armorial-Carrero-VSS/bin
./Armorial-Carrero-VSS $2 $5 &> /dev/null &

sleep 2

cd /home/Armorial-WS/
cd ./Armorial-VSS/
cd ./vss/bin/
./Maracatronics-VSS $3 false $2 $6 $2 $7&> /dev/null &
