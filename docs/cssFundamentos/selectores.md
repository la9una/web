## Sintaxis general de un documento CSS
Un documento CSS 

```css
selector {propiedad: valor;}
```
## Selectores de elementos
Los selectores de elementos apuntan a etiquetas HTML. Para ello, en el documento CSS se escribe el nombre de la etiqueta. 

**Sintaxis CSS**

```css
elemento {propiedad: valor;}
```


**Código HTML (ejemplo)**

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="selectores.css">
	<title>Selectores</title>
</head>
<body>
	<h1>Sapiente incidunt</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dolores ducimus ratione voluptatibus.</p>
		<p>At libero et, voluptas deserunt debitis facilis unde, commodi adipisci illum amet esse repellat soluta quidem voluptates. Fuga voluptatem, laboriosam voluptate mollitia dolores assumenda blanditiis excepturi, sint, quisquam fugiat id tenetur.</p>
		<div>Sint maxime iure officiis atque modi corporis ad soluta, fugit, ex, a repellat incidunt quis itaque.</div>
</body>
</html>
```

**Código CSS (ejemplo)**

```css linenums="1"
h1 {color: teal;}
p {font-size: 12px;}
div {background-color: peach;}
```

## Selectores `id` y `class`
Los selectores `id` y `class` apuntan a los valores de los atributos homónimos. 

* Para apuntar a un identificador (`id`) de HTML, en el documento CSS se escribe el signo de numeral (`#`), seguido de su valor.

* Para apuntar a una clase (`class`) de HTML, en el documento CSS se escribe el signo de punto (`.`), seguido de su valor. 

**Sintaxis CSS**

```css
.clase {propiedad: valor;}
#identificador {propiedad: valor;}
```

**Código HTML (ejemplo)**

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="selectores.css">
	<title>Selectores</title>
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
**Código CSS (ejemplo)**

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
## Selectores jerárquicos


!!!done "Sobre el uso de `id` y `class`"
		Un mismo selector de tipo `id` puede usarse por única vez en el documento HTML. En cambio un selector de tipo `class` puede usarse sin límite en la misma página. 

!!!done "Comentarios en CSS"
		En un documento CSS, el texto encerrado entre `/*` y `*/` se consideran comentarios y, por lo mismo, no son interpretados por el navegador. 

!!!done "Agrupando selectores"
		`selector1, selector2, selector3, {propiedad: valor;}`
