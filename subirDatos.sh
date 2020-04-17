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
. config.cfg
MEM=$(./freeMem.sh)
<COMANDO_PARA_ASIGNAR_A_UNA_VARIABLE_ESPACIO_EN_DISCO>
<COMANDO_PARA_ASIGNAR_A_UNA_VARIABLE_CARGA_DEL_SISTEMA_ULTIMO_MINUTO>
<COMANDO_PARA_ASIGNAR_A_UNA_VARIABLE_CARGA_DEL_SISTEMA_ULTIMOS_CINCO_MINUTOS>
<COMANDO_PARA_ASIGNAR_A_UNA_VARIABLE_CARGA_DEL_SISTEMA_ULTIMOS_QUINCE_MINUTOS>
curl https://api.thingspeak.com/update?api_key=${TSWRITEKEY}\&field1=${MEM}
cd ${CWD}

