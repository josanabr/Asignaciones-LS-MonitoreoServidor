#!/usr/bin/env bash
#
# Este script calcula el porcentaje de memoria libre. 
# Usa los comandos 'free' y 'awk'
#
# AUTHOR: John Sanabria - john.sanabria@correounivalle.edu.co
# DATE: 2020-04-07
#
MEMLINE=$(free | tail -n +2 | head -n 1)
TOTAL=$(echo ${MEMLINE} | awk '{print $2}')
USED=$(echo ${MEMLINE} | awk '{print $3}')
echo $(( ${USED}*100/${TOTAL} ))
