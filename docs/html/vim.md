# El editor de textos vim

[VIM](http://www.vim.org/) (del inglés _Vi IMproved_ ó _Vi mejorado_, en español) es un editor de texto basado en terminal creado a partir del editor [vi](https://es.wikipedia.org/wiki/Vi), presente en todos los sistemas UNIX. Dada su naturaleza, al igual que otros editores similares como [nano](nano.md) se gestiona a través del teclado.

El desarrollo de este poderoso editor se remonta al año 1991 y desde aquel entonces no ha cesado de incorporar características. Amado u odiado, este editor [ofrece múltiples opciones](https://es.wikipedia.org/wiki/Vim#Principales_funcionalidades) en una sola herramienta, siendo altamente configurable para adaptarse a distintas necesidades de programadores y profesionales de la informática. 

## Instalación
Para instalar el editor en nuestro sistema, ejecutamos en una terminal: 

```bash
$ sudo apt-get install vim
```

## Modos de operación
A modo de introducción al uso del editor de texto vim, se ofrece esta guía de uso. Para saber más, podés visitar [la documentación oficial](http://vimdoc.sourceforge.net/htmldoc/help.html) del programa. 

Vim es un editor de tipo _modal_. Es decir, soporta varios **modos de operación**:

* normal (o comando)
* inserción
* línea de órdenes (o línea de comandos o Cmdline)
* selección
* visual
* Ex

Los modos **normal**, **inserción** y **línea de órdenes** suelen ser los más utilizados y, por lo mismo, serán los que estudiaremos en esta guía. 


* **Normal (o Comando)**: es el modo principal y siempre se puede acceder a él presionando la tecla `Esc`. Cuando **Vim inicia lo hace en este modo**. En este modo **no podemos editar directamente el texto** sino que lo haremos a través de **comandos** basados en teclas o combinaciones de éstas. 

* **Modo inserción**: para acceder a este modo debemos presionar la tecla `i`. En este modo podremos insertar texto, es decir, **escribir dentro de un archivo** como lo solemos hacer normalmente. 

* **CMD (o CMD)**: para acceder a este modo debemos presionar la tecla `:` y seguidamente, introducir el comando que deseamos ejecutar finalizando con la tecla `Enter`. Es decir, `:comando Enter`. Este modo se utiliza generalmente para guardar y salir del documento, así como para realizar búsquedas complejas y otras operaciones relacionadas con la configuración del programa.


## Abrir un archivo 

Luego de haber instalado VIM podremos abrir una terminal y comenzar a utilizar el editor ejecutando: 

```bash
$ vim
```

Veremos la ventana principal del editor con un archivo vacío listo para usar. 

Si en cambio, quisiéramos abrir un archivo existente, simplemente deberíamos pasarle la ruta hacia el mismo como parámetro: 

```bash
$ vim archivo.txt
```

**No es necesario colocar la extensión del archivo. En el ejemplo se coloca sólo con fines explicativos.**


Antes de seguir, conviene distringuir desde la óptima de Vim a qué llamamos **archivo** y _buffer_: un **archivo** está guardado en el disco rígido mientras que un _buffer_ se guarda en la memoria. 

**Cada vez que Vim abre un archivo en realidad lo que abre es una copia de éste y la guarda momentáneamente en memoria. A ésto es lo que llamamos _buffer_. Sólo cuando guardemos los cambios, la información contenida en el _buffer_ se guardará en el archivo.**



### Abriendo múltiples archivos 

De esta forma podríamos abrir varios archivos de la siguiente manera: 

```bash
$ vim uno.txt dos.txt tres.txt
```

Luego, sólo veremos un archivo abierto en pantalla. El resto de los archivos también fueron abiertos, solo que se encuentran guardados en el _buffer_. 

## Desplazamiento entre archivos o _buffers_
Una vez que abrimos un archivo o _buffer_ podemos desplazarnos dentro de éste de múltiples maneras. A continuación se listan algunas de las acciones posibles junto con sus atajos de teclado. 

### Desplazamiento entre los buffers
| CMD          | Acción                                   |
| ------------ | ---------------------------------------- |
| `:bn`        | Abrir el siguiente buffer disponible.    |
| `:bp`        | Abrir el buffer anterior disponible.     |
| `:bf`        | Abrir el primer buffer disponible.       |
| `:bl`        | Abrir el último buffer de la lista.      |
| `:bd`        | Eliminar buffer  actual de la lista. No elimina el archivo del disco. |
| `:bd buffer` | Eliminar un _buffer_ determinado de la lista. No elimina el archivo del disco. |
| `:ls`        | Lista los buffers abiertos.              |
| `:args`      | Lista los buffers abiertos.              |

### Desplazamiento general
| Normal       | CMD  | Acción                                 |
| ------------ | ---- | -------------------------------------- |
| k (ó ↑)      | -    | Desplazar el cursor hacia arriba       |
| l (ó &rarr;) | -    | Desplazar el cursor hacia la derecha   |
| j (ó &darr;) | -    | Desplazar el cursor hacia abajo        |
| h (ó &larr;) | -    | Desplazar el cursor hacia la izquierda |
| gg           | `:0` | Ir al comienzo del archivo             |
| G            | `:$` | Ir al final del archivo                |
| _n_ G        | `:n` | Ir a la línea _n_ del archivo          |
| Ctrl + f     | -    | Ir a la siguiente página               |
| Ctrl + b     | -    | Ir a la anterior página                |
| {            | -    | Ir al párrafo siguiente                |
| }            | -    | Ir al párrafo anterior                 |


### Desplazamiento entre pantallas
| Normal   | CMD       | Acción                             |
| -------- | --------- | ---------------------------------- |
| -        | `:split`  | Dividir la pantalla horizonalmente |
| -        | `:vsplit` | Dividir la pantalla verticalemnte  |
| Ctrl + w | -         | Navegar entre pantallas divididas  |

### Desplazamiento entre pestañas
| Normal | CMD       | Acción                                   |
| ------ | --------- | ---------------------------------------- |
| -      | `:tabe`   | Crear una nueva pestaña vacía            |
| -      | `:tabs`   | Listar pestañas abiertas                 |
| gt     | -         | Ir hacia la siguiente pestaña            |
| gT     | -         | Ir hacia la anterior pestaña             |
| -      | `:tabm n` | Ubicar la pestaña actual en la posición _n_ |

### Desplazamiento entre marcas
| Normal    | Acción                                   |
| --------- | ---------------------------------------- |
| m + (a-z) | Crear una marca y asignarle una letra (entre la a y z) |
| ' + (a-z) | Ir al principio de una línea marcada con la letra (entre a y z) |
| ' + .     | Ir hacia el último cambio realizado en el documento |

## Insertar texto
| Normal | Acción                                   |
| ------ | ---------------------------------------- |
| i      | Insertar texto delante de la posición actual del cursor. |
| a      | Insertar texto detrás de la posición actual del cursor. |
| I      | Insertar texto al comienzo de la línea donde se encuentra el cursor. |
| A      | Insertar texto al final de la línea donde se encuentra el cursor. |
| o      | Crear una nueva línea abajo de la posición actual del cursor. |
| O      | Crear una nueva línea arriba de la posición actual del cursor. |

## Copiar, cortar y pegar texto
| Normal    | Acción                                   |
| --------- | ---------------------------------------- |
| Shift + v | Seleccionar la línea en la que se encuentra el cursor. |
| Ctrl + v  | Iniciar selección desde la posición actual del cursor. Deben utilizarse las teclas de dirección. |
| y         | Copiar selección.                        |
| yy        | Copiar la línea en la que se encuentra el cursor. |
| _n_ yy    | Copiar _n_ líneas desde la ubicación actual del cursor. |
| d         | Cortar selección.                        |
| dd        | Cortar la línea en la que se encuentra el cursor. |
| p         | Pegar el contenido del _buffer_ después de la posición actual del cursor. |
| P         | Pegar el contenido del _buffer_ antes de la posición actual del cursor. |

### Copiar, cortar y pegar texto (avanzado)

| CMD          | Acción                                   |
| ------------ | ---------------------------------------- |
| `:g/algo/t$` | Copiar todas las líneas que contengan la palabra _algo_ al final del archivo. |
| `:g/algo/m$` | Mover todas las líneas que contengan la palabra _algo_ al final del archivo. |
| `:m[+/-]n`   | Mover la línea actual _n_ veces hacia abajo (-) o hacia arriba (+) |

## Eliminar texto 
| Normal | Acción                                   |
| ------ | ---------------------------------------- |
| x      | Eliminar el carácter ubicado en la posición actual del cursor |
| X      | Eliminar el carácter anterior a la posición actual del cursor |
| dd     | Eliminar la línea correspondiente a la posición actual del cursor |
| _n_ dd | Eliminar _n_ líneas después de la posición actual del cursor |
| D      | Eliminar texto desde la ubicación actual del cursor hasta el final de la línea. |
| d$     | Eliminar texto desde la ubicación actual del cursor hasta el final de la línea. |
| dw     | Eliminar la siguiente palabra a partir de la posición actual del cursor. |
| dG     | Eliminar texto desde la posición actual del cursor hasta el final del archivo. |
| dgg    | Eliminar texto desde la posición actual del cursor hasta el principio del archivo. |

### Eliminar texto (Avanzado)
| CMD              | Acción                                   |
| ---------------- | ---------------------------------------- |
| `:g/borrar/d`    | Eliminar todas las líneas que contengan la palabra _borrar_ |
| `:g/^\s*$/d`     | Eliminar todas las líneas vacías o en blanco. |
| `:g/^#/d`        | Eliminar todas las líneas que estén comentadas. |
| `:g!/^#/d`       | Eliminar todas las líneas que no estén comentadas. |
| `:g/^\(#\|$\)/d` | Eliminar todas las líneas que estén comentadas y en blanco. |

## Buscar 
| Comando | Acción                                   |
| ------- | ---------------------------------------- |
| /algo   | Buscar la palabra _algo_ hacia adelante  |
| ?algo   | Buscar la palabra _algo_ hacia atrás     |
| n       | Ir hacia la próxima coincidencia de búsqueda |
| N       | Ir hacia la anterior coincidencia de búsqueda |
| %       | Ir hacia el complementario del paréntesis, llave o corchete actual |

## Reemplazar
| Comando | Acción                                   |
| ------- | ---------------------------------------- |
| cw      | Reemplazar la palabra en la que se encuentra ubicado el cursor. |
| cc      | Reemplazar el texto completo de la línea en la que se encuentra ubicado el cursor. |

### Reemplazar (avanzado)

| CMD                | Acción                                   |
| ------------------ | ---------------------------------------- |
| `:%s/old/new/g`    | Reemplazar _old_ por _new_ en todo el archivo |
| `:s/old/new/g`     | Reemplazar _old_ por _new_ en la línea actual. |
| `:n,m s/old/new/g` | Reemplazar _old_ por _new_ entre las líneas _n_ a _m_. |


## Guardar, descartar cambios y salir 

| Comandos | Acción                              |
| -------- | ----------------------------------- |
| u        | Deshacer el último cambio realizado |
| Ctrl + r | Rehacer el último cambio realizado  |
| ZZ       | Guardar los cambios y salir.        |


| CMD                | Acción                                   |
| ------------------ | ---------------------------------------- |
| `:w`               | Guardar los cambios.                     |
| `:w!`              | Forzar guardar los cambios.              |
| `:w nuevo.txt`     | Guardar el contenido del archivo actual en _nuevo.txt_. |
| `:w! nuevo.txt`    | Forzar guardar el contenido del archivo actual en _nuevo.txt_ sobrescribiéndolo si existe. |
| `:n,m w nuevo.txt` | Guardar el texto comprendido entre las líneas _n_ y _m_ en _nuevo.txt_. |
| `:q`               | Salir.                                   |
| `:q!`              | Forzar salir sin guardar los cambios.    |
| `:wq`              | Guardar los cambios y salir.             |
| `:wq!`             | Forzar guardar los cambios y salir.      |
| `:e nuevo.txt`     | Abrir _nuevo.txt_ sin guardar los cambios en el archivo actual. |
| `:e! nuevo.txt`    | Forzar abrir _nuevo.txt_ sin guardar los cambios en el archivo actual. |
| `:x`               | Guardar los cambios y salir.             |


## Algunos tips
| Comandos | Acción               |
| -------- | -------------------- |
| _<_      | Disminuir tabulación |
| _>_      | Aumentar tabulación  |

| CMD                  | Acción                                   |
| -------------------- | ---------------------------------------- |
| `:set autoindent`    | Sangría automática                       |
| `:set shiftwidth=4`  | Definir cuatro espacios para la sangría  |
| `:syntax on`         | Habilitar resaltado de sintáxis          |
| `set encoding=utf-8` | Encoding UTF8                            |
| `:set number`        | Habilitar numeración de líneas           |
| `:set number!`       | Deshabilitar numeración de líneas        |
| `:set wrap`          | Habiliar el ajuste de líneas.            |
| `:set nowrap`        | Deshabilitar el ajuste de líneas.        |
| `:set hlsearch`      | Habilitar resaltado de coincidencias de búsqueda. |
| `:set nohlsearch`    | Deshabilitar resaltado de coincidencias de búsqueda. |
| `:! comando`         | Ejecutar un _comando_ de Linux sin salir del editor |

_Estas funcionalidades se aplicarán en tiempo real al archivo que tengamos abierto en ese momento, pero se perderán una vez que cerremos el editor. A continuación se explica como guardar permanente nuestras preferencias _


Para establecer la configuración que deseemos de manera permanente tendremos que abrir (o crear, en caso de no existir) el archivo `.vimrc` en la carpeta `home` de nuestro usuario:

```
bash$ cd /home/tuUsuario && vim .vimrc
```
Dentro del archivo en cuestión podremos _setear_ la configuración deseada: 

```vim
" Esquema de colores
colorscheme molokai

" Habilitar el resaltado de sintaxis
syntax on

" Mostrar número de líneas
set number

" Ancho de la sangría (en espacios) al presionar la tecla TAB (por defecto)
set tabstop=4 

" Ancho de la sangría (en espacios) al presionar la tecla TAB
set softtabstop=4

" Ancho de la sangría al presionar las teclas < y > (en Comando)
set shiftwidth=4

" Numero de espacios insertados al presionar la tecla TAB. Depende del valor de shiftwidth
set smarttab

" Inserar espacios en lugar de tabulaciones al presionar la tecla TAB (en modo inserción)
set expandtab

" Sangría automática al comenzar una nueva línea
set autoindent

" Ajustar texto de líneas largas
set linebreak          

```

## Saber más sobre VIM 

Como habrás notado, aventurarse a navegar el universo Vim, supone una **inversión inicial de tiempo y esfuerzo**, puesto que su manejo no se parece en nada a lo que conocemos cuando hablamos de editores de texto. 

_Una vez que hayamos conseguido dominar medianamente la herramienta nos veremos compensados por la **eficiencia y rapidez** con la que realizaremos ciertas tareas en comparación a los editores de texto tradicionales._

La guía ofrecida en este curso intenta ser sólo una pequeña introducción al manejo del editor Vim. No obstante, si deseamos aprender a manejar la herramienta con mayor profundidad podemos consultar el abundante material disponible sobre este programa. He aquí algunos ejemplos: 

### Videos 

* [Curso Vim - Lucas Ontivero](https://www.youtube.com/watch?v=kDkKI2iyPQI&list=PL49B8EC5EEF15885A)
* Curso Vim - Martín Algañaraz: [1](https://www.youtube.com/watch?v=-9xmHw-T_ik), [2](https://www.youtube.com/watch?v=LPcwn09xOFA) y [3](https://www.youtube.com/watch?v=_feT1Zr97EA)
* [VimCasts](http://vimcasts.org/) (en inglés)

### Manuales / Tutoriales

* [Curso de VIM](http://://hipertextual.com/archivo/tag/curso-de-vim/)
* [Manual para empezar a usar Vim](http://://www.emezeta.com/articulos/manual-para-aprender-a-utilizar-vim)
* [Manual de Vim](http://://agcapa.es/manual-de-vim/)
* [Vim en español - ArchWiki](http://s://wiki.archlinux.org/index.php/Vim_%28Espa%C3%B1ol%29)
* [Manual/Tutorial de Vim por Santiago Romero](http://://www.sromero.org/wiki/linux/aplicaciones/manual_vim)
* [Vim AdventuresCurso de Vim por Andre Raso Vázquez](http://s://github.com/AnderRasoVazquez/curso-de-vim)
* [Tutorial de Vi/Vim](http://://www.linuxhispano.net/2011/03/16/tutorial-de-vivim/)

### Libros y apuntes

* [Vim - Referencia rápida](http://://es.tldp.org/Tutoriales/doc-tutorial-vim/Guia-Vim.pdf)
* [Learning Vi and Vim editors (O'Reilly)](http://://pntpm4.ulb.ac.be/pntpm/Files/OReilly.Learning.the.vi.and.Vim.Editors.7th.Edition.Jul.2008.pdf)
* [Vi and Vim editors. Pocket Reference (O'Reilly)](http://://www.doc-developpement-durable.org/file/Projets-informatiques/cours-&-manuels-informatiques/Shell/vi%20and%20Vim%20Editors%20Pocket%20Reference,%202nd%20Edition.pdf)

### Guías interactivas 
* [Open Vim](http://://www.openvim.com/) (en inglés)
* [Vim Adventures](http://://vim-adventures.com/) (en inglés)

