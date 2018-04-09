## Deshaciendo cosas en Git
En cualquier momento puedes querer deshacer algo. En esta sección veremos algunas herramientas básicas para deshacer cambios.


### Deshacer el commit perdiendo las modificaciones
Supongamos que queremos deshacer el último commit. En este caso, queremos desechar los cambios introducidos en ese commit. Para ello, ejecutamos el comando:

```bash
git reset --hard HEAD~1
```

La sintaxis `HEAD~1` del comando anterior la podríamos traducir como “El commit al que está apuntando la rama activa menos uno”. Si hubiésemos ejecutado el comando:

```bash
git reset --hard HEAD~3
```
en lugar de deshacer el último commit deshaceríamos tres commits hacia atrás.

### Deshacer el commit manteniendo las modificaciones

Existe la posibilidad de eliminar el commit pero manteniendo las modificaciones que contiene ese commit en el área de trabajo. Para ello, ejecutaríamos el siguiente comando:

```bash
git reset HEAD~1
```
Así que podemos seguir trabajando, corregir el bug o completar las modificaciones que habíamos dejado incompletas y hacer un nuevo commit con los cambios completos. ¡Así de fácil!

## Base de conocimiento
* [http://aprendegit.com/como-deshacer-el-ultimo-commit-en-git](http://aprendegit.com/como-deshacer-el-ultimo-commit-en-git)
* https://pajarokillo.wordpress.com/2015/02/23/deshaciendo-cambios-con-git/
* http://www.7sabores.com/blog/como-revertir-un-push-git
* https://www.atlassian.com/git/tutorials/resetting-checking-out-and-reverting
* https://styde.net/deshaciendo-cosas-en-git/
* https://es.stackoverflow.com/questions/3575/quitar-archivos-a%C3%B1adidos-antes-de-un-commit
* http://rogerdudler.github.io/git-guide/index.es.html
* https://gist.github.com/jelcaf/1404619
* https://es.stackoverflow.com/questions/1458/regresar-un-repositorio-a-un-commit-especifico
* https://loquemeinteresadelared.wordpress.com/2016/03/28/git-cookbook-que-es-el-estado-o-modo-detached-head/#more-877



