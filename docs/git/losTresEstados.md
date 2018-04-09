Git tiene tres estados principales en los que se pueden encontrar tus archivos:

1. Modificado (**modified**), significa que has modificado el archivo pero todavía no lo has confirmado a tu base de datos.
2. Preparado (**staged**), significa que has marcado un archivo modificado en su versión actual para que vaya en tu próxima confirmación.
3. Confirmado (**committed**), significa que los datos están almacenados de manera segura en tu base de datos local.

Esto nos lleva a las tres secciones principales de un proyecto de Git: 

![Secciones de Git](imgGit/areas.png)
_Directorio de trabajo, área de almacenamiento, y el directorio Git._

1. El directorio de trabajo (**Working directory**) es una copia de una versión del proyecto. Estos archivos se sacan de la base de datos comprimida en el directorio de Git, y se colocan en disco para que los puedas usar o modificar.
2. El área de preparación (**Staging area**) es un archivo, generalmente contenido en tu directorio de Git, que almacena información acerca de lo que va a ir en tu próxima confirmación. A veces se le denomina índice (“index”), pero se está convirtiendo en estándar el referirse a ella como el área de preparación.
3. El directorio de Git (**Git directory**) es donde se almacenan los metadatos y la base de datos de objetos para tu proyecto. Es la parte más importante de Git, y es lo que se copia cuando clonas un repositorio desde otra computadora.

Resumiendo: 

| Secciones             | Estado de los archivos | Descripción                              |
| --------------------- | ---------------------- | ---------------------------------------- |
| Directorio de trabajo | Modificado             | Archivos modificados                     |
| Área de preparación   | Preparado              | Archivos modificados que están listos para formar parte del repositorio |
| Directorio Git        | Confirmado             | Archivos que forman parte del repositorio |

El **flujo de trabajo** básico en Git es algo así:

1. Modificas una serie de archivos en tu directorio de trabajo.
2. Preparas los archivos, añadiéndolos a tu área de preparación.
3. Confirmas los cambios, lo que toma los archivos tal y como están en el área de preparación y almacena esa copia instantánea de manera permanente en tu directorio de Git.

Si una versión concreta de un archivo está en el directorio de Git, se considera confirmada (**committed**). Si ha sufrido cambios desde que se obtuvo del repositorio, pero ha sido añadida al área de preparación, está preparada (**staged**). Y si ha sufrido cambios desde que se obtuvo del repositorio, pero no se ha preparado, está modificada (**modified**). 


![Flujo de trabajo local en Git](imgGit/gitFlujoTrabajoLocal.png)