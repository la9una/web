# El modelo de caja

Para comprender qué es una caja en CSS simplemente debés imaginarte un cuadrado o rectángulo. Dicha figura poseerá un determinano ancho y alto, un borde, márgenes, colores, posición, etc. 

El lenguaje CSS trata a todos los elementos como si estuvieran contenidos en cuadrados o rectángulos. Si normalmente al ver una página web no vemos una caja en cada párrafo o en cada imagen, es porque la mayoría de las veces estas cajas no poseen bordes  o bien, son transparentes (valores por defecto). 


El modelo de caja en CSS, yendo desde el contenido hacia afuera, está definido por: 

* El **tamaño de la caja** puede establecerse mediante las propiedades _width_ (ancho) y height (alto).
* **Contenido**: es el texto, la imagen, o _lo que sea_ qué está dentro de la caja. 
* **Padding**: es un **margen interno**, que rodea al contenido que forma parte de la propia caja.
* **Border**: es el **borde externo de la caja** y por tanto, la delimita.
* **Margin**: es el **margen exterior a la caja**, que aunque no forma parte de la caja, deja un espacio entre ésta y los otros elementos que la rodean.
* Los márgenes como el borde pueden definirse para los cuatro lados de la caja mediante las palabras _top_ (arriba), _bottom_ (abajo), _left_ (izquierda), y _right_ (derecha).
* La **posición de la caja** (su ubicación respecto a la página o elementos de la misma) también puede determinarse también mediante las palabras _top_ (arriba), _bottom_ (abajo), _left_ (izquierda), y _right_ (derecha). Sin embargo, el posicionamiento de una caja es un tema relativamente complejo que [será abordado en otra sección](position.md). 


![Box Model CSS](imgCSSFundamentos/boxmodel.png)

_Los márgenes, tanto interno (padding) como externo (margin), son transparentes. En la figura se le aplica color con fines didácticos_. 


## Márgenes

### padding
### margin

## Borde


## Ejemplo de caja
Como no puede ser de otra manera, analicemos un ejemplo real para conocer el modo en que CSS trata a una caja: 

**Código HTML**

```html
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Caja</title>
	<link rel="stylesheet" href="caja.css">
</head>
<body>
	<div>Modelo de caja</div>
</body>
</html>
```
**Código CSS**

```css
div {
	/* Altura de la caja */
	height: 200px;
	/* Anchura de la caja */
	width: 200px;
	/* Margen interno de la caja */
	padding: 20px;
	/* Borde de la caja */
	border: 2px solid red; 
	/* Margen externo a la caja */
	margin: 20px;
	/* Color de fondo de la caja */
	background-color: lime;
}
```

A continuación vamos a profundizar en cada uno de las propiedades básicas de una caja CSS. 

!!!info "Comentarios en CSS"
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












_Fuente de conocimiento:_

* _[aprende-web.net](http://aprende-web.net)_
* _[librosweb.es](https://librosweb.es)_
* _[developer.mozilla.org](https://developer.mozilla.org/es/docs/Web/CSS/CSS_Modelo_Caja/Mastering_margin_collapsing)_