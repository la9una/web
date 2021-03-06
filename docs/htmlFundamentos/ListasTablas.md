# Listas y tablas
En los ejemplos anteriores aprendimos como jerarquizar y organizar el texto. En ocasiones nos encontraremos ante la necesidad de presentar información de una manera ordenada y de rápida lectura. Para ello existen las listas y tablas. 

### Ejemplo 5

Abrí el editor de texto y copiá el siguiente código: 

```html linenums="1" hl_lines="7 8 9 10 11 12 13 14 15 16 17 18"
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejemplo 5</title>
  </head>
  <body>
    <ul>
      <li>Cuaderno</li>
      <li>Lapicera</li>
      <li>Goma</li>
      <li>Pendrive</li>
    </ul>
    <ol>
      <li>Bebe</li>
      <li>Niño</li>
      <li>Adolescente</li>
      <li>Joven</li>
    </ol>
  </body>
</html>
```

Guarda el archivo con el nombre `ejemplo_05.html` y abrilo con el navegador. 

!!! info "¿Qué hemos hecho?"
    Hemos creado un documento HTML que incluye listas ordenadas y listas desordenadas. 

??? question "¿Cuál es la función de las etiquetas `ol`, `ul` y `li`?"
    Son las etiquetas que definen listas en un documento HTML: 

      * `ol` --> _Ordered List_ ó listas ordenadas, organiza los _ítems_ con una sucesión numérica (1, 2, 3, etc.).  
      * `ul` --> _Unordered List_ ó listas desordenadas, muestra los _ítems_ con viñetas.
      * `li` --> _List_ ó ítems, que indica los elementos que conforman la lista, tanto en listas ordenadas como desordenadas. 

### Ejemplo 6
Abrí el editor de texto y transcribí el siguiente código: 

```html linenums="1" hl_lines="7 8 9 10 11 12 13 14 15 16 17 18"
<!DOCTYPE html>
<html>
  <head>
    <title>Ejemplo 8</title>
  </head>
  <body>
    <table>
      <tr>
        <th>Fila 1 Columna 1</th>
        <th>Fila 1 Columna 2</th>
      </tr>
      <tr>
        <td>Fila 2 Columna 1</td>
        <td>Fila 2 Columna 2</td>
      </tr>
    </table>
  </body>
</html>
```

Guardalo con el nombre de `ejemplo_06.html`. Luego, abrí el archivo con tu navegador.

!!! info "¿Qué hemos hecho?"
    Hemos creado un documento HTML con una tabla que contiene dos filas y dos columnas. Las tablas son útiles para organizar información dentro de un documento.  
    
??? question "¿Cuál es la función de las etiquetas `table`, `tr`, `td` y `th`?"
    Son las etiquetas que definen a una tabla en un documento HTML: 

      * La etiqueta`table` determina el comienzo y final de una tabla.  
      * La etiqueta `tr` representa a las columnas de una tabla.
      * La etiqueta `td` representa a las filas de una tabla. 
      * La etiqueta `th` representa a las filas de una tabla, pero a diferencia de `td`, representa un encabezado de tabla . 

!!! tip "Atributos de tabla"
    Podemos agregar algunos atributos a una tabla para visualizarla mejor. Por ejemplo, incliur el atributo `border` para visualizar los bordes de tabla o `cellpadding`, para agregar espaciado interno en las celdas:   

    ```html linenums="1" hl_lines="7"
    <!DOCTYPE html>
    <html>
      <head>
        <title>Ejemplo 8</title>
      </head>
      <body>
        <table border="1" cellpadding="7">
          <tr>
            <th>Fila 1 Columna 1</th>
            <th>Fila 1 Columna 2</th>
            <th>Fila 1 Columna 3</th>
          </tr>
          <tr>
            <td>Fila 2 Columna 1</td>
            <td>Fila 2 Columna 2</td>
            <td>Fila 2 Columna 3</td>
          </tr>
        </table>
      </body>
    </html>
    ```
    Existen más características para explorar sobre la etiqueta `table`. Si deseás saber más, podés hacer clic [sobre este enlace](https://developer.mozilla.org/es/docs/Web/HTML/Elemento/table).


    !!! warning "Aspecto visual de la tabla"
        En ejemplos anteriores, mostramos algunos atributos de tabla que nos ayudaron a mejorar su "presentación visual". Aunque este procedimiento es totalmente válido -para éste y otros elementos- se acostumbra a "estilizar" los elementos HTML empleando pura y exclusivamente [CSS](https://es.wikipedia.org/wiki/Hoja_de_estilos_en_cascada), reservando el lenguaje de marcado HTML sólo para estructurar el documento.  