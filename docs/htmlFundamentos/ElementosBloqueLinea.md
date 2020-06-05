# Elementos en bloque y en línea

Las etiquetas HTML pueden agruparse de manera general en elementos en **bloque** y elementos en **línea**. La diferencia fundamental entre éstos dos grupos de elementos es que al emplear los primeros se crea una nueva línea para contenerlos; los elementos en línea, en cambio, conviven en la misma línea con otros elementos presentes en la misma.  

## Ejemplo 11

Copiá el siguiente código y guardalo con el nombre `ejemplo_11.html`:



```html linenums="1" hl_lines="9 10 11 13 14 15"
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Ejemplo 11</title>
    </head>
    <body>
        <!-- Span -->
        <span>Número 1</span>
        <span>Número 2</span>
        <span>Número 3</span>
        <!-- Div -->
        <div>Letra A</div>
        <div>Letra B</div>
        <div>Letra C</div>
    </body>
</html>
```

!!! info "¿Qué hemos hecho?"
    En el ejemplo, hemos empleado dos tipos de etiquetas: `<span>` y `<div>`. Cada etiqueta representa a un tipo de elemento: en línea y en bloque. 
    
    Los elementos en bloque (block) son aquellos que generan un nuevo renglón al ser empleados. Los elementos en línea (inline), en cambio, pueden colocarse uno al lado del otro sin generar un nuevo renglón. 
        
??? question "¿A qué tipo de elemento representa la etiqueta `<span>` y la etiqueta `<div>`?"
    * La estiqueta `<span>` es un ejemplo de elemento __en línea__
    * La etiqueta `<div>` es un ejemplo de elemento __en bloque__

### Saber más

Podés consultar cuáles son los elementos que pertenecen a un grupo y a otro en: 

* [Elementos en bloque](https://developer.mozilla.org/es/docs/Web/HTML/Block-level_elements)
* [Elementos en línea](https://developer.mozilla.org/es/docs/Web/HTML/Elementos_en_l%C3%ADnea)

