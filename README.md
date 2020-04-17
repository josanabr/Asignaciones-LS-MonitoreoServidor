# README.md

Este repositorio contiene los scripts que se necesitan para tomar datos de un servidor y subirlos a ThingSpeak.

Como parte de su tarea usted debe hacer lo siguiente:

* En la sección [Scripts de monitoreo](#scripts-de-monitoreo) adicionar los nombres de los scripts que usted creó para monitorear el espacio en disco y la carga del sistema.

* En la sección [Script para subir datos](#script-para-subir-datos) se encuentra una referencia al script [`subirDatos.sh`](subirDatos.sh) el cual usted debe modificar de la siguiente manera:

  * En la línea 17 colocar la instrucción en Bash que ejecuta el script que calcula el espacio en disco y guarda el valor en una variable de Bash.
  * En la línea 18 colocar la instrucción en Bash que ejecuta el script que calcula la carga del sistema en el último minuto y guarda el valor en una variable de Bash.
  * En la línea 19 colocar la instrucción en Bash que ejecuta el script que calcula la carga del sistema en los últimos cinco minutos y guarda el valor en una variable de Bash.
  * En la línea 20 colocar la instrucción en Bash que ejecuta el script que calcula la carga del sistema en los últimos quince minutos y guarda el valor en una variable de Bash.
  * Modificar la línea 21, del símbolo `&` a la derecha, de modo que todos los valores que se desean monitorear del servidor se suban a la plataforma ThingSpeak.

## Scripts de monitoreo

* [freeMem.sh](freeMem.sh)
* [Espacio en Disco Duro](<SU_NOMBRE_SCRIPT_AQUI>)
* [Carga del sistema](<SU_NOMBRE_SCRIPT_AQUI>)

## Script para subir datos

* [subirDatos.sh](subirDatos.sh)

