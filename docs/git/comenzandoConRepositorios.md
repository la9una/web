## Creando un repositorio git
En este apartado, crearemos un repositorio compartido en la red local. Listamos los pasos del procedimiento: 

### En el servidor [remoto]
Para comenzar un repositorio vacío tendremos que seguir los siguientes pasos: 

#### 1. Nos dirigimos a nuestro directorio home 
```bash
cd
```
#### 2. Creamos la carpeta que alojará el repositorio
Creamos el directorio: 

```bash
mkdir miRepositorio.git
```
E ingresamos en él:

```bash
cd miRepositorio.git
```
#### 3. Inicializamos un repositorio vacío

```bash
git init --bare
```

#### 4. Permitimos que el repositorio sea compartido
```bash
git config core.sharedRepository true
```

### En el cliente [local]
Tendremos que crear una carpeta con nuestros archivos y luego, permitir que git administre los cambios realizados en los mismos

#### 1. Nos dirigimos a nuestro directorio home 
```bash
cd
```
#### 2. Creamos la carpeta donde alojaremos nuestro proyecto
```bash
mkdir miProyectoDeSoftware
```
Y luego nos introducimos en ella: 

```bash
cd miProyectoDeSoftware
```
#### 3. Inicializamos un repositorio git
```bash
git init
```
#### 4. Agregamos archivos a nuestro directorio
Simplemente eso. Introducimos en la carpeta local todos los archivos que forman parte de nuestro proyecto: páginas webs, imágenes, bloques de código, etc. 

#### 5. Preparamos los cambios
Enviándolos al _Index_ o _Stage area_:

```bash
git add .
```
#### 5. Enviamos los cambios al HEAD
Lo haremos con un _commit_:

```bash
git commit -m "Mensaje que explica el cambio realizado"
```

#### 6. Vinculamos el repositorio local con el repositorio remoto
```bash
git remote add origin usuario@192.168.0.200:/home/usuario/miRepositorio.git
```
Donde tendremos que reemplazar `usuario` por nuestro nombre de usuario en el servidor y `192.168.0.200` por la dirección IP de nuestro servidor. Por último tendremos que cambiar `/home/usuario/miRepositorio.git` por la ruta de donde se ubica nuestro repositorio en el servidor.

#### 7. Sincronizamos nuestros archivos
Para que los cambios realizados en los archivos de manera local se sincronicen con el servidor remoto tendremos que ejecutar: 

```bash
git push origin master
```

!!!done "Ramas"
		 Las ramas son caminos que puede tomar el desarrollo de un software, algo que ocurre naturalmente para resolver problemas o crear nuevas funcionalidades. En la práctica permiten que nuestro proyecto pueda tener diversos estados y que los desarrolladores sean capaces de pasar de uno a otro de una manera ágil. Cuando inicializamos un proyecto con Git automáticamente nos encontramos en una rama a la que se denomina "master". 

## Clonando un repositorio git existente
Si deseas obtener una copia de un repositorio Git existente — por ejemplo, un proyecto en el que te gustaría contribuir — el comando que necesitas es `git clone`:


```bash
git clone git+ssh://usuario@192.168.0.200:/home/usuario/miRepositorio.git
```
Donde tendremos que reemplazar `usuario` por nuestro nombre de usuario en el servidor y `192.168.0.200` por la dirección IP de nuestro servidor. Por último tendremos que cambiar `/home/usuario/miRepositorio.git` por la ruta de donde se ubica nuestro repositorio en el servidor.

!!!done "Protocolos compatibles con Git"
		Git permite usar distintos protocolos de transferencia: https://, git:// o el protocolo de transferencia SSH.

Si el proyecto está alojado en un dominio en particular, ejecutamos: 

```bash
git clone https://dominio.com/proyecto
```

Esto crea un directorio llamado `proyecto`, inicializa un directorio `git` en su interior, descarga toda la información de ese repositorio y saca una copia de trabajo de la última versión.

Si deseamos clonar un repositorio en una carpeta que contenga un nombre distinto al del repositorio original: 

```bash
git clone https://dominio.com/proyecto miProyecto
```

Ese comando creará el directorio de destino llamado `miProyecto`.

!!!done "Directorio oculto .git"
        En el repositorio existe un directorio oculto llamado `.git` el cual contiene todos los archivos necesarios para el correcto funcionamiento de Git. 