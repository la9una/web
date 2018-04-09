## Elementos en bloque y en línea

Las etiquetas HTML pueden agruparse de manera general en elementos en **bloque** y elementos en **línea**. La diferencia fundamental entre éstos dos grupos de elementos es que al emplear los primeros se crea una nueva línea para contenerlos; los elementos en línea, en cambio, conviven en la misma línea con otros elementos presentes en la misma.  

### Ejercicio 11

Copiá el siguiente código y guardalo con el nombre `ejercicio11.html`:

```html
<!DOCTYPE html>
<html>
    <head> 
      <meta charset="UTF-8">
      <title>Ejercicio 11</title>
    </head>
    <body>
    <span>Número 1</span>
    <span>Número 2</span>
    <span>Número 3</span>
    <div>Letra A</div>
    <div>Letra B</div>
    <div>Letra C</div>
    </body>
</html>
```
1. En el ejemplo, hemos empleado dos tipos de etiquetas: `<span>` y `<div>` ¿Cuál es la diferencia visible entre ellas?

2. Los **elementos en bloque (block)** son aquellos que generan un nuevo renglón al ser empleados. Los elementos que pueden colocarse uno al lado del otro sin generar un nuevo renglón se conocen como **elementos en línea (inline)**. ¿A qué grupo pertenecen las etiquetas `<span>` y `<div>`?.

#### Sabés más

Podés consultar cuáles son los elementos que pertenecen a un grupo y a otro en: 

* [Elementos en bloque](https://developer.mozilla.org/es/docs/Web/HTML/Block-level_elements)
* [Elementos en línea](https://developer.mozilla.org/es/docs/Web/HTML/Elementos_en_l%C3%ADnea)

