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



