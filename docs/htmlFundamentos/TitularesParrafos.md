Comenzamos a jerarquizar el texto de una página, colocando títulos y separándolo en párrafos. 

### Ejemplo 3 
Abrí el editor de texto y copiá el siguiente código: 

```html linenums="1" hl_lines="8 9 10 11 12 13"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejemplo 3</title>
  </head>
  <body>
    <h1>Hola mundo!</h1>
    <h2>Hola mundo!</h2>
    <h3>Hola mundo!</h3>
    <h4>Hola mundo!</h4>
    <h5>Hola mundo!</h5>
    <h6>Hola mundo!</h6>
  </body>
</html>
```

Guarda el archivo con el nombre `ejemplo_03.html` y abrilo con el navegador.

!!! info "¿Qué hemos hecho?"
    Hemos creado un documento HTML con diversos tipos de títulos. 

??? question "¿Qué función cumplen las etiquetas `h1` a `h6`?"
    Nos proporcionan un medio para escribir titulares con distintos tamaños o importancia. De mayor (`h1`) a menor tamaño (`h6`) . 

### Ejemplo 4 

Abrí el editor de texto y copiá el siguiente código:

```html linenums="1" hl_lines="8 9"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejemplo 4</title>
  </head>
  <body>
    Esta es una línea de texto. 
    Esta es otra línea de texto. ¿Se ubicará debajo de la primera?
  </body>
</html>
```

Guarda el archivo con el nombre `ejemplo_04.html` y abrilo con el navegador.

!!! info "¿Qué hemos hecho?"
    Hemos creado un documento HTML con dos línas de texto, una debajo de la otra. 

??? question "¿Cómo se visualizan las líneas de texto que escribimos?"
    Se muestran una al lado de la otra, en un mismo "renglón" a pesar de haber sido escritas una debajo de la otra. 

Ahora, volvé a abrir el archivo con el editor de texto y realizá las siguientes modificaciones: 

```html linenums="1" hl_lines="8 9"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejemplo 4</title>
  </head>
  <body>
    <p>Esta es una línea de texto.</p>
    <p>Esta es otra línea de texto. Se ubicará debajo de la primera?</p>
	</body>
</html>
```

??? question "¿Cuál es la función de la etiqueta `p`?"
    El texto encerrado entre la etiqueta `<p></p>` forma un párrafo. Es decir, un bloque de texto que se diferencia del resto por un "punto y aparte". 
    
    Como habrás podido observar, la línea inferior se muetra ahora en un "nuevo renglón".