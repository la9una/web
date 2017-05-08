#El editor de texto nano

En informática, [nano](http://www.nano-editor.org/) (oficialmente GNU nano) es un editor de texto para terminal utilizado en sistemas Unix.

No es tan potente como [vim](vim.md) o [emacs](https://es.wikipedia.org/wiki/Emacs) pero es mucho más fácil de manejar que estos. Así cualquier usuario por poco experimentado que sea es capaz de empezar a usar Nano desde el primer momento gracias a las dos líneas de ayuda que mantiene en su parte inferior.

## Instalación de Nano

El editor viene preinstalado en la mayoría de las distribuciones basadas en Unix. Sin embargo, puede ocurrir que esto no sea así. En ese caso, simplemente debemos abrir una terminal y ejecutar: 

```bash 
$ sudo apt-get install nano
```

## Modo de uso

Para abrir el editor, tendremos que abrir una terminal y escribir el nombre del editor: **nano**

Una vez abierto el editor veremos en la parte inferior algunos atajos de teclado útiles para trabajar: por ejemplo `^X Salir`, donde el símbolo `^` hace referencia la tecla ``Control`` y `X` a la tecla `x`. De esta manera, si deseamos salir del editor deberemos presionar conjuntamente las teclas ``Control``+``x`.


## Abriendo archivos

Para abrir una archivo determinado, tendremos que invocar el editor seguido de la ruta hacia el archivo en cuestión:

```bash 
$ nano archivo.txt
```

Para desactivar el ajuste de línea realizado por el editor. 

```bash 
$ nano -w archivo.txt
```

Abrimos el archivo a la vez que realizamos una copia de seguridad del mismo:

```bash 
$ nano -B archivo.txt
```

## Seleccionar, copiar, cortar y pegar

Para **seleccionar texto** presionamos `Esc`+`a`, y con las **teclas del cursor** abarcamos hasta donde queremos seleccionar. A continuación, dependiendo de lo que queramos hacer:

* Para **copiar** lo seleccionado al _buffer_  `Esc`+`6`
* Para **cortar** lo seleccionado al _buffer_  `Ctrl`+`k`
* Para **pegar** el contenido del _buffer_  `Ctrl`+`u` 

## Atajos de teclado

A continuación se listan algunas combinaciones te tecla útiles: 

| Combinaciones de tecla | Teclas de función | Acción                                   |
| ---------------------- | ----------------- | ---------------------------------------- |
| `Control`+`g`          | `F1`              | Mostrar la ayuda                         |
| `Control`+`x`          | `F2`              | Salir del editor                         |
| `Control`+`o`          | `F3`              | Guardar el archivo actual                |
| `Control`+`j`          | `F4`              | Justificar el párrafo actual             |
| `Control`+`r`          | `F5`              | Insertar otro archivo dentro del actual  |
| `Control`+`w`          | `F6`              | Buscar una cadena o expresión regular    |
| `Control`+`y`          | `F7`              | Ir a la página anterior                  |
| `Control`+`v`          | `F8`              | Ir a la página siguiente                 |
| `Control`+`k`          | `F9`              | Corta la línea actual                    |
| `Control`+`u`          | `F10`             | Pega la línea cortada                    |
| `Control`+`c`          | `F11`             | Mostrar la posición del cursor           |
| `Control`+`t`          | `F12`             | Abrir el corrector ortográfico (si existe) |
| `Control`+`p`          | -                 | Ir una línea hacia arriba                |
| `Control`+`n`          | -                 | Ir una línea hacia abajo                 |
| `Control`+`F`          | -                 | Ir hacia adelante un caracter            |
| `Control`+`b`          | -                 | Ir hacia atrás un caracter               |
| `Control`+`a`          | -                 | Ir al principio de la línea actual       |
| `Control`+`e`          | -                 | Ir al final de la línea actual           |
| `Control`+`i`          | -                 | Insertar tabulación                      |
| `Alt`+`m`              | -                 | Activar o desactivar soporte para ratón  |
| `Alt`+`r`              | -                 | Buscar y reemplazar una cadena por otra  |
| `Alt`+`s`              | -                 | Activar o desactivar desplazamiento suave |

## Activando el resaltado de sintaxis
Podemos colorear el texto para que nos sea más facil visualizar el código en un lenguaje determinado. Nano dispone de coloreado de sintaxis para varios lenguajes. Podemos ver los disponibles ejecutando el siguiente comando: 

```bash 
$ ls /usr/share/nano
```

Para habilitar el resaldado de sintaxis, tendermos que abrir el archivo: 

```bash 
$ sudo nano /etc/nanorc
```

Y a continuación incluir las líneas de código que necesitemos: 

```bash
## Nanorc files
include "/usr/share/nano/nanorc.nanorc"

## Bourne shell scripts
include "/usr/share/nano/sh.nanorc"

## C/C++
include "/usr/share/nano/c.nanorc"

## Cascading Style Sheets
include "/usr/share/nano/css.nanorc"

## Debian files
include "/usr/share/nano/debian.nanorc"

## Gentoo files
include "/usr/share/nano/gentoo.nanorc"

## HTML
include "/usr/share/nano/html.nanorc"

## PHP
include "/usr/share/nano/php.nanorc"

## TCL
include "/usr/share/nano/tcl.nanorc"

## TeX
include "/usr/share/nano/tex.nanorc"
 
## Quoted emails (under e.g. mutt)
include "/usr/share/nano/mutt.nanorc"
 
## Patch files
include "/usr/share/nano/patch.nanorc"
 
## Manpages
include "/usr/share/nano/man.nanorc"
 
## Groff
include "/usr/share/nano/groff.nanorc"
 
## Perl
include "/usr/share/nano/perl.nanorc"
 
## Python
include "/usr/share/nano/python.nanorc"
 
## Ruby
include "/usr/share/nano/ruby.nanorc"
 
## Java
include "/usr/share/nano/java.nanorc"
 
## Assembler
include "/usr/share/nano/asm.nanorc"
 
## POV-Ray
include "/usr/share/nano/pov.nanorc"
```
