Comenzar a trabajar con CSS es sencillo. Sólo tendremos que disponer de un [editor de texto adecuado](../disenoWeb/herramientasWeb.md) que facilite nuestra tarea y muchas ganas de aprender. 

## Agregando CSS al documento
Existen tres maneras de agregar estilos CSS a nuestro documento (que en esta guía, siempre será un documento de tipo HTML), las cuáles, se explican a continuación. 

### En línea
Se agrega estilos CSS directamente dentro de una etiqueta HTML. 

De forma general: 

```html
<etiqueta style="[código css];">
```

Por ejemplo: 

```html
<p style="color: blue;">
```

### Hoja de estilos CSS interna
Se agrega un bloque de estilos CSS dentro la cabecera (`head`) del documento HTML. 

Por ejemplo:

```html
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<style>
		/* Coloque aquí sus estilos CSS */
	</style>
	<title>Documento</title>
</head>
<body>
	
</body>
</html>
```

!!!done "Comentarios en CSS"
		En un documento CSS, el texto encerrado entre `/*` y `*/` se consideran comentarios y, por lo mismo, no son interpretados por el navegador. 

### Hoja de estilos CSS externa 
Los estilos CSS se definen en un documento aparte (que lleva la extensión `.css`) el cual debe ser especificado dentro del documento HTML mediante la etiqueta `link`, que presenta la forma: 

```html
<link rel="stylesheet" href="[ruta hacia el documento CSS]">
```

De esta forma, disponemos de dos documentos: el documento HTML por un lado, y el documento CSS por otro. 

Por ejemplo, el documento HTML: 

```html
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="estilos.css">
	<title>Documento</title>
</head>
<body>
	
</body>
</html>
```

Y el documento `estilos.css`:

```css
/* Coloque aquí sus estilos CSS */
```

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


!!!done "Validador CSS"
		La W3C dispone de un servicio en línea que posibilita verificar si un documento escrito en CSS se ajusta a los estándares internacionales: 

		[Validar CSS en línea](https://jigsaw.w3.org/css-validator/)