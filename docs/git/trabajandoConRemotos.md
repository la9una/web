Como se mencionó con anterioridad, la mayoría de las acciones de Git se efectúan de manera local, en la máquina del cliente. Sin embargo, podemos **sincronizar los archivos de nuestro repositorio local con un repositorio remoto**. Para ello debemos agregar la dirección del servidor o ubicación física (si se trata de un repositorio local) del repositorio con el cual deseamos sincronizar nuestro repositorio. 

Podemos encontrarnos frente a dos situaciones: 

a. Hemos creado nuestro **repositorio local "desde cero"** y deseamos vincularlo con un repositorio remoto. En ese caso, necesariamente tendremos que seguir los pasos descriptos en esta guía. 

b. Nos encontramos trabajando localmente sobre un **repositorio que hemos clonado** desde un repositorio remoto. En ese caso, nuestro repositorio local ya poseerá un origen remoto (que será la dirección del repositorio remoto que clonamos en nuestra computadora). No obstante, de manera opcional, podemos agregarle otros origenes remotos con los que deseemos sincronizar, siguiendo los pasos descriptos en esta guía.


## 1. Agregando un origen remoto

Si quisieramos **sincronizar nuestro repositorio local con un repositorio remoto**, primero deberíamos agregar el origen remoto, es decir, la dirección del servidor remoto con el que deseamos sincronizar nuestros archivos. Cabe aclarar que para poder realizar esta acción el administrador del repositorio remoto debe habernos otorgados los permisos correspondientes. 

La sintaxis general para realizar esta acción es: 

```bash
git remote add [nombre] [url]
```
Donde:

* `[nombre]` Es el nombre del origen remoto (comunmente _origin_ aunque puede ser cualquier otro)
* `[url]` Es la dirección URL o ruta hacia el repositorio remoto que deseamos vincular

### 1.1. Agregando repositorio remoto [SSH]
```bash
git remote add origin usuario@192.168.0.200:/home/usuario/miRepositorio.git
```
Donde:

* `usuario` es el nombre de usuario en el servidor remoto.
* `192.168.0.200` es la dirección IP (o nombre de dominio) del servidor remoto. 
* `/home/usuario/miRepositorio.git` es la ruta donde se ubica el repositorio en el servidor remoto.

### 1.2. Agregando repositorio remoto [HTTPS]
```bash
git remote add origin https://github.com/usuario/repositorio.git
```
Donde:

* `https://github.com` el el nombre de dominio del servidor remoto.
* `usuario` es el nombre de usuario en el servidor remoto.
* `repositorio.git` es el nombre repositorio en el servidor remoto.

## 2. Visualizar orígenes remotos
Para ver los remotos que tenemos configurados, debemos ejecutar:

```bash
git remote
```
Dicho comando **mostrará los nombres de cada uno de los remotos que tenemos especificados**. Si hemos clonado un repositorio, deberíamos ver al menos _origin_ (origen, en inglés); este es el nombre que por defecto Git le da al servidor del que has clonado.

También podemos pasar la opción -v, la cual **muestra las URLs que Git ha asociado al nombre del remoto** y que serán usadas al leer y escribir en ese remoto:

```bash
git remote -v
```

Si tenemos más de un origen remoto, el comando los listará todos. 

!!!danger "Remote name already exists"
		Frente a este posible error común, podemos elegir entre las siguiente soluciones: 

		1. [Usando un nuevo nombre para el origen remoto](trabajandoConRemotos/#32-asignando-un-nuevo-nombre-para-un-remoto)
		2. [Renombrando el origen remoto](trabajandoConRemotos/#31-modificando-el-nombre-de-un-remoto)
		3. [Eliminando el origen remoto](trabajandoConRemotos/#4-eliminando-un-origen-remoto)

## 3. Modificando un origen remoto

Podemos modificar tanto el nombre de un remoto (es decir, su alias) así como la dirección URL del mismo. 


### 3.1. Modificando el nombre de un remoto

Si queremos cambiar el nombre de un remoto (alias) tendremos que recurrir al siguiente comando: 

```bash
git remote rename [nombreRemotoViejo] [nombreRemotoNuevo]
```
Por ejemplo, si quisiésemos cambiar el nombre de pb a paul, lo haremos de la siguiente manera: 

```bash
git remote rename pb paul
```
Es importante destacar que al hacer esto también cambiamos el nombre de las ramas remotas. Por lo tanto, lo que antes estaba referenciado como pb/master ahora lo está como paul/master.

!!!done "El nombre _origin_"
		Por defecto, Git emplea el nombre _origin_ para referirse al origen remoto cada vez que clonamos un repositorio. Esto constituye una conveción y, por lo tanto, podemos cambiarlo por otro nombre si así lo deseamos.

### 3.2. Asignando un nuevo nombre para un remoto
Existe otra manera -tal vez menos elegante- de modificar el nombre de un remoto. Teniendo en cuenta que hemos agregado un origen remoto de la siguiente manera: 

```bash
git remote add origin git@github.com:usuario/repositorio.git  
```
Podemos modificar el nombre del remoto por otro: 

```bash
git remote add otroOrigen git@github.com:usuario/repositorio.git  
```

### 3.3. Modificando la URL de un remoto

Otra opción posible es modificar la URL del repositorio remoto según: 

```bash
git remote set-url [nombreRemoto] [nuevaURL]
```
Por ejemplo: 

```bash
git remote set-url origin https://github.com/usuario/repositorio.git
```

## 4. Eliminando un origen remoto
Si por alguna razón queremos eliminar eliminar un remoto -ya sea que hemos cambiado de servidor o no queremos seguir utilizando un mirror, o quizás un colaborador a dejado de trabajar en el proyecto- podemos eliminar el origen remoto ateniéndonos a la siguiente sintaxis del comando:

```bash
git remote rm [nombreRemoto] 
```
Por ejemplo: 

```bash
git remote rm paul
```

## 5. Recibiendo desde nuestros repositorios remotos
Para recuperar datos de tus repositorios remotos podemos ejecutar:

```bash
$ git fetch [nombreRemoto]
```

Este comando recupera todos los datos del proyecto remoto que no tengamos todavía.

Si clonamos un repositorio, el comando añade automáticamente ese repositorio remoto con el nombre de "origin". Por tanto, el comando: 

```bash
git fetch origin
```
Recupera toda la información enviada a ese servidor desde que lo clonamos (o desde la última vez que ejecutamos `fetch`). 

!!!warning "Uso del comando `fetch`"
		Es importante tener en cuenta que el comando `fetch` sólo recupera la información y la pone en nuestro repositorio local. **No la une automáticamente con nuestro trabajo ni modifica aquello en lo que estamos trabajando**. 

Estaremos en condiciones de verificar manualmente las diferencias. Para **fusionar los cambios descargados desde el repositorio remoto con nuestro repositorio local**, deberemos ejecutar: 

```bash
git merge origin/master
```

Existe otra comando que combina, de una vez, las acciones de los comandos `fetch` y `merge`: el comando `pull`: 

```bash
git pull
```

Al ejecutar git pull, por lo general se recupera la información del servidor remoto que clonamos, y automáticamente se intenta unir con el código con el que estamos trabajando actualmente.


![Diferencia entre fetch-merge y pull](imgGit/fetchMergePull2.png)

_Diferencia entre fetch-merge y pull_

## 6. Enviando hacia nuestros repositorios remotos

Cuando tu proyecto se encuentra en un estado que deseamos compartir, tenemos que enviarlo a un repositorio remoto. El comando que nos permite hacer esto es sencillo: 

```bash
git push [nombre-remoto][nombre-rama]
```

Por ejmplo, si queremos enviar nuestra rama maestra (master) a nuestro servidor origen (origin), ejecutaríamos el siguiente comando:

```bash
$ git push origin master
```
!!!warning "Uso del comando `pull`"
		Este comando funciona únicamente si hemos clonado desde un servidor remoto o agregado un origen remoto en el que tengamos permiso de escritura, y nadie ha enviado información mientras tanto. Si nosotros y otra persona clonamos un repositorio a la vez, y otro envía su información y luego enviamos la nuestra, nuestro envío será rechazado. Tendremos que bajarnos primero el trabajo de la otra persona e incorporarlo en el nuestro para que se nos permita hacer un envío. 
		
