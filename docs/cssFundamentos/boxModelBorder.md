El modelo de caja de CSS permite asignar diversos estilos para los bordes: `border-width` para definir el ancho del borde, `border-color` para establecer el color del borde, `border-style` para indicar tipo de borde de la caja y finalmente `border-radius` para determinar la redondez de las esquinas de la caja. 

### border-style
Hace referencia al tipo de línea que llevará la caja. Puede tomar valores como: `none`, `hidden`, `dotted`, `dashed`, `solid`, `double`, `groove`, `ridge`, `inset` ó `outset`. 

_Código HTML_

```html linenums="1" hl_lines="9"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Modelo de caja CSS</title>
	<link rel="stylesheet" href="caja.css">
</head>
<body>
	<div>Hola! Soy una caja</div>
</body>
</html>
```
_Código CSS_


```css linenums="1" hl_lines="2"
div {
	border-style: dotted;
}
```

!!!info "Definiendo la propiedad `border-style`"
		Podemos definir la propiedad para cada lado de la caja empleando `border-bottom-style`, `border-left-style`, `border-right-style` y `border-top-style`, o bien, empleando la [forma abreviada general](boxModelShorthand.md#forma-abreviada-general)

### border-width

Los valores de la anchura de los bordes se pueden indicar [mediante una medida](unitsNumbers.md) o mediante las palabras clave `thin` (borde delgado), `medium` (borde normal) y `thick` (borde ancho). 

_Código HTML_

```html linenums="1" hl_lines="9"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Modelo de caja CSS</title>
	<link rel="stylesheet" href="caja.css">
</head>
<body>
	<div>Hola! Soy una caja</div>
</body>
</html>
```

_Código CSS_


```css linenums="1" hl_lines="3"
div {
	border-style: dotted;
	border-width: 5px;
}
```

!!!info "Definiendo la propiedad `border-width`"
		Podemos definir la propiedad para cada lado de la caja empleando `border-bottom-width`, `border-left-width`, `border-right-width` y `border-top-width`, o bien, empleando la [forma abreviada general](boxModelShorthand.md#forma-abreviada-general)


### border-color
Porpiedad para determinar el color del borde de la caja. 

_Código HTML_

```html linenums="1" hl_lines="9"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Modelo de caja CSS</title>
	<link rel="stylesheet" href="caja.css">
</head>
<body>
	<div>Hola! Soy una caja</div>
</body>
</html>
```

_Código CSS_

```css linenums="1" hl_lines="4"
div {
	border-style: dotted;
	border-width: 5px;
	border-color: red;
}

```

!!!info "Definiendo la propiedad `border-color`"
		Podemos definir la propiedad para cada lado de la caja empleando `border-bottom-color`, `border-left-color`, `border-right-color` y `border-top-color`, o bien, empleando la [forma abreviada general](boxModelShorthand.md#forma-abreviada-general)


### border-radius
Propiedad que establece la "redondez" de las esquinas de una caja. 

_Código HTML_

```html linenums="1" hl_lines="9"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Modelo de caja CSS</title>
	<link rel="stylesheet" href="caja.css">
</head>
<body>
	<div>Hola! Soy una caja</div>
</body>
</html>
```

_Código CSS_


```css linenums="1"  hl_lines="5"
div {
	border-style: dotted;
	border-width: 5px;
	border-color: red;
	border-radius: 5px;
}
```

!!!info "Definiendo la propiedad `border-radius`"
		Podemos definir la propiedad para cada esquina de la caja empleando `border-top-left-radius`, `border-top-right-radius`, `border-bottom-right-radius` y `border-bottom-left-radius`, o bien, empleando la [forma abreviada para el radio de las esquinas](boxModelShorthand.md#forma-abreviada-para-border-radius)

