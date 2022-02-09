# lab04 Diseño de banco de Registro

## Integantes:

Andrés Felipe Torres Patiño
Fabián Santiago Suárez Arévalo

## Video demostración de la implementación:

https://youtu.be/Cbn_iAv8Qcg

OBSERVACIONES: Los registros A y B se actualizan al tiempo.

## Introducción
En la mayoría de operaciones actuales es común almacenar distintas cantidades de datos para posteriormente utilizarlos, sumarlos o aplicarlos para que de esta manera se puedan visualizar a través de una secuencia de almacenamiento de bloque. Lo que se almacenará en este caso serán bits de información que se codificarán de manera que representan un número, esta codificación se representará en el display de la tarjeta dependiendo de la configuración A o B del usuario.

## Descripción del funcionamiento

Se inicia explicando la distribución de los pines dentro del deep switch, para este caso se toman que los cuatro primeros pines corresponden a la dirección donde se quiere almacenar el dato y los cuatro pines de la derecha el valor del dato que se quiere almacenar.

[![deep-switch-8-puertos.png](https://i.postimg.cc/Mp9tmWg5/deep-switch-8-puertos.png)](https://postimg.cc/WdJM2PNq)

La manera en la que se controlarán los valores de entrada "High" y "Low" dentro de la tarqueta será con ayuda de la protobard, al modificar las conexiones de la tensión y mandar respectivamente los puntos a tierra o a la tensión, se controlarán las ordenes que reciban la tarjeta, el reseteo, el almacenamiento, entre otros. A continuación se observará la imagen respectiva de las conexiones hechas en el presente laboratorio:
[![protoboard-y-conexiones.png](https://i.postimg.cc/htMsSSrx/protoboard-y-conexiones.png)](https://postimg.cc/nXjB2fNc)

La coloración de los cables será la siguiente:
- Negro: Dirección del registro número B
- Naranja: Actualizador del registro 
- Blanco: Dirección del registro número A

El algoritmo a seguir para realizar de manera satisfactoria la actualización del registro será:

1) Indicar la dirección del registro intercambiando el pin en la proboard.

2) Indicar la dirección del registro modificando el deep switch de la tarjeta

3) Ingresar el valor del digito que se quiere guardar en las 4 pines de la derecha del deep switch

4) Actualizar el registro con el pin de color naranja en la tarjeta

5) Actualizar el registro en la placa.

A continuación se mostrarán unos datos tanto en el display derecho como en el display derecho:

[![registro-1-display-1.jpg](https://i.postimg.cc/W3M1WcJY/registro-1-display-1.jpg)](https://postimg.cc/N9jtFVDR)

Valor de 1 guardado en posición uno.

[![registro-2-display-1.jpg](https://i.postimg.cc/52Vyz0YY/registro-2-display-1.jpg)](https://postimg.cc/SJgmFmGk)

Valor de 2 guardado en posición dos.

[![registro-A-display-1.jpg](https://i.postimg.cc/t4kqVzGw/registro-A-display-1.jpg)](https://postimg.cc/G4BwWG2x)

Valor de A guardado en posición tres.

A continuación se mostrarán los datos pero ahora actualizados en el display izquierdo:

[![registros-1-display-2.jpg](https://i.postimg.cc/kGgDBhBj/registros-1-display-2.jpg)](https://postimg.cc/njNnW2K7)

Valor de 1 guardado en posición uno.

[![registro-2-display-2.jpg](https://i.postimg.cc/W4sdB3sL/registro-2-display-2.jpg)](https://postimg.cc/WdfprsDX)

Valor de 2 guardado en posición dos.

[![registro-b-display-2.jpg](https://i.postimg.cc/Qx5ksFZH/registro-b-display-2.jpg)](https://postimg.cc/D8vbPyZT)

Valor de b guardado en poosición dos.

Es de vital importancia apreciar que en cada configuración anterior la posición de los pines variará, esto con el proposito de adjuntar diferentes posturas y demostrar la correcta implementación del banco de registros.

## Análisis del código 

Nuestro banco de registro se compone principalmente de 4 archivos, se analizarán los 4 archivos que lo componen a continuación:

En el siguiente archivo se muestra como se incorpora en el display los datos en cuestión, la lectura del orden de los datos de derecha a izquierda 0 a 3 es importante en este caso, posteriormente se define el ciclo que controlará la frecuencia de visualización de este.

[![display.jpg](https://i.postimg.cc/ryrbKGBJ/display.jpg)](https://postimg.cc/0r9Z4S2M)

Display

En la asignación de números se controla la entrada y asignación de los números 0 al 9 A, b, C, E, F. Cada pin tendrá su salida respectiva y se asignará su respectiva codificación

[![BCD-asigniacion-de-numeros.jpg](https://i.postimg.cc/GhbQdkd9/BCD-asigniacion-de-numeros.jpg)](https://postimg.cc/BtwDCP8G)

Asignación de números

Este es el archivo más importante porque es el que modelará el funcionamiento dentro de la tarjeta, un comentario adicional es que el actualizador no está definido para A o B lo que en un caso se nos complicó la salida de datos en el display, lo que se hizo fue definirlo por igual para los dos.

[![banco-de-registro.jpg](https://i.postimg.cc/FzNjF4tw/banco-de-registro.jpg)](https://postimg.cc/gXtw412K)

Banco de registro

Finalmente este archivo compila todos los código anteriores y los coloca en correcto funcionamiento para su modelación.

[![lab4-agrupacion-de-los-archivos-principales.jpg](https://i.postimg.cc/h4NBYtBC/lab4-agrupacion-de-los-archivos-principales.jpg)](https://postimg.cc/Hj0RcHj5)

Compilado de todos los archivos.