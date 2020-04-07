#!/usr/bin/env bash
#
# Este script se encarga de subir los datos monitoreados del servidor a la
# plataforma ThingSpeak. Requiere un variable llamada 'TSWRITEKEY' que se
# encuentra definida en 'config.cfg'. Sin embargo, el archivo 'config.cfg' 
# solo se instanciara al momento de desplear los scripts.
#
#
# AUTHOR: John Sanabria - john.sanabria@correounivalle.edu.co
# DATE: 2020-04-07
#
BASEPATH=$(dirname "$(realpath ${0})") 
CWD=$(pwd)
cd ${BASEPATH}
if [ -f config.cfg ]; then
  . config.cfg
fi
MEM=$(./freeMem.sh)
#curl https://api.thingspeak.com/update?api_key=${TSWRITEKEY}\&field1=${MEM}
curl https://api.thingspeak.com/update?api_key=0PE2VXR5ZZB60N0A\&field1=${MEM}
cd ${CWD}

