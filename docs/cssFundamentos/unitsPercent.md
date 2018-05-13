##Porcentajes

También podemos usar valores porcentuales para expresar la mayoría de cosas que requieran de valores numéricos, lo que nos permite crear, por ejemplo, cajas cuya anchura siempre cambie según el ancho del contenedor padre. En contraposición a las cajas cuya anchura este definida por un cierto valor (en `px` o en `ems`), que siempre serán de la misma longitud, incluso aunque cambie el ancho de los contenedores padres. Mejor verlo con un ejemplo.

Primero dos cajas parecidas, expresadas en HTML:

```html linenums="1"
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Longitud y tamaño</title>
	<link rel="stylesheet" href="layout.css">
</head>
<body>
  <div class="fixed">Ancho fijo (píxeles)</div>
  <div class="liquid">Ancho variable (porcentaje)</div>
</body>
</html>
```
Y los estilos CSS:

```css
div {
  margin: 10px;
  font-size: 200%;
  color: white;
  height: 150px;
  border: 2px solid black;
}

.fixed {
  background-color: red;
  width: 400px;
}

.liquid {
  background-color: blue;
  width: 70%;
}
```
Hemos establecido el ancho del primer `div` con width en `500px`, y del segundo al `70%`, por lo que el primer `div` siempre tendrá el mismo ancho, aunque se redimensione la ventana (desaparecerá de la pantalla si la ventana es más estrecha que la pantalla), mientras que el segundo irá cambiando a medida que cambie su padre (en este caso el elemento `<body>`, que por defecto es el `100%` del ancho de la ventana.


##Funciones

En programación, una function es una sección de código reutilizable que puede ser ejecutada muchas veces para realizar una tarea repetitiva con el mínimo esfuerzo para el desarrollador y para el ordenador. Las funciones se asocian normalmente con lenguajes como JavaScript, Python, o C++, pero también existen en CSS, como valores de propiedad. Ya hemos visto las funciones `rgb()`, `hsl()`, etc.

```css linenums="1"
background-color: rgba(255,0,0,0.5);
background-color: hsla(240,100%,50%,0.5);
```

Estas funciones calculan qué color usar.

Pero también encontraremos funciones en otros sitios — cada vez que veamos paréntesis detrás de un nombre, con valores o no, separados por comas, estaremos delante de una función. Por ejemplo:

```css linenums="1"
/* Calcula la nueva posición de un elemento desdpues de haber rotado 45 grados */
transform: rotate(45deg);
/* Calcula la nueva posición de un elemento después de haberlo movido de un lado a otro 50px y hacia abajo 60px */
transform: translate(50px, 60px);
/* Calcular el 90% del ancho acutal menos 15px */
width: calc(90%-15px);
/* Obtener una imagen para ser utilizada como fondo */
background-image: url('myimage.png');
```
Hay muchas funciones en CSS, las veremos a lo largo del curso.