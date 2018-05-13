La especificación CSS utiliza medidas de distancia. Las mismas se definen indicando un valor seguido por una unidad de longitud (px, em, pc, in, mm, etc.). 

```
<longitud><unidad>
```
Al igual que en cualquier dimensión CSS, no debe haber espacio entre la unidad y el número. La unidad de longitud es opcional después del valor 0 (cero).

Muchas propiedades CSS (CSS properties) reciben valores de longitud, como por ejemplo `width`, `margin-top`, y `font-size`.

!!! tip "Valores negativos de longitud"
        Para algunas propiedades, el uso de longitudes negativas es un error de sintaxis, mientras que para algunas propiedades está permitido. 

En cuanto a las unidades, podemos ordenar las mismas en dos grandes grupos: relativas y absolutas. 

## Unidades de longitud relativa
Especifican un tamaño relativo a otra longitud externa. Las unidades relativas son fácilmente escalables.

###Longitudes relativas a la fuente
* ** `em`**
Esta unidad representa el tamaño calculado de fuente (`font-size`) del elemento. Si se usa dentro de la propiedad `font-size`, representa el tamaño de fuente heredado por el elemento.

!!!done "Interfaces escalables con `em`"
        Esta unidad se usa por lo general para crear **interfaces escalables**. Las propiedades CSS `line-height`, `font-size`, `margin-bottom` y `margin-top` generalemente tienen valores expresados en `em`.

* **`ex`**
Esta unidad representa la altura de la `x` de la fuente (`font`) del elemento. En fuentes que incluyen la letra `x`, es generalmente la altura de letras minúsculas en la fuente; `1ex ≈ 0.5em` en muchas fuentes.

* **`ch`**
Esta unidad representa la anchura, o más precisamente, la medida de avance, del glifo `0` (cero, de caracter Unicode U+0030) en la fuente (`font`) del elemento.

* **`rem`**
Esta unidad representa el tamaño (`font-size`) del elemento raíz (p.ej. el tamaño de fuente del elemento `<html>`). Cuando se aplica a `font-size` del elemento raíz, representa su valor inicial.

!!!done "Interfaces escalables con `rem`"
        Esta unidad es práctica para crear interfaces perfectamente escalables. Si no es soportada por los navegadores, se puede recurrir a unidades `em`, aunque estas son ligeramente más complejas.

###Longitudes de porcentaje del viewport
Las longitudes de porcentaje del viewport definen una longitud relativa al tamaño del _viewport_, que es la porción visible del documento. Solamente los navegadores basados en _Gecko_ actualizan los valores del viewport dinámicamente, cuando el tamaño de éste es modificado (al cambiar el tamaño de la ventana en una computadora de escritorio, o al girar el dispositivo, en teléfonos y tablets).

* **`vh`**
1/100 de la altura del viewport.

* **`vw`**
1/100 de la anchura del viewport.

* **`vmin`**
1/100 del valor mínimo entre la altura y anchura del viewport.

* **`vmax`**
1/100 del valor máximo entre la altura y anchura del viewport.

## Unidades de longitud absoluta
Consisten en unidades de medida físicas y tienen una relación fija y bien definida unas relativas a otras. Son unidades **no escalables**, a excepción del porcentaje, que estrictamente hablando no sería una unidad absoluta estándar, aunque así es generalmente considerada.

!!!warning "Unidades absolutas y accesibilidad"
        Los usuarios pueden incrementar el tamaño de fuente por razones de accesibilidad. Para permitir interfaces usables sin importar el tamao de fuente, use únicamente unidades de longitud absolutas cuando las características físicas del medio de salida son conocidas, como imágenes de mapa de bits. Al establecer longitudes relacionadas al tamaño de fuente, es preferible usar unidades relativas, como `em` o `rem`.



* **`px`**
Relativa al dispositivo de visualización. Para pantallas, generalmente es el tamaño de un píxel (punto) de la pantalla del dispositivo. Para impresoras y pantallas de muy alta resolución, un píxel CSS implica múltiples píxeles del dispositivo, de modo que el número de píxeles por pulgada se mantenga al rededor de 96.
* ** `mm`**
Un milímetro.
* **`q`**
Un cuarto de milímetro (1/40° de centímetro).
* **`cm`**
Un centímetro (10 milímetros).
* **`in`**
Una pulgada (2.54 centímetros).
* **`pt`**
Un punto (1/72° de pulgada).
* **`pc`**
Una pica (12 puntos).
* **`mozmm`** 
Una unidad experimental que intenta generar exactamente un milímetro, sin importar el tamaño de resolución de la pantalla. Esto raramente será lo que se desea, pero podría ser útil para dispositivos móviles, en particular.

## Unidades CSS y puntos por pulgada (dots-per-inch)
La unidad `in` no representa una pulgada física en pantalla, sino `96px`. Esto significa que sin importar la densidad de píxeles real en pantalla, se asume que serán 96ppp. En dispositivos con mayor densidad de píxeles, `1in` será menor que una pulgada física. 

Algunos ejemplos específicos:

* `1in` siempre son `96px`
* `3pt` siempre son `4px`
* `25.4mm` siempre son `96px`.

_Fuente de conocimiento:_

* [developer.mozilla.org/es](https://developer.mozilla.org/es/docs/Learn/CSS/Introduction_to_CSS/Valores_y_unidades)

* [developer.mozilla.org/es](https://developer.mozilla.org/es/docs/Web/CSS/length#Unidades)
