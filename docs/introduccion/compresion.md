# Métodos de compresión y descompresión en Linux

A continuación se listan las herramientas de compresión de línea de comandos más utilizadas en el universo GNU/Linux y el Open Source en general. 

##Archivos .tar

Para poder **empaquetar archivos .tar**, utilizamos el siguiente comando:

```bash
tar -cvf archivo.tar /directorio/a/comprimir/
```
Donde:

| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -c       | Indica a tar que cree un archivo         |
| -v       | Indica a tar exhiba en pantalla las acciones realizadas |
| -f       | Indica a tar que el siguiente argumento es el nombre del archivo.tar |

Para poder **desempaquetar  archivos .tar**, utilizamos el siguiente comando:

```bash
tar -xvf archivo.tar
```
Donde:

| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -x       | Indica a tar que descomprima el archivo.tar |
| -v       | Indica a tar exhiba en pantalla las acciones realizadas |
| -f       | Indica a tar que el siguiente argumento es el nombre del archivo.tar |

Si se quiere **ver el contenido de un archivo .tar** (sin abrirlo), se utiliza el siguiente comando:

```bash
tar -tf archivo.tar
```
Donde:

| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -t       | Lista el contenido del archivo.tar       |
| -f       | Indica a tar que el siguiente argumento es el nombre del archivo.tar |


##Archivos .gz

Para **comprimir archivos en formato .gz**, se utiliza el siguiente comando:

```bash
gzip -9 archivo
```
Donde:

| Opciones | Descripción                              |
| -------- | ---------------------------------------- |
| -9       | Le indica a gz que utilice el mayor factor de compresión posible |
| -f       | Indica a tar que el siguiente argumento es el nombre del archivo.tar |

Para **descomprimir archivos .gz**, se utilizara el siguiente comando:

```bash
gzip -d archivo.gz
```
Donde:

| Opciones | Descripción          |
| -------- | -------------------- |
| -d       | Indica descompresión |


##Archivos .bz2

Para **comprimir archivos en formato .bz2**, se utiliza el siguiente comando:

```bash
bzip2 archivo
```
Para **descomprimir archivos .bz2**, se usa el comando siguiente:

```bash
bzip2 -d archivo.bz2
```
Donde:

| Opciones | Descripción          |
| -------- | -------------------- |
| -d       | Indica descompresión |

>Nota: Tanto el compresor gzip como bzip2, solo comprimen archivos, no directorios, para comprimir directorios (carpetas), se debe de usar en combinación con tar.

##Archivos .tar.gz

Para **comprimir archivos en formato tar.gz**, se utiliza el siguiente comando:

```bash
tar -czvf archivo.tar.gz archivos
```
Donde: 

| Opciones | Descripción          |
| -------- | -------------------- |
| -c       | Indica a tar que cree un archivo |
| -z       | Indica que se use el algoritmo de compresión gzip |
| -v       | Indica a tar exhiba en pantalla las acciones realizadas |
| -f       | Indica a tar que el siguiente argumento es el nombre del archivo.tar |

Para **descomprimir archivos con extensión tar.gz**, se usa el siguiente comando:

```bash
tar -xzvf archivo.tar.gz
```

Donde: 

| Opciones | Descripción          |
| -------- | -------------------- |
| -x       | Indica a tar que extraiga el contenido del archivo .tar.gz |
| -z       | Indica a tar que el archivo está comprimido con el algoritmo de compresión gzip |
| -v       | Indica a tar exhiba en pantalla las acciones realizadas |
| -f       | Indica a tar que el siguiente argumento es el nombre del archivo.tar |

Para poder **ver el contenido de un archivo comprimido en .tar.gz** (sin abrirlo), se usa el siguiente comando:

```bash
tar -tzf archivo.tar.gz
```

## Archivos tar.bz2

Para **comprimir archivos tar.bz2**, se utiliza el siguiente comando:

```bash
tar cjvf nombreComprimido.tar.bz2 carpetaAcomprimir
```
Donde: 

| Opciones | Descripción          |
| -------- | -------------------- |
| -c       | Indica a tar que cree un archivo |
| -j       | Indica que se use el algoritmo de compresión bzip2 |
| -v       | Indica a tar exhiba en pantalla las acciones realizadas |
| -f       | Indica a tar que el siguiente argumento es el nombre del archivo.tar |

Para **descomprimir archivos tar.bz2**, se utiliza el siguiente comando:

```bash
tar xjvf nombreComprimido.tar.bz2
```
| Opciones | Descripción          |
| -------- | -------------------- |
| -x       | Indica a tar que extraiga el contenido del archivo .tar.bz2|
| -j       | Indica a tar que el archivo está comprimido con el algoritmo de compresión bzip2 |
| -v       | Indica a tar exhiba en pantalla las acciones realizadas |
| -f       | Indica a tar que el siguiente argumento es el nombre del archivo.tar |

Y para **ver el contenido de un archivo tar.bz2** (sin abrirlo), se usa el siguiente comando:

```bash
bzip2 -dc archivo.tar.bz2 | tar -t
```

##Archivos .zip

Para poder **comprimir en formato zip**, se usara el comando siguiente:

```bash
zip archivo.zip archivoAcomprimir
```
Para poder **descomprimir los archivos zip**, se usa el siguiente comando:
```bash
unzip archivo.zip
```
Para** ver el contenido de un archivo zip** (sin abrirlo), se pone el siguiente comando:
```bash
unzip -v archivo.zip
```
##Archivos .rar

Para **comprimir en formato rar**, se usara el siguiente comando:

```bash
rar -a archivo.rar archivos
```
Para **descomprimir archivos en formato rar**, se utiliza el siguiente comando:

```bash
unrar -x archivo.rar
```
Para **ver el contenido de un archivo rar** (sin abrirlo), se usa el siguiente comando:

```bash
unrar -v archivo.rar
```
O bien, 

```bash
unrar -l archivo.rar
```


