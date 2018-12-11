## Imágenes
Vivimos en la era de la imagen y los sitios webs propagan millones de instantáneas a lo largo y ancho de internet. En estos ejercicios aprenderemos a insertar imágenes en los documentos HTML. 


### Ejercicio 8
Descargá la siguiente imagen: 

![](imgHTMLFundamentos/html5.png)

Luego, abrí el editor de texto y transcribí el siguiente código: 

```html linenums="1" hl_lines="9"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejercicio 8</title>
  </head>
  <body>
    <h3>Este es el ejercicio 8</h3>
    <img src="html5.png" /> 
  </body>
</html>
```

Guarda el archivo con el nombre `ejercicio08.html`. 

> Importante: deberás guardar la imagen en el mismo lugar que `ejercicio08.html`

* Abrí el docuemento con un navegador. ¿Qué observás?

Como habrás notado, la etiqueta `img` se emplea para vincular imágenes al documento. El **atributo src** se emplea para indicar el nombre (y eventualmente la ubicación) de la imagen. 

Si te fijaste bien, la etiqueta se _autocierra_ es decir, no posee una etiqueta para la apertura y otra para el cierre. 

Otra etiqueta que se _autocierra_ es `<br />` conocida como **_breaking rule_**.  Agregala en el documento anterior, según: 

```html linenums="1" hl_lines="9 10 11 12 13"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejercicio 8</title>
  </head>
  <body>
    <h3>Este es el ejercicio 8</h3>
    <br />
    <br />
    <br />
    <br />
    <br />
    <img src="html5.png" /> 
  </body>
</html>
```

* Según tu parecer, ¿cuál es la función de la etiqueta `<br />`?