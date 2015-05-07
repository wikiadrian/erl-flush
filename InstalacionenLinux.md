# Instalación del Framework en el sistema operativo Linux

## Instalación en Linux ##

Este documento describe la instalación del framework erl-flush en un sistema operativo linux.


## Instalacion ##

Teniendo un sistema operativo linux, la isntalación es muy sencilla.

Pasos a seguir
  1. Instalaciones necesarias:
    * Erlang: El lenguaje de programacion Erlang se puede bajar de la siguiente liga http://www.erlang.org/ siguiendo los pasos ahi descritos.
    * Eunit: Utilizado para las pruebas de unidad. Se recomienda bajar de la siguiente liga http://webcem01.cem.itesm.mx:8005/s200813/tc2012/eunit.zip
  1. Descargar Erl-Flush:
    * Descarga el .zip con el framework de la siguiente liga http://erl-flush.googlecode.com/files/erl-flush.zip
    * Descomprime los archivos y coloca la carpeta en el lugar que desees (Se recomienda una lugar facil de accesar y recordar).
  1. Modificar la configuracion del servidor:
    * Abre el archivo llamado **server\_config.dat** que se encuentra en la carpeta _erl-flush/servidor_ .
    * En el archivo server\_config.dat cambia las variables de ambiente de acuerdo a la ubicacion que le diste a erl-flush. Sobreescribe las siguientes rutas: carpeta principal, carpeta de **views** y **ctrl**. Si se requiere se puede cambiar el número de puerto.
  1. Correr el servidor:
    * Compila el proyecto abriendo el shell, colocate en la carpeta de _erl-flush_ y ejecuta **$make**. Las pruebas de unidad deben de fallar.
    * Abre otra ventana de shell, colocate en la carpeta de erl-flush, escribe **$erl** (para ejecutar la consola de erlang) y adentro de erlang teclea **1>server:inicio().** esto hara que el servidor se ejecute.
    * Vuelve a ejecutar el **$make** en el shell anterior, esta vez el todas las pruebas deben de ser exitosas.

Y listo! Ya tienes Erl-Flush en tu computadora.