Prácticamente todas las acciones que realiza Git se ejecutan de forma local, es decir, en la máquina del cliente. 

Para comenzar a trabajar en un **repositorio local de Git** tenemos, básicamente, dos caminos: 

1. Inicializando un repositorio local a partir de una carpeta existente en nuestra computadora
2. Clonar un repositorio remoto existente 


## 1. Repositorio local desde una carpeta existente
Este caso es válido sea que ya poseemos un proyecto de desarrollo en nuestra computadora contenido en una carpeta o deseamos crear una carpeta e incluir los archivos de nuestro proyecto para luego inicializar un proyecto Git. 

Creamos la carpeta donde alojaremos nuestro proyecto:
```bash
mkdir miProyectoDeSoftware
```
Luego nos introducimos en ella: 

```bash
cd miProyectoDeSoftware
```
E inicializamos un repositorio git:

```bash
git init
```

!!!done "Directorio oculto .git"
        Al inicializar un repositorio se incluye un directorio oculto llamado `.git` el cual contiene todos los archivos necesarios para el correcto funcionamiento de Git. 

Acto seguido **agregamos los archivos de nuestro proyecto** (sitio web, aplicación, etc.) al directorio.

Para comprobar que Git ha detectado los archivos nuevos que hemos incluido ejecutamos: 

```bash
git status
```

Preparamos los cambios realizados en los archivos (se ubicarán entonces en el _staging area_), ejecutando el comando:

```bash
git add .
```

!!!note "Agregando archivos al área de preparación"
		Podemos agregar nuestros archivos al área de preparación o _staging area_ de varias maneras.  

		* De a un archivo: `git add nombreDelArchivo`
		* O todos los archivos de nuestro proyecto: `git add .`


Por último, confirmamos las modificaciones realizadas en los archivos para que éstos pasen a formar parte del repositorio (directorio Git o _HEAD_):

```bash
git commit -m "Mensaje que explica el cambio realizado"
```

A partir de ahora, el repositorio contiene una serie de archivos y la información guardada en la base de datos de Git de forma segura. 

## 2. Repositorio local clonando un repositorio remoto existente
Si deseamos obtener una copia de un repositorio Git existente —por ejemplo, un proyecto en el que te gustaría contribuir— el comando que necesitas es `git clone`. Su sintaxis general es: 

```bash
git clone [url]
```

!!!note "Protocolos compatibles con Git"
		Git permite usar distintos protocolos de transferencia: https://, git:// o el protocolo de transferencia SSH.

### 2.1. Clonando un repositorio remoto existente [SSH]


```bash
git clone git+ssh://usuario@192.168.0.200:/home/usuario/miRepositorio.git
```
Donde:

* `usuario` es el nombre de usuario en el servidor remoto.
* `192.168.0.200` el la dirección IP (o nombre de dominio) del servidor remoto. 
* `/home/usuario/miRepositorio.git` es la ruta donde se ubica el repositorio en el servidor remoto.

### 2.2. Clonando un repositorio remoto existente [HTTPS]

```bash
git clone https://dominio.com/proyecto.git
```
Esto crea un directorio llamado `proyecto`, inicializa un directorio `git` en su interior, descarga toda la información de ese repositorio y saca una copia de trabajo de la última versión.



!!!tip "Clonando repositorios en otros directorios"
		Si deseamos clonar un repositorio en una carpeta que contenga un nombre distinto al del repositorio original: 

		`git clone https://dominio.com/proyecto.git miProyecto`

		Ese comando creará el directorio de destino llamado `miProyecto`.


### 2.3. ¿Que acciones podemos realizar en un repositorio clonado?
Una vez clonado un repositorio remoto **podremos realizar las mismas acciones que si hubiésemos inicializado nuestro propio repositorio local**, a saber: modificar archivos, agregarlos al área de preparación (comando `git add`) y confirmar los cambios realizados (comando `git commit`) entre otras acciones posibles. 


