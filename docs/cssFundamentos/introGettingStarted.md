Comenzar a trabajar con CSS es sencillo. Sólo tendremos que disponer de un [editor de texto adecuado](../disenoWeb/herramientas.md) que facilite nuestra tarea y muchas ganas de aprender. 

## Agregando CSS al documento
Existen tres maneras de agregar estilos CSS a nuestro documento (que en esta guía, siempre será un documento de tipo HTML), las cuáles, se explican a continuación. 

### En línea
**Se agrega estilos CSS directamente dentro de una etiqueta HTML**. 

Por ejemplo: 

```html linenums="1" hl_lines="8 9"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Documento</title>
</head>
<body>
	<h1 style="background-color: peach;">Un título</h1>
	<p style="font-size: 14px;">Un texto muy importante</p>
</body>
</html>
```

### Hoja de estilos CSS interna
**Se agrega un bloque de estilos CSS dentro la cabecera (`head`) del documento HTML**. 

Por ejemplo:

```html linenums="1" hl_lines="6 7 8 9"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Documento</title>
	<style>
		h1 {background-color: peach;}
		p {font-size: 14px;}
	</style>
</head>
<body>
	<h1>Un título</h1>
	<p>Un texto muy importante</p>
</body>
</html>
```


### Hoja de estilos CSS externa 
**Los estilos CSS se definen en un documento aparte** (que lleva la extensión `.css`) el cual debe ser especificado dentro del documento HTML mediante la etiqueta `link`. Disponemos así de dos documentos: el HTML por un lado, y el CSS por otro.

_Código HTML_

```html linenums="1" hl_lines="5"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="estilos.css">
	<title>Documento</title>
</head>
<body>
	<h1>Un título</h1>
	<p>Un texto muy importante</p>
</body>
</html>
```

_Código CSS_

```css linenums="1"
h1 {background-color: peach;}
p {font-size: 14px;}
```

## Comentarios en CSS
CSS permite incluir comentarios entre sus reglas y estilos. Los comentarios son contenidos de texto que el diseñador incluye en el archivo CSS para su propia información y utilidad. Los navegadores ignoran por completo cualquier comentario de los archivos CSS, por lo que es común utilizarlos para estructurar de forma clara los archivos CSS complejos.

El comienzo de un comentario se indica mediante los caracteres `/*` y el final del comentario se indica mediante `*/`, tal y como se muestra en el siguiente ejemplo:

```css
/* Este es un comentario en CSS */
```

Los comentarios pueden ocupar tantas líneas como sea necesario, pero no se puede incluir un comentario dentro de otro comentario:

```css
/* Este es un
comentario CSS de varias
lineas */
```

Aunque los navegadores ignoran los comentarios, su contenido se envía junto con el resto de estilos, por lo que no se debe incluir en ellos ninguna información sensible o confidencial.

La sintaxis de los comentarios CSS es muy diferente a la de los comentarios HTML, por lo que no deben confundirse:

```html
<!-- Este es un comentario en HTML -->

<!-- Este es un
comentario HTML de varias
lineas -->
```