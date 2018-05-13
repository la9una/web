##Colores

Hay varias formas de referenciar colores en CSS, algunas más recientes que otras. Los mismos valores de color pueden utilizarse en todos los sitios en CSS, si nos referimos a color de texto, de fondo o cualquier otro.

El sistema de color estándar en los ordenadores actuales es el de 24 bits, que permite representar unos 16,7 millones de colores diferentes por canal (256 x 256 x 256 = 16.777.216).

Veamos los valores de los distintos tipos de sistemas de colores.

!!!tip "Conversor online de sistemas de colores"
    Para pasar los valores de unos sistemas de colores a otros, necesitaremos un conversor de colores. Estos son algunos de los conversores disponibles online: 
    
    * [rapidtables.com](https://www.rapidtables.com/convert/color/index.html)
    * [w3schools.com](https://www.w3schools.com/colors/colors_converter.asp)
    * [serennu.com](http://serennu.com/colour/hsltorgb.php)


###Claves

El sistema de color más antiguo y sencillo en CSS son las claves de color. Son cadenas de texto que representan valores de color. Veamos el siguiente código como ejemplo:

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="colorkey.css">
</head>
<body>
  <p>Este párrafo tiene un fondo rojo.</p>
</body>
</html>
```
Y los estilos CSS:

```css linenums="1"
p {
  background-color: red;
}
```

Es fácil de entender, aunque solo nos permite referenciar unos cuantos colores primitivos. Existen alrededor de 165 claves diferentes para su uso en los distintos navegadores [(ver la lista completa de claves de color)](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#Color_keywords).


###Valores hexadecimales

El siguiente sistema de color universal es el sistema hexadecimal, o códigos hex. Cada valor hex está compuesto por una almohadilla (#) seguida por seis números hexadecimales, cada uno de los cuales puede estar comprendido entre el 0 y la f (que representa el 15) — 0123456789abcdef (16 símbolos). Cada par de valores representa uno de los canales primarios — rojo, verde y azul — y nos permite referenciar cualquiera de los 256 valores disponibles para cada uno (16 x 16 = 256). 

Por ejemplo, el código:
```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="colorhex.css">
</head>
<body>
  <p class="rojo">Este párrafo tiene un fondo rojo.</p>
  <p class="azul">Este párrafo tiene un fondo azul.</p>
  <p class="lila">Este párrafo tiene un fondo lila.</p>
</body>
</html>
```
Y los estilos CSS:

```css linenums="1"
/* equivalente a la palabra clave red */
.rojo {
  background-color: #ff0000;
}

/* equivalente a la palabra clave blue */
.azul {
  background-color: #0000ff;
}

/* no posee equivalente de palabra clave */
.lila {
  background-color: #e0b0ff;
}
```
Estos valores son un poco más complejos y difíciles de entender, pero es mucho más versátil que las claves — podemos utilizar valores hex para representar cualquier color que queramos usar en nuestra paleta de colores.

###RGB

El tercer sistema al que vamos a hacer referencia es RGB. Un valor RGB es una función — rgb() — a la que pasamos tres parámetros que representas los colores primarios rojo, verde y azul, parecido al sistema hex. La diferencia radica en que, en lugar de representar cada canal por un par de números, ahora lo hacemos simplemente por un número decimal entre el 0 y el 255.

Reescribamos el ejemplo anterior con el sistema RGB:

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="colorrgb.css">
</head>
<body>
  <p class="rojo">Este párrafo tiene un fondo rojo.</p>
  <p class="azul">Este párrafo tiene un fondo azul.</p>
  <p class="lila">Este párrafo tiene un fondo lila.</p>
</body>
</html>
```
Y el código CSS:

```css linenums="1"
/* equivalente a la palabra clave red */
.rojo {
  background-color: rgb(255,0,0);
}

/* equivalente a la palabra clave blue */
.azul {
  background-color: rgb(0,0,255);
}

/* no posee equivalente de palabra clave */
.lila {
  background-color: rgb(224,176,255);
}
```

El sistema RGB es casi tan soportado como el hexadecimal — probablemente no nos encontremos en nuestro trabajo ningún navegador que no los reconozca ambos.

###HSL

Un poco menos soportado que RGB está el modelo HSL (no en viejas versiones de IE), que fueron implementadas con mucho interés de los diseñadores — en vez de valores rojo, verde y azul, la función hsl() admite los valores tono(hue), saturación y brillo (lightness), para referenciar 16,7 millones de colores, pero de forma diferente:

1. **hue (tono)**: Es el color básico. Toma un valor entre 0-360, como los ángulos de una rueda de color.
2. **saturación**: ¿Cómo está el color de saturado? Con valores entre 0 y 100%, en 0 no hay color (aparece como una sombra gris), y 100% es la saturación total del color.
3. **lightness (brillo)**: Representa la claridad del color. Toma valores entre 0 y 100%, donde 0 es la ausencia de luz (completamente negro) y 100% es el brillo total (completamente blanco).

Reescribamos ahora nuestro ejemplo de nuevo con HSL:

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="colorrgb.css">
</head>
<body>
  <p class="rojo">Este párrafo tiene un fondo rojo.</p>
  <p class="azul">Este párrafo tiene un fondo azul.</p>
  <p class="lila">Este párrafo tiene un fondo lila.</p>
</body>
</html>
```
Y el código CSS:

```css linenums="1"
/* equivalente a la palabra clave red */
.rojo {
  background-color: hsl(0,100%,50%);
}

/* equivalente a la palabra clave blue */
.azul {
  background-color: hsl(240,100%,50%);
}

/* no posee equivalente de palabra clave */
.lila {
  background-color: hsl(276,100%,85%);
}
```
El modelo de colores HSL es intuitivo para los diseñadores acostumbrados a trabajar con estas caracteristicas de color. Es útil, por ejemplo, para representar una paleta de sombras en un sistema monocromático:

```css linenums="1"
/* Tres variaciones de sombra del color rojo */
background-color: hsl(0,100%,50%);
background-color: hsl(0,100%,60%);
background-color: hsl(0,100%,70%);
```

###RGBA y HSLA

RGB y HSL tienen sus correspondientes modos — RGBA and HSLA — que nos permiten representar, no solo el color, sino también la transparencia a representar. Sus funciones correspondientes toman los mismos parámetros, más un cuarto valor entre 0–1 — que establece la transparencia, o el llamado canal alfa. 0 es totalmente transparente y 1 completamente opaco.

Veamos otro rápido ejemplo — primero el HTML:


```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="colortransparent.css">
</head>
<body>
  <p class="rojot">Este párrafo tiene un fondo rojo transparente.</p>
  <p class="azult">Este párrafo tiene un fondo azul transparente.</p>
</body>
</html>
```

Ahora el CSS — aquí, bajamos el primer párrafo con algún posicionamiento, para mostrar el efecto de superposición de los párrafos (aprenderemos más sobre posicionamiento más adelante):

```css linenums="1"
p {
  height: 50px;
  width: 350px;
}

/* Rojo transparente */
.rojot {
  background-color: rgba(255,0,0,0.5);
  position: relative;
  top: 30px;
  left: 50px;
}

/* Azul transparente */
.azult {
  background-color: hsla(240,100%,50%,0.5);
}

```
Los colores transparentes son muy útiles para proporcionar ricos efectos visuales — mezcla de fondos, elementos UI semi-transparentes, etc.

###Opacidad

Existe otra forma de especificar la transparencia vía CSS — la propiedad `opacity`. En lugar de fijar la transparencia de un determinado color, aquí fijamos la transparencia de todos los elementos seleccionados y sus hijos. De nuevo, veamos un ejemplo para estudiar la diferencia:


Código HTML: 
```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="coloropacity.css">
</head>
<body>
  <p class="rojorgba">Párrafo rojo con transparencia RGBA.</p>
  <p class="rojoopacity">Párrafo rojo con transparencia opacity.</p>
</body>
</html>
```
CÓdigo CSS:

```css linenums="1"
/* Rojo con RGBA */
.rojorgba {
  background-color: rgba(255,0,0,0.5);
}

/* Rojo con opacity */
.rojoopacity {
  background-color: rgb(255,0,0);
  opacity: 0.5;
}
```


## Anexo: nombres de colores HTML

[Valores y unidades empleadas para el color en CSS](units.md#colores)

Los siguientes 140 colores son soportados por todos los navegadores actuales. Los mismos están expresados por **su nombre en inglés** así como por su **valor en formato hexadecimal**.

<table>
<tr>
<th>Nombre del color</th>
<th>Valor hexadecimal</th>
<th>Color</th>
</tr>

<tr>
<td>AliceBlue&nbsp;</td>
<td>#F0F8FF</td>
<td style="background-color:#F0F8FF">&nbsp;</td>
</tr>

<tr>
<td>AntiqueWhite&nbsp;</td>
<td>#FAEBD7</td>
<td style="background-color:#FAEBD7">&nbsp;</td>
</tr>

<tr>
<td>Aqua&nbsp;</td>
<td>#00FFFF</td>
<td style="background-color:#00FFFF">&nbsp;</td>
</tr>

<tr>
<td>Aquamarine&nbsp;</td>
<td>#7FFFD4</td>
<td style="background-color:#7FFFD4">&nbsp;</td>
</tr>

<tr>
<td>Azure&nbsp;</td>
<td>#F0FFFF</td>
<td style="background-color:#F0FFFF">&nbsp;</td>
</tr>

<tr>
<td>Beige&nbsp;</td>
<td>#F5F5DC</td>
<td style="background-color:#F5F5DC">&nbsp;</td>
</tr>

<tr>
<td>Bisque&nbsp;</td>
<td>#FFE4C4</td>
<td style="background-color:#FFE4C4">&nbsp;</td>
</tr>

<tr>
<td>Black&nbsp;</td>
<td>#000000</td>
<td style="background-color:#000000">&nbsp;</td>
</tr>

<tr>
<td>BlanchedAlmond&nbsp;</td>
<td>#FFEBCD</td>
<td style="background-color:#FFEBCD">&nbsp;</td>
</tr>

<tr>
<td>Blue&nbsp;</td>
<td>#0000FF</td>
<td style="background-color:#0000FF">&nbsp;</td>
</tr>

<tr>
<td>BlueViolet&nbsp;</td>
<td>#8A2BE2</td>
<td style="background-color:#8A2BE2">&nbsp;</td>
</tr>

<tr>
<td>Brown&nbsp;</td>
<td>#A52A2A</td>
<td style="background-color:#A52A2A">&nbsp;</td>
</tr>

<tr>
<td>BurlyWood&nbsp;</td>
<td>#DEB887</td>
<td style="background-color:#DEB887">&nbsp;</td>
</tr>

<tr>
<td>CadetBlue&nbsp;</td>
<td>#5F9EA0</td>
<td style="background-color:#5F9EA0">&nbsp;</td>
</tr>

<tr>
<td>Chartreuse&nbsp;</td>
<td>#7FFF00</td>
<td style="background-color:#7FFF00">&nbsp;</td>
</tr>

<tr>
<td>Chocolate&nbsp;</td>
<td>#D2691E</td>
<td style="background-color:#D2691E">&nbsp;</td>
</tr>

<tr>
<td>Coral&nbsp;</td>
<td>#FF7F50</td>
<td style="background-color:#FF7F50">&nbsp;</td>
</tr>

<tr>
<td>CornflowerBlue&nbsp;</td>
<td>#6495ED</td>
<td style="background-color:#6495ED">&nbsp;</td>
</tr>

<tr>
<td>Cornsilk&nbsp;</td>
<td>#FFF8DC</td>
<td style="background-color:#FFF8DC">&nbsp;</td>

</tr>

<tr>
<td>Crimson&nbsp;</td>
<td>#DC143C</td>
<td style="background-color:#DC143C">&nbsp;</td>

</tr>

<tr>
<td>Cyan&nbsp;</td>
<td>#00FFFF</td>
<td style="background-color:#00FFFF">&nbsp;</td>
</tr>

<tr>
<td>DarkBlue&nbsp;</td>
<td>#00008B</td>
<td style="background-color:#00008B">&nbsp;</td>
</tr>

<tr>
<td>DarkCyan&nbsp;</td>
<td>#008B8B</td>
<td style="background-color:#008B8B">&nbsp;</td>
</tr>

<tr>
<td>DarkGoldenRod&nbsp;</td>
<td>#B8860B</td>
<td style="background-color:#B8860B">&nbsp;</td>
</tr>

<tr>
<td>DarkGray&nbsp;</td>
<td>#A9A9A9</td>
<td style="background-color:#A9A9A9">&nbsp;</td>
</tr>

<tr>
<td>DarkGrey&nbsp;</td>
<td>#A9A9A9</td>
<td style="background-color:#A9A9A9">&nbsp;</td>
</tr>

<tr>
<td>DarkGreen&nbsp;</td>
<td>#006400</td>
<td style="background-color:#006400">&nbsp;</td>
</tr>

<tr>
<td>DarkKhaki&nbsp;</td>
<td>#BDB76B</td>
<td style="background-color:#BDB76B">&nbsp;</td>
</tr>

<tr>
<td>DarkMagenta&nbsp;</td>
<td>#8B008B</td>
<td style="background-color:#8B008B">&nbsp;</td>
</tr>

<tr>
<td>DarkOliveGreen&nbsp;</td>
<td>#556B2F</td>
<td style="background-color:#556B2F">&nbsp;</td>
</tr>

<tr>
<td>DarkOrange&nbsp;</td>
<td>#FF8C00</td>
<td style="background-color:#FF8C00">&nbsp;</td>
</tr>

<tr>
<td>DarkOrchid&nbsp;</td>
<td>#9932CC</td>
<td style="background-color:#9932CC">&nbsp;</td>
</tr>

<tr>
<td>DarkRed&nbsp;</td>
<td>#8B0000</td>
<td style="background-color:#8B0000">&nbsp;</td>
</tr>

<tr>
<td>DarkSalmon&nbsp;</td>
<td>#E9967A</td>
<td style="background-color:#E9967A">&nbsp;</td>
</tr>

<tr>
<td>DarkSeaGreen&nbsp;</td>
<td>#8FBC8F</td>
<td style="background-color:#8FBC8F">&nbsp;</td>
</tr>

<tr>
<td>DarkSlateBlue&nbsp;</td>
<td>#483D8B</td>
<td style="background-color:#483D8B">&nbsp;</td>
</tr>

<tr>
<td>DarkSlateGray&nbsp;</td>
<td>#2F4F4F</td>
<td style="background-color:#2F4F4F">&nbsp;</td>
</tr>

<tr>
<td>DarkSlateGrey&nbsp;</td>
<td>#2F4F4F</td>
<td style="background-color:#2F4F4F">&nbsp;</td>
</tr>

<tr>
<td>DarkTurquoise&nbsp;</td>
<td>#00CED1</td>
<td style="background-color:#00CED1">&nbsp;</td>
</tr>

<tr>
<td>DarkViolet&nbsp;</td>
<td>#9400D3</td>
<td style="background-color:#9400D3">&nbsp;</td>
</tr>

<tr>
<td>DeepPink&nbsp;</td>
<td>#FF1493</td>
<td style="background-color:#FF1493">&nbsp;</td>
</tr>

<tr>
<td>DeepSkyBlue&nbsp;</td>
<td>#00BFFF</td>
<td style="background-color:#00BFFF">&nbsp;</td>
</tr>

<tr>
<td>DimGray&nbsp;</td>
<td>#696969</td>
<td style="background-color:#696969">&nbsp;</td>
</tr>

<tr>
<td>DimGrey&nbsp;</td>
<td>#696969</td>
<td style="background-color:#696969">&nbsp;</td>
</tr>

<tr>
<td>DodgerBlue&nbsp;</td>
<td>#1E90FF</td>
<td style="background-color:#1E90FF">&nbsp;</td>
</tr>

<tr>
<td>FireBrick&nbsp;</td>
<td>#B22222</td>
<td style="background-color:#B22222">&nbsp;</td>
</tr>

<tr>
<td>FloralWhite&nbsp;</td>
<td>#FFFAF0</td>
<td style="background-color:#FFFAF0">&nbsp;</td>
</tr>

<tr>
<td>ForestGreen&nbsp;</td>
<td>#228B22</td>
<td style="background-color:#228B22">&nbsp;</td>
</tr>

<tr>
<td>Fuchsia&nbsp;</td>
<td>#FF00FF</td>
<td style="background-color:#FF00FF">&nbsp;</td>
</tr>

<tr>
<td>Gainsboro&nbsp;</td>
<td>#DCDCDC</td>
<td style="background-color:#DCDCDC">&nbsp;</td>
</tr>

<tr>
<td>GhostWhite&nbsp;</td>
<td>#F8F8FF</td>
<td style="background-color:#F8F8FF">&nbsp;</td>
</tr>

<tr>
<td>Gold&nbsp;</td>
<td>#FFD700</td>
<td style="background-color:#FFD700">&nbsp;</td>
</tr>

<tr>
<td>GoldenRod&nbsp;</td>
<td>#DAA520</td>
<td style="background-color:#DAA520">&nbsp;</td>
</tr>

<tr>
<td>Gray&nbsp;</td>
<td>#808080</td>
<td style="background-color:#808080">&nbsp;</td>
</tr>

<tr>
<td>Grey&nbsp;</td>
<td>#808080</td>
<td style="background-color:#808080">&nbsp;</td>
</tr>

<tr>
<td>Green&nbsp;</td>
<td>#008000</td>
<td style="background-color:#008000">&nbsp;</td>
</tr>

<tr>
<td>GreenYellow&nbsp;</td>
<td>#ADFF2F</td>
<td style="background-color:#ADFF2F">&nbsp;</td>
</tr>

<tr>
<td>HoneyDew&nbsp;</td>
<td>#F0FFF0</td>
<td style="background-color:#F0FFF0">&nbsp;</td>
</tr>

<tr>
<td>HotPink&nbsp;</td>
<td>#FF69B4</td>
<td style="background-color:#FF69B4">&nbsp;</td>
</tr>

<tr>
<td>IndianRed &nbsp;</td>
<td>#CD5C5C</td>
<td style="background-color:#CD5C5C">&nbsp;</td>
</tr>

<tr>
<td>Indigo  &nbsp;</td>
<td>#4B0082</td>
<td style="background-color:#4B0082">&nbsp;</td>
</tr>

<tr>
<td>Ivory&nbsp;</td>
<td>#FFFFF0</td>
<td style="background-color:#FFFFF0">&nbsp;</td>
</tr>

<tr>
<td>Khaki&nbsp;</td>
<td>#F0E68C</td>
<td style="background-color:#F0E68C">&nbsp;</td>
</tr>

<tr>
<td>Lavender&nbsp;</td>
<td>#E6E6FA</td>
<td style="background-color:#E6E6FA">&nbsp;</td>
</tr>

<tr>
<td>LavenderBlush&nbsp;</td>
<td>#FFF0F5</td>
<td style="background-color:#FFF0F5">&nbsp;</td>
</tr>

<tr>
<td>LawnGreen&nbsp;</td>
<td>#7CFC00</td>
<td style="background-color:#7CFC00">&nbsp;</td>
</tr>

<tr>
<td>LemonChiffon&nbsp;</td>
<td>#FFFACD</td>
<td style="background-color:#FFFACD">&nbsp;</td>
</tr>

<tr>
<td>LightBlue&nbsp;</td>
<td>#ADD8E6</td>
<td style="background-color:#ADD8E6">&nbsp;</td>
</tr>

<tr>
<td>LightCoral&nbsp;</td>
<td>#F08080</td>
<td style="background-color:#F08080">&nbsp;</td>
</tr>

<tr>
<td>LightCyan&nbsp;</td>
<td>#E0FFFF</td>
<td style="background-color:#E0FFFF">&nbsp;</td>
</tr>

<tr>
<td>LightGoldenRodYellow&nbsp;</td>
<td>#FAFAD2</td>
<td style="background-color:#FAFAD2">&nbsp;</td>
</tr>

<tr>
<td>LightGray&nbsp;</td>
<td>#D3D3D3</td>
<td style="background-color:#D3D3D3">&nbsp;</td>
</tr>

<tr>
<td>LightGrey&nbsp;</td>
<td>#D3D3D3</td>
<td style="background-color:#D3D3D3">&nbsp;</td>
</tr>

<tr>
<td>LightGreen&nbsp;</td>
<td>#90EE90</td>
<td style="background-color:#90EE90">&nbsp;</td>
</tr>

<tr>
<td>LightPink&nbsp;</td>
<td>#FFB6C1</td>
<td style="background-color:#FFB6C1">&nbsp;</td>
</tr>

<tr>
<td>LightSalmon&nbsp;</td>
<td>#FFA07A</td>
<td style="background-color:#FFA07A">&nbsp;</td>
</tr>

<tr>
<td>LightSeaGreen&nbsp;</td>
<td>#20B2AA</td>
<td style="background-color:#20B2AA">&nbsp;</td>
</tr>

<tr>
<td>LightSkyBlue&nbsp;</td>
<td>#87CEFA</td>
<td style="background-color:#87CEFA">&nbsp;</td>
</tr>

<tr>
<td>LightSlateGray&nbsp;</td>
<td>#778899</td>
<td style="background-color:#778899">&nbsp;</td>
</tr>

<tr>
<td>LightSlateGrey&nbsp;</td>
<td>#778899</td>
<td style="background-color:#778899">&nbsp;</td>
</tr>

<tr>
<td>LightSteelBlue&nbsp;</td>
<td>#B0C4DE</td>
<td style="background-color:#B0C4DE">&nbsp;</td>
</tr>

<tr>
<td>LightYellow&nbsp;</td>
<td>#FFFFE0</td>
<td style="background-color:#FFFFE0">&nbsp;</td>
</tr>

<tr>
<td>Lime&nbsp;</td>
<td>#00FF00</td>
<td style="background-color:#00FF00">&nbsp;</td>
</tr>

<tr>
<td>LimeGreen&nbsp;</td>
<td>#32CD32</td>
<td style="background-color:#32CD32">&nbsp;</td>
</tr>

<tr>
<td>Linen&nbsp;</td>
<td>#FAF0E6</td>
<td style="background-color:#FAF0E6">&nbsp;</td>
</tr>

<tr>
<td>Magenta&nbsp;</td>
<td>#FF00FF</td>
<td style="background-color:#FF00FF">&nbsp;</td>
</tr>

<tr>
<td>Maroon&nbsp;</td>
<td>#800000</td>
<td style="background-color:#800000">&nbsp;</td>
</tr>

<tr>
<td>MediumAquaMarine&nbsp;</td>
<td>#66CDAA</td>
<td style="background-color:#66CDAA">&nbsp;</td>
</tr>

<tr>
<td>MediumBlue&nbsp;</td>
<td>#0000CD</td>
<td style="background-color:#0000CD">&nbsp;</td>
</tr>

<tr>
<td>MediumOrchid&nbsp;</td>
<td>#BA55D3</td>
<td style="background-color:#BA55D3">&nbsp;</td>
</tr>

<tr>
<td>MediumPurple&nbsp;</td>
<td>#9370DB</td>
<td style="background-color:#9370DB">&nbsp;</td>
</tr>

<tr>
<td>MediumSeaGreen&nbsp;</td>
<td>#3CB371</td>
<td style="background-color:#3CB371">&nbsp;</td>
</tr>

<tr>
<td>MediumSlateBlue&nbsp;</td>
<td>#7B68EE</td>
<td style="background-color:#7B68EE">&nbsp;</td>
</tr>

<tr>
<td>MediumSpringGreen&nbsp;</td>
<td>#00FA9A</td>
<td style="background-color:#00FA9A">&nbsp;</td>
</tr>

<tr>
<td>MediumTurquoise&nbsp;</td>
<td>#48D1CC</td>
<td style="background-color:#48D1CC">&nbsp;</td>
</tr>

<tr>
<td>MediumVioletRed&nbsp;</td>
<td>#C71585</td>
<td style="background-color:#C71585">&nbsp;</td>
</tr>

<tr>
<td>MidnightBlue&nbsp;</td>
<td>#191970</td>
<td style="background-color:#191970">&nbsp;</td>
</tr>

<tr>
<td>MintCream&nbsp;</td>
<td>#F5FFFA</td>
<td style="background-color:#F5FFFA">&nbsp;</td>
</tr>

<tr>
<td>MistyRose&nbsp;</td>
<td>#FFE4E1</td>
<td style="background-color:#FFE4E1">&nbsp;</td>
</tr>

<tr>
<td>Moccasin&nbsp;</td>
<td>#FFE4B5</td>
<td style="background-color:#FFE4B5">&nbsp;</td>
</tr>

<tr>
<td>NavajoWhite&nbsp;</td>
<td>#FFDEAD</td>
<td style="background-color:#FFDEAD">&nbsp;</td>
</tr>

<tr>
<td>Navy&nbsp;</td>
<td>#000080</td>
<td style="background-color:#000080">&nbsp;</td>
</tr>

<tr>
<td>OldLace&nbsp;</td>
<td>#FDF5E6</td>
<td style="background-color:#FDF5E6">&nbsp;</td>
</tr>

<tr>
<td>Olive&nbsp;</td>
<td>#808000</td>
<td style="background-color:#808000">&nbsp;</td>
</tr>

<tr>
<td>OliveDrab&nbsp;</td>
<td>#6B8E23</td>
<td style="background-color:#6B8E23">&nbsp;</td>
</tr>

<tr>
<td>Orange&nbsp;</td>
<td>#FFA500</td>
<td style="background-color:#FFA500">&nbsp;</td>
</tr>

<tr>
<td>OrangeRed&nbsp;</td>
<td>#FF4500</td>
<td style="background-color:#FF4500">&nbsp;</td>
</tr>

<tr>
<td>Orchid&nbsp;</td>
<td>#DA70D6</td>
<td style="background-color:#DA70D6">&nbsp;</td>
</tr>

<tr>
<td>PaleGoldenRod&nbsp;</td>
<td>#EEE8AA</td>
<td style="background-color:#EEE8AA">&nbsp;</td>
</tr>

<tr>
<td>PaleGreen&nbsp;</td>
<td>#98FB98</td>
<td style="background-color:#98FB98">&nbsp;</td>
</tr>

<tr>
<td>PaleTurquoise&nbsp;</td>
<td>#AFEEEE</td>
<td style="background-color:#AFEEEE">&nbsp;</td>
</tr>

<tr>
<td>PaleVioletRed&nbsp;</td>
<td>#DB7093</td>
<td style="background-color:#DB7093">&nbsp;</td>
</tr>

<tr>
<td>PapayaWhip&nbsp;</td>
<td>#FFEFD5</td>
<td style="background-color:#FFEFD5">&nbsp;</td>
</tr>

<tr>
<td>PeachPuff&nbsp;</td>
<td>#FFDAB9</td>
<td style="background-color:#FFDAB9">&nbsp;</td>
</tr>

<tr>
<td>Peru&nbsp;</td>
<td>#CD853F</td>
<td style="background-color:#CD853F">&nbsp;</td>
</tr>

<tr>
<td>Pink&nbsp;</td>
<td>#FFC0CB</td>
<td style="background-color:#FFC0CB">&nbsp;</td>
</tr>

<tr>
<td>Plum&nbsp;</td>
<td>#DDA0DD</td>
<td style="background-color:#DDA0DD">&nbsp;</td>
</tr>

<tr>
<td>PowderBlue&nbsp;</td>
<td>#B0E0E6</td>
<td style="background-color:#B0E0E6">&nbsp;</td>
</tr>

<tr>
<td>Purple&nbsp;</td>
<td>#800080</td>
<td style="background-color:#800080">&nbsp;</td>
</tr>

<tr>
<td>RebeccaPurple&nbsp;</td>
<td>#663399</td>
<td style="background-color:#663399">&nbsp;</td>
</tr>

<tr>
<td>Red&nbsp;</td>
<td>#FF0000</td>
<td style="background-color:#FF0000">&nbsp;</td>
</tr>

<tr>
<td>RosyBrown&nbsp;</td>
<td>#BC8F8F</td>
<td style="background-color:#BC8F8F">&nbsp;</td>
</tr>

<tr>
<td>RoyalBlue&nbsp;</td>
<td>#4169E1</td>
<td style="background-color:#4169E1">&nbsp;</td>
</tr>

<tr>
<td>SaddleBrown&nbsp;</td>
<td>#8B4513</td>
<td style="background-color:#8B4513">&nbsp;</td>
</tr>

<tr>
<td>Salmon&nbsp;</td>
<td>#FA8072</td>
<td style="background-color:#FA8072">&nbsp;</td>
</tr>

<tr>
<td>SandyBrown&nbsp;</td>
<td>#F4A460</td>
<td style="background-color:#F4A460">&nbsp;</td>
</tr>

<tr>
<td>SeaGreen&nbsp;</td>
<td>#2E8B57</td>
<td style="background-color:#2E8B57">&nbsp;</td>
</tr>

<tr>
<td>SeaShell&nbsp;</td>
<td>#FFF5EE</td>
<td style="background-color:#FFF5EE">&nbsp;</td>
</tr>

<tr>
<td>Sienna&nbsp;</td>
<td>#A0522D</td>
<td style="background-color:#A0522D">&nbsp;</td>
</tr>

<tr>
<td>Silver&nbsp;</td>
<td>#C0C0C0</td>
<td style="background-color:#C0C0C0">&nbsp;</td>
</tr>

<tr>
<td>SkyBlue&nbsp;</td>
<td>#87CEEB</td>
<td style="background-color:#87CEEB">&nbsp;</td>
</tr>

<tr>
<td>SlateBlue&nbsp;</td>
<td>#6A5ACD</td>
<td style="background-color:#6A5ACD">&nbsp;</td>
</tr>

<tr>
<td>SlateGray&nbsp;</td>
<td>#708090</td>
<td style="background-color:#708090">&nbsp;</td>
</tr>

<tr>
<td>SlateGrey&nbsp;</td>
<td>#708090</td>
<td style="background-color:#708090">&nbsp;</td>
</tr>

<tr>
<td>Snow&nbsp;</td>
<td>#FFFAFA</td>
<td style="background-color:#FFFAFA">&nbsp;</td>
</tr>

<tr>
<td>SpringGreen&nbsp;</td>
<td>#00FF7F</td>
<td style="background-color:#00FF7F">&nbsp;</td>
</tr>

<tr>
<td>SteelBlue&nbsp;</td>
<td>#4682B4</td>
<td style="background-color:#4682B4">&nbsp;</td>
</tr>

<tr>
<td>Tan&nbsp;</td>
<td>#D2B48C</td>
<td style="background-color:#D2B48C">&nbsp;</td>
</tr>

<tr>
<td>Teal&nbsp;</td>
<td>#008080</td>
<td style="background-color:#008080">&nbsp;</td>
</tr>

<tr>
<td>Thistle&nbsp;</td>
<td>#D8BFD8</td>
<td style="background-color:#D8BFD8">&nbsp;</td>
</tr>

<tr>
<td>Tomato&nbsp;</td>
<td>#FF6347</td>
<td style="background-color:#FF6347">&nbsp;</td>
</tr>

<tr>
<td>Turquoise&nbsp;</td>
<td>#40E0D0</td>
<td style="background-color:#40E0D0">&nbsp;</td>
</tr>

<tr>
<td>Violet&nbsp;</td>
<td>#EE82EE</td>
<td style="background-color:#EE82EE">&nbsp;</td>
</tr>

<tr>
<td>Wheat&nbsp;</td>
<td>#F5DEB3</td>
<td style="background-color:#F5DEB3">&nbsp;</td>
</tr>

<tr>
<td>White&nbsp;</td>
<td>#FFFFFF</td>
<td style="background-color:#FFFFFF">&nbsp;</td>
</tr>

<tr>
<td>WhiteSmoke&nbsp;</td>
<td>#F5F5F5</td>
<td style="background-color:#F5F5F5">&nbsp;</td>
</tr>

<tr>
<td>Yellow&nbsp;</td>
<td>#FFFF00</td>
<td style="background-color:#FFFF00">&nbsp;</td>
</tr>

<tr>
<td>YellowGreen&nbsp;</td>
<td>#9ACD32</td>
<td style="background-color:#9ACD32">&nbsp;</td>
</tr>

</table>

