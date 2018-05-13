## Valores numéricos
Veremos los números utilizados en muchos sitios en unidades CSS. Esta sección trata acerca de los tipos más utilizados de valores numéricos.

## Longitud y tamaño
La especificación CSS utiliza medidas de distancia. Las mismas se definen indicando un valor seguido por una unidad de longitud (px, em, pc, in, mm, etc.). 

```
<longitud><unidad>
```
Al igual que en cualquier dimensión CSS, no debe haber espacio entre la unidad y el número. La unidad de longitud es opcional después del valor 0 (cero).

Muchas propiedades CSS (CSS properties) reciben valores de longitud, como por ejemplo `width`, `margin-top`, y `font-size`.

!!! tip "Valores negativos de longitud"
        Para algunas propiedades, el uso de longitudes negativas es un error de sintaxis, mientras que para algunas propiedades está permitido. 

En cuanto a las unidades, podemos ordenar las mismas en dos grandes grupos: relativas y absolutas. 

### Unidades de longitud relativa
Especifican un tamaño relativo a otra longitud externa. Las unidades relativas son fácilmente escalables.

####Longitudes relativas a la fuente
* ** `em`**
Es el tamaño de fuente del elemento actual (es el ancho de la letra M mayúscula). El tamaño de fuente por defecto que los navegadores usan antes de aplicar CSS es de 16 píxeles, lo que significa que este es el valor asignado por defecto a un elemento (1em). Ojo, los tamaños de fuente de los elementos se heredan de los padres, por lo que si a los padres se les aplica otros tamaños de fuente, la equivalencia en pixel de un `em` puede complicarse. Esta unidad representa el tamaño calculado de fuente (`font-size`) del elemento. Si se usa dentro de la propiedad `font-size`, representa el tamaño de fuente heredado por el elemento.

!!!done "Interfaces escalables con `em`"
        Esta unidad se usa por lo general para crear **interfaces escalables**. Las propiedades CSS `line-height`, `font-size`, `margin-bottom` y `margin-top` generalemente tienen valores expresados en `em`.

* **`ex`**
Esta unidad representa la altura de la `x` de la fuente (`font`) del elemento. En fuentes que incluyen la letra `x`, es generalmente la altura de letras minúsculas en la fuente; `1ex ≈ 0.5em` en muchas fuentes.

* **`ch`**
Esta unidad representa la anchura, o más precisamente, la medida de avance, del glifo `0` (cero, de caracter Unicode U+0030) en la fuente (`font`) del elemento.

* **`rem`**
Funciona igual que em, excepto que esta siempre igualará el tamaño del tamaño de fuente por defecto; los tamaños de fuente heredados no afectan, por lo que parece mejor solución que `em`, rem no funciona en versiones antiguas de Internet Explorer. Esta unidad representa el tamaño (`font-size`) del elemento raíz (p.ej. el tamaño de fuente del elemento `<html>`). Cuando se aplica a `font-size` del elemento raíz, representa su valor inicial.

!!!done "Interfaces escalables con `rem`"
        Esta unidad es práctica para crear interfaces perfectamente escalables. Si no es soportada por los navegadores, se puede recurrir a unidades `em`, aunque estas son ligeramente más complejas.

####Longitudes de porcentaje del viewport
Las longitudes de porcentaje del viewport definen una longitud relativa al tamaño del _viewport_, que es la porción visible del documento. Solamente los navegadores basados en _Gecko_ actualizan los valores del viewport dinámicamente, cuando el tamaño de éste es modificado (al cambiar el tamaño de la ventana en una computadora de escritorio, o al girar el dispositivo, en teléfonos y tablets).

* **`vh`**
1/100 de la altura del viewport.

* **`vw`**
1/100 de la anchura del viewport.

* **`vmin`**
1/100 del valor mínimo entre la altura y anchura del viewport.

* **`vmax`**
1/100 del valor máximo entre la altura y anchura del viewport.

### Unidades de longitud absoluta
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

### Unidades CSS y puntos por pulgada (dots-per-inch)
La unidad `in` no representa una pulgada física en pantalla, sino `96px`. Esto significa que sin importar la densidad de píxeles real en pantalla, se asume que serán 96ppp. En dispositivos con mayor densidad de píxeles, `1in` será menor que una pulgada física. 

Algunos ejemplos específicos:

* `1in` siempre son `96px`
* `3pt` siempre son `4px`
* `25.4mm` siempre son `96px`.

### Ejemplo
**Código HTML**

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="length.css">
</head>
<body>
  <p class="p1">Párrafo 1</p>
  <p class="p2">Párrafo 2</p>
  <p class="p3">Párrafo 3</p>
</body>
</html>
```

**Código CSS**

```css linenums="1"
p {
  margin: 5px;
  padding: 10px;
  border: 2px solid black;
  background-color: cyan;
}

.p1 {
  width: 150px;
  font-size: 18px;
}

.p2{
  width: 250px;
  font-size: 24px;
}

.p3 {
  width: 350px;
  font-size: 30px;
}
```

##Valores sin unidades

En algunas ocasiones encontramos en CSS valores sin unidades — no siempre es un error, de hecho, es algo permitido bajo determinadas circunstancias. Imaginemos que queremos eliminar el margen o el relleno de un elemento, simplemente usaremos el 0, ya que 0 es 0 cualesquiera que fueran las unidades.

```css
margin: 0;
```

###Altura de línea sin unidades

Otro ejemplo es `line-height`, que establece la altura de cada línea de texto en un elemento. Podemos usar unidades para establecer la altura de la línea, pero normalmente es más fácil usar simplemente un valor que actúe como factor multiplicador. Supongamos el siguiente código HTML:

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="length.css">
</head>
<body>
  <p>Hola! Soy un párrafo común y corriente.</p>
</body>
</html>
```


Y el siguiente CSS:

```css linenums="1"
p {
  line-height: 1.5;
}
```

Donde el tamaño de fuente `font-size` son 16px; la altura de linea `1.5` veces esta, o sea `24px`.

###Número de animaciones

Las animaciones CSS nos permiten animar elementos HTML en la página. Veamos un sencillo ejemplo que haga rotar un párrafo cuando pasa el ratón. El HTML:

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="animate.css">
</head>
<body>
  <p>Párrafo animado</p>
</body>
</html>
```

Y el CSS un poco más complicado:

```css linenums="1" hl_lines="22"
@keyframes rotate {
  0% {
    transform: rotate(0deg);
  }

  100% {
    transform: rotate(360deg);
  }
}

p {
  color: red;
  width: 100px;
  font-size: 40px;
  transform-origin: center;
}

p:hover {
  animation-name: rotate;
  animation-duration: 0.6s;
  animation-timing-function: linear;
  animation-iteration-count: 5;
}
```

Hemos usado funciones (que no se explican acá) pero la que nos interesa es la línea `animation-iteration-count: 5;` — que controla el número de veces que ocurrirá la animación cuando se active (el ratón pasa por encima), y esto es un **simple número sin unidades** (un entero o _integer_ en idioma informático).

