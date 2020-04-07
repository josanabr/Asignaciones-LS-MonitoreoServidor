#!/usr/bin/env bash
MEMLINE=$(free | tail -n +2 | head -n 1)
TOTAL=$(echo ${MEMLINE} | awk '{print $2}')
USED=$(echo ${MEMLINE} | awk '{print $3}')
echo $(( ${USED}*100/${TOTAL} ))
