## Enlaces
Los documentos de hipertexto o páginas webs no serían tales si no estuviesen vinculadas unos con otros posibilitando, de esta manera, la navegación entre la abundante y vasta información disponible en internet. La etiqueta HTML que permite estas conexiones se conoce como enlace o _link_. 

### Ejercicio 7
Abrí el editor de texto y transcribí el siguiente código: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 6</title>
    </head>
    <body>
		Si hacés clic <a href="enlace.html">sobre este enlace</a> viajarás hacia otra dimesión. 
    </body>
</html>
```
Guarda el archivo con el nombre `ejercicio6.html`. Ahora, con el editor abierto, creá otro archivo con el siguiente contenido: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 6</title>
    </head>
    <body>
    	<h3>Bienvenido</h3>
		Hola! Soy otra página. 
		Mejor vuelvo a <a  href="ejercicio6.html">la página anterior</a>. 		  Chau! 
    </body>
</html>
```
Guardalo con el nombre `enlace.html`.  Ahora abrí cualquiera de los dos documentos creados con el navegador. 

* Hacé clic sobre el texto color azul repetidas veces ¿Qué ocurre? 

Acabás de crear un enlace o _link_ que, en este caso, comunica dos documentos distintos. Para ello nos hemos valido de la etiqueta `<a></a>` donde en el **atributo href** hemos indicado la página a la cual queremos _que nos lleve el enlace_. 

* Cambiá el valor de `href` por una dirección web. Por ejemplo, `www.google.com`.  Guardá los cambios y abrí el documento con el navegador haciendo clic en el enlace ¿Qué ocurre?