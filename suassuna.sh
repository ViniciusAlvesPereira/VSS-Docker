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

# $1 = ip-actuator
# $2 = ip-multicast
# $3 = teamColor
# $4 = port-actuator
# $5 = port-vision
# $6 = port-referee
# $7 = port-replacer

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
