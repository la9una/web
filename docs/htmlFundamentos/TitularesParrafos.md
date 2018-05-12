## Titulares y párrafos
Comenzamos a clasificar el texto de una página, colocando títulos y separándolo en párrafos. 

### Ejercicio 3 
Abrí el editor de texto y copiá el siguiente código: 

```html linenums="1" hl_lines="8 9 10 11 12 13"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejercicio 3</title>
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
Guarda el archivo con el nombre `ejercicio03.html` y abrilo con el navegador. 

¿Qué función cumplen las etiquetas `h1` a `h6`? 

### Ejercicio 4 
Abrí el editor de texto y copiá el siguiente código: 

```html linenums="1" hl_lines="8 9"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejercicio 4</title>
  </head>
  <body>
    Esta es una línea de texto. 
    Esta es otra línea de texto. ¿Se ubicará debajo de la primera?
  </body>
</html>
```
Guarda el archivo con el nombre `ejercicio04.html` y abrilo con el navegador. 

1. ¿Cómo se visualizan ambas líneas de texto?
2. Ahora, volvé a abrir el archivo con el editor de texto e ingresá entre ambas líneas de texto varios espacios en blanco (presionando la tecla Enter). Guardá el archivo y abrilo con el navegador ¿Ahora, como se visualizan las líneas de texto? ¿A qué conclusión llegás?
3. Por útimo, volvé a abrir el archivo con el editor de texto y escribí: 

```html linenums="1" hl_lines="8 9"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejercicio 4</title>
  </head>
  <body>
    <p>Esta es una línea de texto.</p>
    <p>Esta es otra línea de texto. Se ubicará debajo de la primera?</p>
	</body>
</html>
```
4. ¿Observás algún cambio?

Como habrás podido observar, las línea inferior se muetra ahora en un "nuevo renglón". Esto fue posible gracias a la **etiqueta párrafo** (`<p></p>`) que encierra el texto de un párrafo determinado. 