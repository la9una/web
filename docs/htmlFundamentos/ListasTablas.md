## Listas y tablas
En los ejercicios anteriores aprendimos como jerarquizar y organizar el texto. En ocasiones nos encontraremos ante la necesidad de presentar información de una manera ordenada y de rápida lectura. Para ello existen las listas y tablas. 

### Ejercicio 5

Abrí el editor de texto y copiá el siguiente código: 

```html
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 5</title>
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

Guarda el archivo con el nombre `ejercicio05.html` y abrilo con el navegador. 

1. ¿Qué estructura se visualiza en la página?
2. ¿Qué diferencia aparecen en ambas estructuras?

Acabá de crear listas. Éstas pueden ser de dos tipos: 

* Listas desordenadas `ul`(**U**nordered **L**ist ) 

* Listas ordenadas `ol` (**O**rdered **L**ist)

3. Intentá identificar cuáles son las listas ordenadas y cuáles las desordenadas. 

En ambos casos, la etiqueta `li` (**Li**st) indica los elemtos que conforman la lista. 

### Ejercicio 6
Abrí el editor de texto y transcribí el siguiente código: 

```html
<!DOCTYPE html>
<html>
    <head>
      <title>Ejercicio 8</title>
    </head>
    <body>
      <table>
      
        <tr>
          <td>Celda 1</td>
          <td>Celda 2</td>
          <td>Celda 3</td>
        </tr>
        
        <tr>
          <td>Celda 4</td>
          <td>Celda 5</td>
          <td>Celda 6</td>
        </tr>
      
      </table>
    </body>
</html>
```

Guardalo con el nombre de `ejercicio06.html`. Luego, abrí el archivo con tu navegador y respondé las siguientes preguntas: 

1. ¿Qué es lo que lo que exhibe el navegador? 
2. Observá las etiquetas y respondé: ¿qué función cumplen las etiquetas `<tr>` y `<td>`

Efectivamente, acabás de crear una tabla, donde las etiquetas **`<tr>` representan a las columnas** y la etiquetas **`<td>` forman las filas** de la tabla. 

¿Que no se aprecia bien la tabla? Probá agregándole un borde, incluyendo el siguiente código dentro de la etiqueta `<table>`, según: 

```html
<!DOCTYPE html>
<html>
    <head>
      <title>Ejercicio 8</title>
    </head>
    <body>
      <table border="1">
      
        <tr>
          <td>Celda 1</td>
          <td>Celda 2</td>
          <td>Celda 3</td>
        </tr>
        
        <tr>
          <td>Celda 4</td>
          <td>Celda 5</td>
          <td>Celda 6</td>
        </tr>
      
      </table>
    </body>
</html>
```