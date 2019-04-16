La propiedad **`position`** de CSS especifica como se posicionara este en el documento. las propiedades `top`, `right`, `bottom`, y `left` determinan la localizacion final de los elementos posicionados.

Un elemento posicionado es un elemento cuyo valor de `position` es `relative`, `absolute`, `fixed`, o `sticky`. (En otras palabras, cualquiera excepto `static`.)

### static
Es el valor que toma un elemento **por defecto** para posicionarse. Con este valor, el elemento respetará el flujo normal de la página, es decir, se posicionará en el lugar que le corresponde y **no tendrá en cuenta** los valores para las propiedades `top`, `left`, `right` y `bottom`.

### relative

Mediante este valor podemos **posicionar un elemento respecto al flujo normal de la página**. Se podría decir que estamos posicionando un elemento tomando como referencia el flujo normal (la posición por defecto) de dicho elemento.

Podremos usar `top`, `left`, `right` y `bottom` para posicionar nuestro elemento tomando como referencia la posición por defecto del elemento. 

### absolute

Este valor también aceptará los valores `top`, `left`, `right` y `bottom`. El elemento con `position: absolute` **no estará dentro del flujo normal de la página y tomará como referencia la ventana del navegador o el elemento posicionado más cercano** si es padre del elemento que queremos posicionar (dicho elemento "más cercano" deberá tener cualquier valor de `position` excepto `static`).

### fixed

Los elementos a los cuales se les posiciona con `position: fixed` **también están fuera del flujo normal de la página**. Sin embargo, **no se debe de confundir con los elementos que están posicionados con `position: absolute`**.

A diferencia de estos últimos, los elementos con `position: fixed` **toman como referencia la ventana del navegador y no respetan el tener un contenedor padre que esté posicionado**. Además, al hacer _scroll_ en la página, el elemento que esté posicionado como `position: fixed` seguirá en la misma posición respecto a la ventana del navegador aunque el _scroll_ haya desplazado la página hacia abajo.

### sticky

Este es un valor que es nuevo relativamente para esta propiedad.

Usando este valor, el elemento actúa como si estuviera posicionado con el valor `relative` hasta que se alcanza un umbral de desplazamiento (en el propio elemento o en el elemento padre), con el cual el elemento pasa a posicionarse como si estuviera posicionado con el valor `fixed`. 

_Fuente:_ 

* _[StackOverflow](https://es.stackoverflow.com/questions/37930/cual-es-la-diferencia-entre-position-relative-position-absolute-y-position)_

* _[Mozilla Developer Network](https://developer.mozilla.org/es/docs/Web/CSS/position)_
