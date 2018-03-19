## Estructura del documento
En los ejercicios siguientes aprenderás cuál es la estructura de un documento HTML y cuáles son las etiquetas básicas que lo componen.


### Ejercicio 1
Abrí el editor de texto y transcribí el siguiente código: 

```html
<!DOCTYPE html>
<html>
    <head>
      <title>Ejercicio 1</title>
    </head>
    <body>
      ¡Hola mundo!
    </body>
</html>
```

Guardalo con el nombre de `ejercicio_01.html`. Luego, abrí el archivo con tu navegador.

####¡Felicitaciones!
En este ejercicio escribimos la estructura básica de un documento HTML.

Ahora respondé las siguientes preguntas: 

1. ¿Qué es lo que ves en el cuerpo de la página? 
2. ¿Qué pasó con la leyenda "Ejercicio 1"?

Como podrás observar, lo que se visualiza en la página es aquello que se encuentra entre las etiquetas `<body></body>`. El texto que aparece en la barra de título de navegador es aquel que escribimos dentro de las etiquetas `<head></head` (particularmente de la etiqueta `<title></title>` que está ubicada dentro de la etiqueta `<head></head>`)

### Ejercicio 2 
Este ejercicio consta de dos partes. En primer lugar, deberás copiar el siguiente código: 

```html
<!DOCTYPE html>
<html>
    <head>
      <title>Ejercicio 2</title>
    </head>
    <body>
      ¡Hola mundo! ¡Esta es mi segunda página!
    </body>
</html>
```
Guarda el archivo con el nombre `ejercicio2.html` y abrilo con el navegador: ¿Observás algo particular? 

Ahora, volvé a abrir el archivo con el editor de texto y agregá los siguientes fragmentos de código: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 2</title>
    </head>
    <body>
      ¡Hola mundo! ¡Esta es mi segunda página!
    </body>
</html>
```
¿Ocurrió algún cambio?

Efectivamente, aunque no se aprecie al observar el documento en el navegador, el **atributo** **_charset_** le indica al navegador el conjunto (o mapa) de caracteres que debe emplear para mostrar la página. En el ejemplo, **UTF-8** permite, entro otros, caracteres propios del idioma español, como como las eñes (ñÑ), signos de exclamación de apertura (¡), etc. Por otro lado, el **atributo _lang_** le indica al navegador que el idioma del documento será el español. 
