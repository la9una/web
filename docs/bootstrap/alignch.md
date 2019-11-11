# Alineación de columnas en el eje horizontal
Es posible alinear las cajas en el eje principal mediante sencillas clases provistas por Bootstrap. 

!!! warning "Uso de la clase `d-flex`"
		No es necesario crear un contenedor con la clase `d-flex` para poder aplicar las siguientes propiedades de Flexbox en Bootstrap. 

## Distribuir horizontalmente todas las columnas de una fila
Para hacerlo, recuriremos a la propiedad `justify-content` de Flexbox, dentro de una fila (`row`).

!!! info "`justify-content`"
        Los valores que puede tomar esta propiedad son: 

        * `justify-content-start` (por defecto)
        * `justify-content-center` 
        * `justify-content-end`
        * `justify-content-between`
        * `justify-content-around`

Veamoslo mejor con un ejemplo de aplicación: 

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
		background-color:grey;
		margin: 30px 0 0 0;
	}
	.columna {
		background-color: ghostwhite;
		border: 1px solid gray;
		text-align: center;
		padding: 10px;;
	}
	</style>
</head>
<body>
	<!-- Inicio del contenedor de Bootstrap-->
	<div class="container">
		<div class="row justify-content-start">
			<div class="col-2 columna">Columna 1</div>
			<div class="col-2 columna">Columna 2</div>
			<div class="col-2 columna">Columna 3</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-2 columna">Columna 1</div>
			<div class="col-2 columna">Columna 2</div>
			<div class="col-2 columna">Columna 3</div>
		</div>
		<div class="row justify-content-end">
			<div class="col-2 columna">Columna 1</div>
			<div class="col-2 columna">Columna 2</div>
			<div class="col-2 columna">Columna 3</div>
		</div>
		<div class="row justify-content-between">
			<div class="col-2 columna">Columna 1</div>
			<div class="col-2 columna">Columna 2</div>
			<div class="col-2 columna">Columna 3</div>
		</div>
		<div class="row justify-content-around">
			<div class="col-2 columna">Columna 1</div>
			<div class="col-2 columna">Columna 2</div>
			<div class="col-2 columna">Columna 3</div>
		</div>
	</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
</body>
</html>
```

[[¡Intentalo!]](descargas/bootstrap_alignh_ej_1.zip) &nbsp;&nbsp; [[Solución]](descargas/bootstrap_alignh_sc_1.zip) 

## Offset
Es posible terminar de manera "manual" el espaciado de las columnas, también llamado _offset_. Es importante tener en cuenta las características de dicho espaciado, a fin de emplearlo de manera adecuada en nuestros diseños:  

* El espaciado se efectúa a la izquiera de la columna
* El espaciado se mide en "columnas" de la _grid_

Veamos un el siguiente ejemplo de aplicación: 

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
		background-color:grey;
		margin: 30px 0 0 0;
	}
	.col, .col-2 {
		background-color: ghostwhite;
		border: 1px solid gray;
		text-align: center;
		padding: 10px;;
	}
	</style>
</head>
<body>
	<!-- Inicio del contenedor de Bootstrap-->
	<div class="container">
		<div class="row">
			<div class="col-2 offset-1">Columna (offset-1)</div>
		</div>
		<div class="row">
			<div class="col-2 offset-5">Columna (offset-5)</div>
		</div>
		<div class="row">
			<div class="col offset-2">Columna (offset-2)</div>
		</div>
		<div class="row">
			<div class="col-2 offset-2">Columna 1 (offset-2)</div>
			<div class="col-2 offset-1">Columna 2 (offset-1)</div>
			<div class="col-2 offset-3">Columna 3 (offset-3)</div>
		</div>
	</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
</body>
</html>
```

[[ Descargá el ejemplo ]](descargas/bootstrap_grid_offset.zip)