#!/usr/bin/env bash
if [ "${1}" == "" ]; then
  echo "Indicar el URL del repositorio a ser recuperado"
  exit 1
fi
git clone ${1}
