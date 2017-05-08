# Manejo básico de archivos y carpetas

Se listan a continuación algunos comandos -los más importantes- para gestionar archivos y carpetas empleando la terminal. Estos comandos aplican a cualquier distribución GNU/Linux



##ls
El comando ls (list) nos permite ver el contenido de los directorios

####Sintaxis
`ls [Opciones] [Directorio/s]`

####Opciones de uso frecuente
| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -l       | Muestra los archivos en forma de columna |
| -a       | Muestra los archivos ocultos que empiezan con . (punto) |
| -R       | Lista recursivamente todos los subdirectorios y archivos |
| -r       | Lista los archivos en orden invertido    |
| -i       | Muestra el número de inodo               |
| -h       | Muestra el espacio ocupado del archivo en Mb, Kb, etc |
| -t       | Ordena por la fecha y hora de modificación |

####Ejemplos
`$ ls -la` 

Lista todos los archivos en forma de columna.

`$ ls -R /home/`

Lista de forma recursiva los directorios, subdirectorios y archivos alojados en /home



##cd
El comando cd (change directory) nos permite navegar entre los directorios del sistema

####Sintaxis
`cd [Opciones] [Ruta destino]`

####Opciones de uso frecuente
| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -        | Nos conduce al último directorio visitado |
| ..       | Sube un nivel en el árbol de directorios |

####Ejemplos
`$ cd -`

Conduce al último directorio visitado.

`$ cd /tmp/`

Conduce al directorio /tmp



##cp
El comando cp (copy) se utiliza para realizar una copia de seguridad de un archivo o bien, para copiar archivos a un directorio determinado

####Sintaxis
`cp [opciones] origen_de_la_copia    destino_de_la_copia` 


####Opciones de uso frecuente
| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -f       | Sobrescribe archivos sin pedir confirmación |
| -i       | Modo interactivo, solicita autorización antes de sobrescribir archivos |
| -p       | Preserva información como propietario, permisos, grupo y fecha al realizar lacopia |
| -r       | Copia recursivamente un directorio con su contenido (también funciona escribiendo -R) |
| -v       | Muestra en pantalla el progreso de la copia |

####Ejemplos
`$ cp /var/log/messages .`

Copia el archivo messages a la ubicación actual

`$ cp -rp dir1/ dir2/` 

Copia el directorio dir1 y su contenido (preservando además, sus atributos) en un nuevo directorio llamado dir2

`$ cp archivo1 archivo2`

Copia el contenido del archivo1 en el archivo2

`$ cp -v archivo1 archivo2 ~`

Copia el archivo1 y el archivo2 (mostrando el progreso de la copia) en el directorio “home” del usuario



##mv
El comando mv (move) se utiliza para mover o renombrar archivos o directorios

####Sintaxis
`mv [opciones] origen   destino` 

####Opciones de uso frecuente
| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -f       | Sobrescribe archivos sin pedir confirmación |
| -i       | Solicita autorización antes de sobrescribir archivos |

####Ejemplos
`$ mv dir1/ dir2/`

Mueve el directorio dir1 dentro del directorio dir2

`$ mv archivo1 archivo2`

Mueve el contenido del archivo1 al archivo2, sobrescribiendo éste último y eliminando el primero



## mkdir
El comando mkdir (make directory) se utiliza para crear uno o más directorios

####Sintaxis
`mkdir [Opciones] Directorio/s`

####Opciones de uso frecuente
| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -p       | Crea un directorio dentro de otro        |
| -m       | Permite asignar permisos al directorio creado |
| -v       | Muestra en pantalla las acciones realizadas |

#### Ejemplos

`$ mkdir dir1 dir2`

Crea los directorios dir1 y dir2 a la vez

`$ mkdir -p dir1/dir2`

Crea el directorio dir2 dentro del directorio dir1



##rmdir
El comando rmdir (remove directory) elimina directorios vacíos.

####Sintaxis
`rmdir [Opciones] Directorio/s` 

####Opciones de uso frecuente
| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -p       | Elimina un directorio y sus subdirectorios sólo si están vacíos |

#### Ejemplos


`$ rmdir directorio1`

Elimina la carpeta vacía llamada directorio1

`$ rmdir ­-p dir1/dir2`

Elimina tanto el directorio dir1 como el directorio dir2, ambos vacíos



##rm

El comando rm (remove) elimina archivos y directorios

#### Sintaxis

`rm [Opciones] directorio/s o archivo/s`


#### Opciones de uso frecuente
| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -i       | Solicita autorización antes de eliminar archivos o directorios |
| -r       | Elimina recursivamente un directorio con su contenido (también funciona escribiendo -R) |
| -f       | Fuerza la iliminación sin solicitar confirmación |

####Ejemplos
`$ rm -rf directorio1`

Elimina el directorio llamado directorio1 sin solicitar confirmación

`$ rm -ri archivo1`

Elimina el archivo llamado archivo1 solicitado confirmación para realizar la acción


