El modelo de caja de CSS permite asignar diversos estilos para los bordes: `border-width` para definir el ancho del borde, `border-color` para establecer el color del borde y finalmente  `border-style` para indicar tipo de borde de la caja. 

### border-style
Hace referencia al tipo de línea que llevará la caja. Puede tomar valores como: `none | hidden | dotted | dashed | solid | double | groove | ridge | inset | outset`. 

#### Ejemplo

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

```css linenums="1"
div {
	border-style: dotted;
}
```

### border-width

Los valores de la anchura de los bordes se pueden indicar mediante una medida o mediante las palabras clave thin (borde delgado), medium (borde normal) y thick (borde ancho). 

### border-color
Porpiedad para determinar el color del borde de la caja. 


### border-radius
Propiedad que establece la "redondez" de las esquinas de una caja. 



