# Alineación vertical de columnas
Por _Default_ las columnas ocupan todo el alto de su contenedor padre. Es posible modificar esto utilizando las reglas de alineación vertical que veremos en este apartado. 

!!! warning "Uso de la clase `d-flex`"
		No es necesario crear un contenedor con la clase `d-flex` para poder aplicar las siguientes propiedades de Flexbox en Bootstrap. 


## Alinear veticalmente todas las columnas de una fila
Podemos alinear todas las columnas (a la vez) que están dentro de una fila, usando la propiedad `align-items` dentro de la fila (`row`). 

!!! info "`align-items`"
        Los valores que puede tomar esta propiedad son: 

        * `align-items-start` (por defecto)
        * `align-items-center` 
        * `align-items-end`

Veamos un ejemplo para comprenderlo mejor:

```html
<!DOCTYPE html>
<html lang="es">
<!-- Bootstrap 4.1 | JQuery 3.3.1 | Popper 1.14.3 -->
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/estilos.css">
	<title>Plantilla</title>
	<style>
	/* Estilos CSS para visualizar mejor el ejemplo */
	.row {
		height: 130px;
		background-color:grey;
		margin: 30px 0 0 0;
	}
	.col {
		background-color: ghostwhite;
		border: 1px solid gray;
		text-align: center;
		padding: 15px;;
	}
	</style>
</head>
<body>
	<!-- Inicio del contenedor de Bootstrap-->
	<div class="container">
		<!-- Fila 1 -->
		<div class="row align-items-start">
			<div class="col">Columna 1</div>
			<div class="col">Columna 2</div>
			<div class="col">Columna 3</div>
		</div>
		<!-- Fila 2 -->
		<div class="row align-items-center">
			<div class="col">Columna 1</div>
			<div class="col">Columna 2</div>
			<div class="col">Columna 3</div>
		</div>
		<!-- Fila 3 -->
		<div class="row align-items-end">
			<div class="col">Columna 1</div>
			<div class="col">Columna 2</div>
			<div class="col">Columna 3</div>
		</div>
	</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
</body>
</html>
```

[[¡Intentalo!]](descargas/bootstrap_alignv_ej_1.zip) &nbsp;&nbsp; [[Solución]](descargas/bootstrap_alignv_sc_1.zip) 

## Alinear veticalmente cada columna de una fila
También podemos alinear cada columna de manera individual, empleando la propiedad `align-self` dentro de cada columna (`col`). 

!!! info "`align-self`"
        Los valores que puede tomar esta propiedad son: 

        * `align-self-start` (por defecto)
        * `align-self-center` 
        * `align-self-end`

Nuevamente, conviene visualizar en un ejemplo: 

```html
<!DOCTYPE html>
<html lang="es">
<!-- Bootstrap 4.1 | JQuery 3.3.1 | Popper 1.14.3 -->
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/estilos.css">
	<title>Plantilla</title>
	<style>
	/* Estilos CSS para visualizar mejor el ejemplo */
	.row {
		height: 165px;
		background-color:grey;
		margin: 30px 0 0 0;
	}
	.col {
		background-color: ghostwhite;
		border: 1px solid gray;
		text-align: center;
		padding: 15px;;
	}
	</style>
</head>
<body>
	<!-- Inicio del contenedor de Bootstrap-->
	<div class="container">
		<div class="row">
			<div class="col align-self-start">Columna 1</div>
			<div class="col align-self-center">Columna 2</div>
			<div class="col align-self-end">Columna 3</div>
		</div>
	</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
</body>
</html>
```

[[¡Intentalo!]](descargas/bootstrap_alignv_ej_2.zip) &nbsp;&nbsp; [[Solución]](descargas/bootstrap_alignv_sc_2.zip) 