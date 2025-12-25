#!/bin/bash
#@Author        <Poner aquí su nombre>
#@Descripción  Realiza la configuración y conexión a la BD Oracle del Lab
#@Fecha        <Poner la fecha>

#Agregar descripción, actualizar la versión, explorar esta carpeta.
#¿Qué es un instant client?
export PATH=/opt/oracle/instantclient_21_8:$PATH

#Agregar descripción,completar el valor
export TNS_ADMIN=

#Agregar descripción, completar el valor
export ORACLE_PATH=

#Agregar descripción, actualizar la versión
export LD_LIBRARY_PATH=/opt/oracle/instantclient_21_8:$LD_LIBRARY_PATH

#Agregar descripción, ¿qué es y para qué sirve un alias?
alias sqlplus='rlwrap sqlplus'

echo "Conectando..."
#Explicar lo que hace este comando, ¿Qué representa la cadena oralab01 ?
sqlplus usuario_lab_<nn>@oralab01