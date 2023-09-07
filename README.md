# Base de Datos de la Fórmula 1

Este repositorio contiene los archivos necesarios para crear y gestionar una base de datos relacionada con la Fórmula 1.

![XPB_66767_HiRes-1](https://github.com/chiinwy/f1_database/assets/137778612/7626d85b-b0ed-4f6f-9605-a1bac062ae84)

## Descripción

La base de datos de la Fórmula 1 contiene información detallada sobre los pilotos, equipos, circuitos, temporadas, carreras y resultados de la Fórmula 1. Se utiliza para almacenar y gestionar datos históricos, como pilotos, escuderías, campeonatos ganados, podios, vueltas rápidas entre otras muchas cosas.

## Estructura de la Base de Datos

La base de datos está diseñada utilizando el lenguaje SQL y se compone de algunas de las siguientes tablas:

<img width="713" alt="erd" src="https://github.com/chiinwy/f1_database/assets/137778612/22d064e7-4294-4560-8543-410ce3d05792">

- Pilotos: información sobre los pilotos, como nombre, nacionalidad, fecha de nacimiento, etc.
- Equipos: información sobre los equipos, como nombre, nacionalidad, etc.
- Carreras: información sobre las carreras, como ubicación, fecha, nombre del circuito, etc.
- Resultados: información sobre los resultados de cada carrera normal o carrera al sprint, incluyendo posición, tiempo, número de vueltas, etc.
- Clasificación: resultados de cada piloto y las vueltas mas rápidas.
- Temporadas: Información de cada temporada con un enlace a wikipedia con dicha información.
- Circuitos: Información sobre las carreras que se han disputado en dicho circuito y las fechas de cada una de ellas.

## Requisitos

- MySQL: el sistema de gestión de bases de datos utilizado en este proyecto.
- Archivo SQL: el archivo de script SQL para crear la base de datos y las tablas.
- PowerBi: visualización y presentación de los circuitos.

## Instrucciones de Uso

1. Clona o descarga este repositorio en tu máquina local.
2. Asegúrate de tener MySQL instalado y en funcionamiento en tu máquina.
3. Abre una conexión a tu servidor de MySQL mediante una herramienta de gestión de bases de datos.
4. Ejecuta el script SQL proporcionado en el repositorio para crear la base de datos y las tablas.
5. ¡Listo! Ahora puedes comenzar a utilizar la base de datos de la Fórmula 1 para almacenar y consultar información relacionada con la Fórmula 1.

## Contribuciones

Las contribuciones son bienvenidas. Si deseas agregar más funcionalidades, mejorar el diseño de la base de datos o corregir algún error, siéntete libre de hacer un pull request.

## Licencia

Este proyecto está bajo la Licencia MIT. Si utilizas o te basas en este proyecto, se agradece un reconocimiento.

## Futuros añadidos

- Visualización de los equipos y pilotos y de cada una de las temporadas
- Actualizar la iformación con los datos de las carreras que se van disputando la presente temporada
