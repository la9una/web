# Imágenes
Vivimos en la era de la imagen y los sitios webs propagan millones de instantáneas a lo largo y ancho de internet. En estos ejemplos aprenderemos a insertar imágenes en los documentos HTML. 


### Ejemplo 8

!!! warning "Importante"
    Este ejemplo incluye una [:fontawesome-solid-download:&nbsp;imagen](imgHTMLFundamentos/html5.png). La misma deberá ubicarse en la misma carpeta que el archivo HTML de ejemplo. 

Abrí el editor de texto y transcribí el siguiente código: 

```html linenums="1" hl_lines="9"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejemplo 8</title>
  </head>
  <body>
    <h3>Este es el ejemplo 8</h3>
    <img src="html5.png" /> 
  </body>
</html>
```

Guarda el archivo con el nombre `ejemplo_08.html`. Abrí el docuemento con un navegador.

!!! info "¿Qué hemos hecho?"
    Hemos creado un documento HTML que contiene una imagen.

??? question "¿Cuál es la función del atributo `img`?"
    La etiqueta `img` se emplea para vincular imágenes a un documento HTML

??? question "¿Cuál es la función del atributo `src`?"
    El atributo `src` ó _source_, se emplea para indicar el nombre y la ubicación de un recurso determinado.  


!!! tip "¿Una etiqueta impar?"
    Si observaste bien, habrás notado que la etiqueta `<img src="html5.png" />` se _autocierra_. Ess decir, no posee una etiqueta para la apertura y otra para el cierre (`<img></img>` no existe). 

    Otra etiqueta que se _autocierra_ es `<br />` ó _breaking rule_. Genera saltos de línea. ¡Comprobalo!  Agregala en el documento anterior, según: 

    ```html linenums="1" hl_lines="9 10 11 12 13"
    <!DOCTYPE html>
    <html lang=es>
      <head>
        <meta charset="UTF-8">
        <title>Ejemplo 8</title>
      </head>
      <body>
        <h3>Este es el ejemplo 8</h3>
        <br />
        <br />
        <br />
        <br />
        <br />
        <img src="html5.png" /> 
      </body>
    </html>
    ```

    Sin embargo, no son las únicas etiquetas "auto-cerradas". Existen otras etiquetas "impares", es decir, que no poseen etiqueta de cierre. 