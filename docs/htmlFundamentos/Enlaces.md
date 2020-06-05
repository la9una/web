# Enlaces
Los documentos de hipertexto o páginas webs no serían tales si no estuviesen vinculadas unos con otros posibilitando, de esta manera, la navegación entre la abundante y vasta información disponible en internet. La etiqueta HTML que permite estas conexiones se conoce como enlace o _link_. 

## Ejemplo 7
Abrí el editor de texto y transcribí el siguiente código: 

```html linenums="1" hl_lines="9"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejemplo 7</title>
  </head>
  <body>
    <h3>Viajá a otra dimensión!</h3>
    <p>Hacé clic <a href="ejemplo_07_enlace.html">sobre este enlace</a></p>
  </body>
</html>
```

Guarda el archivo con el nombre `ejemplo_07.html`. Ahora, con el editor abierto, creá otro archivo con el siguiente contenido: 

```html linenums="1" hl_lines="9"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejemplo 7</title>
  </head>
  <body>
    <h3>Hola! Soy otra página.</h3>
    <p>Mejor vuelvo a <a  href="ejemplo_07.html">la página anterior</a></p>.
  </body>
</html>
```
Guardalo con el nombre `ejemplo_07_enlace.html`.  Ahora abrí cualquiera de los dos documentos creados con el navegador y hacé clic sobre los enlaces creados para probar su funcionamiento.


!!! info "¿Qué hemos hecho?"
    Hemos creado dos documentos HTML que estan "vinculados" a través de un enlace o _link_. Para ello, usamos la etiqueta `<a></a>` y en el atributo `href`, hemos indicado el documento al cual queremos ir, cada vez que hagamos clic sobre el enlace. 

??? question "¿Cuál es la función del atributo `href`?"
    Indica el documento -o dirección web- a la que apunta un determinado enlace. En el ejemplo usamos enlaces entre documentos, pero podríamos haber colocado una dirección web (como www.google.com) en el valor de `href`. De esta manera, al hacer clic sobre el enlace éste nos dirigiría hacia dicha URL. 