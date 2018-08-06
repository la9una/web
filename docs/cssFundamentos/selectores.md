## Sintaxis general de un documento CSS
Un documento CSS 

```css
selector {propiedad: valor;}
```

!!!tip "Agrupando selectores"
		Es posible asignar estilos a un conjunto de selectores, agrupándolos de la siguiente manera: 
		
		```css
		selector1, selector2, selector3 {propiedad: valor;}
		```

## Selectores de elementos
Los selectores de elementos (o selectores de tipos) apuntan a etiquetas HTML. Para ello, en el documento CSS se escribe el nombre de la etiqueta. 

**Sintaxis CSS**

```css
elemento {propiedad: valor;}
```


_Código HTML (ejemplo)_

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="selectoresElementos.css">
	<title>Selectores de elementos</title>
</head>
<body>
	<h1>Sapiente incidunt</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dolores ducimus ratione voluptatibus.</p>
		<p>At libero et, voluptas deserunt debitis facilis unde, commodi adipisci illum amet esse repellat soluta quidem voluptates. Fuga voluptatem, laboriosam voluptate mollitia dolores assumenda blanditiis excepturi, sint, quisquam fugiat id tenetur.</p>
		<div>Sint maxime iure officiis atque modi corporis ad soluta, fugit, ex, a repellat incidunt quis itaque.</div>
</body>
</html>
```

_Código CSS (ejemplo)_

```css linenums="1"
h1 {color: teal;}
p {font-size: 12px;}
div {background-color: peach;}
```

## Selectores `id` y `class`
Los selectores `id` y `class` apuntan a los valores de los atributos homónimos. 

* Para apuntar a un identificador (`id`) de HTML, en el documento CSS se escribe el signo de numeral (`#`), seguido de su valor.

* Para apuntar a una clase (`class`) de HTML, en el documento CSS se escribe el signo de punto (`.`), seguido de su valor. 

!!!warning "Sobre el uso de `id` y `class`"
		Un mismo selector de tipo `id` puede usarse por única vez en el documento HTML. En cambio un selector de tipo `class` puede usarse sin límite en la misma página. 

**Sintaxis CSS**

```css
.clase {propiedad: valor;}
#identificador {propiedad: valor;}
```

_Código HTML (ejemplo)_

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="selectoresIDClass.css">
	<title>Selectores ID y Class</title>
</head>
<body>
	<div id="noticias">
		<h1 class="rojo">Sapiente incidunt</h1>
		<p class="rojo destacado">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dolores ducimus ratione voluptatibus.</p>
		<p class="cursiva">At libero et, voluptas deserunt debitis facilis unde, commodi adipisci illum amet esse repellat soluta quidem voluptates.</p>
		<p>Fuga voluptatem, laboriosam voluptate mollitia dolores assumenda blanditiis excepturi, sint, quisquam fugiat id tenetur.</p>
		<div class="resaltado">Sint maxime iure officiis atque modi corporis ad soluta, fugit, ex, a repellat incidunt quis itaque.</div>
	</div>
	<div id="pie">
		<h2 class="rojo">Laboriosam voluptate</h2>
		<p>At libero et, voluptas deserunt debitis facilis unde, commodi adipisci illum amet esse repellat soluta quidem voluptates. Fuga voluptatem, laboriosam voluptate mollitia dolores assumenda blanditiis excepturi, sint, quisquam fugiat id tenetur.</p>
	</div>
</body>
</html>
```

_Código CSS (ejemplo)_

```css linenums="1"
#noticias {magin: 5px; padding: 8px 0;}
div#pie {font-size: 9px; margin: 10px 0;}
.rojo {color: red;}
p.cursiva {font-style: italic;}
.destacado {font-size: 16px;}
.restaltado {background-color: yelow;}
```

## Selectores de atributos
Apuntan a los **atributos** de los elementos HTML

**Sintaxis CSS**

```css
[atributo] {propiedad: valor;}
[atributo="valor"] {propiedad: valor;}
```


_Código HTML (ejemplo)_

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="selectoresAtributos.css">
    <title>Selectores de atributos</title>
</head>
<body>
    <ul>
        <li><a href="page2.html" title="Siguiente">Siguiente</a></li>
        <li><a href="#interno">Enlace interno</a></li>
        <li><a href="http://ejemplo.com">Enlace de ejemplo</a></li>
        <li><a href="http://itel.edu.ar" title="Bienvenidos a ITEL">itel.edu.ar</a></li>
        <li><a href="#OtroEnlace">Enlace interno otroenlace Otroenlace</a></li>
        <li><a href="http://ejemplo.org">Ejemplo de enlace .org</a></li>
    </ul>
</body>
</html>
```

_Código CSS (ejemplo)_

```css linenums="1"
/* Elementos <a> con un atributo de título */
a[title] {
  color: orange;
}s

/* Enlaces internos, comenzando con "#" */
a[href^="#"] {
  background-color: gold;
}

/* Enlaces que contienen la palabra "ejemplo" en cualquier parte de la URL */
a[href*="ejemplo"] {
  background-color: silver;
}

/* Enlaces que contienen la palabra "ITEL" en el valor del atributo */
a[title~="ITEL"] {
  background-color: blue;
  color: yellow;
}


/* Enlaces que contienen la palabra "otroenlace" en cualquier parte de la URL, 
   independientemente de las mayúsculas */
a[href*="otroenlace" i] {
  color: cyan;
}

/* Enlaces que terminan en ".org" */
a[href$=".org"] {
  color: red;
}
```

!!!done "Sintetizando y más"
		**Selectores de presencia y valor**

		Estos selectores de atributos afectarán a los elementos cuyo valor coincida exactamente con el valor del atributo especificado:

    	* `[attr]`: Este selector 'seleccionará' todos los elementos que contengan el atributo `attr`, sin importar el valor que tenga.
    	* `[attr=val]`: Este, seleccionará los elementos con el atributo `attr`, pero solo aquello cuyo valor coincida con `val`.
    	* `[attr~=val]`: Este selector afectará a los elementos con el atributo `attr`, pero solo si el valor `val` está contenido en la lista de valores (separados por espacios) incluidos en el valor de `attr`, por ejemplo una de las clases contenida en una lista de clases (separadas por espacios).

		**Selector de atributos por valor textual**

		También conocidos como "RegExp-like selectors", pues proporcionan una forma de selección similar a las expresiones normales regular expression (aunque siendo estrictos, estos selectores no son verdaderas expresiones normales):

    	* `[attr|=val]`: Este selector elegirá todos los elementos con el atributo `attr` cuyo valor sea exactamente `val` o empieza por `val-` (nota: el guion no es un error, se usa para manejar códigos de lenguaje de programación).
    	* `[attr^=val]`: Seleccionará todos los elementos cuyo atributo `attr` comienza por el valor `val`.
    	* `[attr$=val]`: Este selector elegirá todos los elementos cuyo atributo `attr` termina por el valor `val`.
    	* `[attr*=val]`: Este seleccionará todos los elementos cuyo atributo `attr` contiene la cadena `val` (al contrario que `[attr~=val]`, este selector no considera los espacios como separador de valores sino como parte del valor del atributo).

		_Fuente: [https://developer.mozilla.org/es/docs/Web/CSS/Selectores_atributo](https://developer.mozilla.org/es/docs/Web/CSS/Selectores_atributo)_


## Selectores jerárquicos o combinados
En CSS, podemos combinar varios selectores juntos y con ello seleccionar **elementos HTML** contenidos en otros elementos, o elementos adyacentes a otros. 

Disponemos de cuatro tipos:

* Selector descendiente `(espacio)`
* Selector hijo `>`
* Selector hermano `+`
* Selector hermano en general `~`

### Selector descendiente
Empleado para seleccionar a todos los elementos descendientes de un elemento específico. Nno tiene por qué ser un hijo; puede ser un nieto, por ejemplo.

**Sintaxis CSS**

```css
selectorPadre selectorHijo {propiedad: valor;}
```

_Código HTML (ejemplo)_

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="selectorDescendiente.css">
    <title>Selectores de atributos</title>
</head>
<body>
    <div>
        <p>Lorem ipsum dolor sit amet. Placeat nostrum, <a href="#">sunt odit quas</a>, velit temporibus.</p>
        <p><a href="#">Totam neque consequatur sequi!</a>. Consectetur asperiores ipsum accusamus.</p>
    </div>

    <p>Repellendus excepturi <a href="#">eligendi aperiam rem, eos quam itaque</a> voluptate alias vero unde</a>.</p>
    <p><a href="#">Facilis natus dicta nostrum aut</a>, quae ea officiis rem quisquam dolore facere</a>.</p>
</body>
</html>
```

_Código CSS (ejemplo)_

```css linenums="1"
div a {
	color: green;
}
```
### Selector hijo 
Permite seleccionar un **elemento HTML** que es hijo directo de otro **elemento HTML**.

**Sintaxis CSS**

```css
elementoPadre > ElementoHijo {propiedad: valor;}
```


_Código HTML (ejemplo)_

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="selectorHijo.css">
    <title>Selectores de atributos</title>
</head>
<body>
    <div>
        <p>Lorem ipsum dolor sit amet. Placeat nostrum, <a href="#">sunt odit quas</a>, velit temporibus.</p>
        <p><a href="#">Totam neque consequatur sequi!</a>. Consectetur asperiores ipsum accusamus.</p>
    </div>

    <p>Repellendus excepturi <a href="#">eligendi aperiam rem, eos quam itaque</a> voluptate alias vero unde</a>.</p>
    <p><a href="#">Facilis natus dicta nostrum aut</a>, quae ea officiis rem quisquam dolore facere</a>.</p>
</body>
</html>
```

_Código CSS (ejemplo)_

```css linenums="1"
body > p {
	background-color: yellow;
}
```


### El selector hermano adyacente
Permite seleccionar un **elemento HTML** que es **hermano directo** de otro **elemento HTML** (a la derecha por ejemplo, en el mismo nivel jerárquico).

**Sintaxis CSS**

```css
elementoHermano1 + elementoHermano2 {propiedad: valor;}
```


_Código HTML (ejemplo)_

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="selectorHermano.css">
	<title>Selectores de elementos</title>
</head>
<body>
    <h1>Sapiente incidunt</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dolores ducimus ratione voluptatibus.</p>
    <p>At libero et, voluptas deserunt debitis facilis unde, commodi adipisci illum amet esse repellat soluta quidem voluptates. Fuga voluptatem, <a href="#">laboriosam voluptate mollitia</a> dolores assumenda blanditiis excepturi, sint, quisquam fugiat id tenetur.</p>
    <div>Sint maxime iure officiis atque modi, a repellat incidunt quis itaque.</div>
</body>
</html>
```

_Código CSS (ejemplo)_

```css linenums="1"
h1 + p {background-color: yellow;}
p + div {color: red;}
```

### El selector hermano en general
Permite seleccionar cualquier **elemento HTML** hermano de otro **elemento HTML** (por ejemplo en el mismo nivel jerárquico, pero no necesariamente adyacente a él).

**Sintaxis CSS**

```css
elementoHermano1 ~ elementoHermano2 {propiedad: valor;}
```


_Código HTML (ejemplo)_

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="selectorHermanoGeneral.css">
	<title>Selectores de elementos</title>
</head>
<body>
    <h1>Sapiente incidunt</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dolores ducimus ratione voluptatibus.</p>
    <p>At libero et, voluptas deserunt debitis facilis unde, commodi adipisci illum amet esse repellat soluta quidem voluptates. Fuga voluptatem, <a href="#">laboriosam voluptate mollitia</a> dolores assumenda blanditiis excepturi, sint, quisquam fugiat id tenetur.</p>
    <div>Sint maxime iure officiis atque modi, a repellat incidunt quis itaque.</div>
</body>
</html>
```

_Código CSS (ejemplo)_

```css linenums="1"
h1 ~ div {background-color: orange;}
```

_Fuente: [https://developer.mozilla.org/es/docs/Learn/CSS/Introduction_to_CSS/Selectores_simples#Combinaciones](https://developer.mozilla.org/es/docs/Learn/CSS/Introduction_to_CSS/Selectores_simples#Combinaciones)_


## Pseudo selectores
https://developer.mozilla.org/es/docs/Learn/CSS/Introduction_to_CSS/Pseudo-clases_y_pseudo-elementos