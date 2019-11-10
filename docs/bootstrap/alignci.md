# Alineación de columnas
Gracias a la implementación de [Flexbox](https://www.w3.org/TR/css-flexbox-1/) en CSS3 y que Bootstrap 4 incorpora, ahora es posible -entre otras cuestiones- alinear las columnas tanto verticalmente como horizontalmete de forma sencilla. Se lleva así la maquetación web a un nuevo nivel, empleando cajas flexibles (de allí su nombre), evitando el uso de propiedades como `float`. 

## El modelo de Flexbox
Se basa en dos elementos: 

* El contenedor padre ó `flex container`
* El contenido hijo ó `flex items`

Veamos un ejemplo gráfico a continuación para comprender mejor el concepto: 

![Propiedades de Flexbox](imgBootstrap/flexbox_fundamentals.png)

Y ahora, en un ejemplo real: 

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
	/* Estilos CSS para visualizar mejor el ejemplo */
		.caja1, .caja2, .caja3, .caja4 {
	    	margin: 20px 0 0 0;
	    	padding: 15px;	
		}
        .caja1 {
            background-color: yellow;
        }
        .caja2 {
            background-color: aquamarine;
        }
        .caja3 {
            background: pink;
        }
        .caja4 {
            background: skyblue;
        }
    </style>
</head>
<body>
	<div class="container">
	    <div class="row">
	        <div class="col">
            	<div class="d-flex">
                	<div class="caja1">Caja 1</div>
                	<div class="caja2">Caja 2</div>
                	<div class="caja3">Caja 3</div>
            	</div>
			</div>
		</div>
	</div>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
</body>
</html>
```

[[¡Intentalo!]](descargas/bootstrap_flexbox_ej_1.zip) &nbsp;&nbsp; [[Solución]](descargas/bootstrap_flexbox_sc_1.zip) 

Además, la alineación de los hijos se realiza sobre unos ejes -principal y secundario-: 

![Ejes de Flexbox](imgBootstrap/flexbox_axis.png)

La imagen de arriba ilustra el comportamiento de los ejes por defecto. 

Sin embargo, tanto el eje principal (main) como el secundario (cross) pueden invertirse mediante clases de Flexbox. Veamos un ejemplo: 

```html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
	/* Estilos CSS para visualizar mejor el ejemplo */
		.caja1, .caja2, .caja3, .caja4 {
	    	margin: 20px 0 0 0;
	    	padding: 15px;	
		}
        .caja1 {
            background-color: yellow;
        }
        .caja2 {
            background-color: aquamarine;
        }
        .caja3 {
            background: pink;
        }
        .caja4 {
            background: skyblue;
        }
    </style>
</head>
<body>
	<div class="container">
	    <div class="row">
	        <div class="col">
            	<div class="d-flex flex-row">
                	<div class="caja1">Caja 1</div>
                	<div class="caja2">Caja 2</div>
                	<div class="caja3">Caja 3</div>
				</div>
				<div class="d-flex flex-column">
                	<div class="caja1">Caja 1</div>
                	<div class="caja2">Caja 2</div>
                	<div class="caja3">Caja 3</div>
				</div>
				<div class="d-flex flex-row-reverse">
                	<div class="caja1">Caja 1</div>
                	<div class="caja2">Caja 2</div>
                	<div class="caja3">Caja 3</div>
				</div>
				<div class="d-flex flex-column-reverse">
                	<div class="caja1">Caja 1</div>
                	<div class="caja2">Caja 2</div>
                	<div class="caja3">Caja 3</div>
            	</div>
			</div>
		</div>
	</div>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
</body>
</html>
```

[[¡Intentalo!]](descargas/bootstrap_flexbox_axis_ej_1.zip) &nbsp;&nbsp; [[Solución]](descargas/bootstrap_flexbox_axis_sc_1.zip) 

