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

1

