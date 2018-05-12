Comenzar a trabajar con CSS es sencillo. Sólo tendremos que disponer de un [editor de texto adecuado](../disenoWeb/herramientas.md) que facilite nuestra tarea y muchas ganas de aprender. 

## Sintaxis
Al igual que cuando escribimos un documento HTML, existen una serie de reglas para escribir un documento HTML correctamente, que están definidas por la [W3C](https://www.w3c.es/) (_World Wide Web Consortium_) que es una comunidad internacional en la cual los estados miembros trabajan definiendo recomendaciones y estándares para el desarrollo web, buscando asegurar de esta manera las condiciones para el crecimiento de la red informática mundial (_World Wide Web_) o internet, a largo plazo.

Yendo ahora al punto que nos compete diremos que, en líneas generales, la sintaxis CSS es: 

```css
selector {propiedad: valor;}
```

Donde: 

* `selector`: es el objeto de la página web a la cual se le aplicará un estilo determinado. Existen varios tipos, como veremos más adelante. [[Índice de selectores]](https://developer.mozilla.org/es/docs/Web/CSS/Referencia_CSS#Selectores)
* `propiedad`: es el tipo de estilo que se le aplicará a un objeto de la página web. Puede tratarse de una o varias, como el ancho, el alto, color de fondo, bordes, etc. [[Índice de propiedades]](https://developer.mozilla.org/es/docs/Web/CSS/Referencia_CSS#%C3%8Dndice_de_palabras_clave)
* `valor`: es la "medida" del estilo que se aplicará al objeto. 

Por ejemplo: 

```css
p {background-color: yellow;}
```

## Agregando CSS al documento
Existen tres maneras de agregar estilos CSS a nuestro documento (que en esta guía, siempre será un documento de tipo HTML), las cuáles, se explican a continuación. 

### En línea
**Se agrega estilos CSS directamente dentro de una etiqueta HTML**. 

De forma general: 

```
<etiqueta style="<código css>;">
```

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
**Los estilos CSS se definen en un documento aparte** (que lleva la extensión `.css`) el cual debe ser especificado dentro del documento HTML mediante la etiqueta `link`, que presenta la forma: 

```
<link rel="stylesheet" href="[ruta hacia el documento CSS]">
```

De esta forma, disponemos de dos documentos: el documento HTML por un lado, y el documento CSS por otro. 

**Código HTML**: 

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

**Código CSS**

```css linenums="1"
h1 {background-color: peach;}
p {font-size: 14px;}
```
