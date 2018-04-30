# La grid de Bootstrap
Bootstrap posee un sistema de rejilla, también conocida como _grid_, que nos permite maquetar fácilmente cualquier sitio web y, lo que es mejor, apelando a los principios del _responsive web design_: esto quiere decir que diseñamos nuestro sitio por única vez, y este se adaptará como por arte de magia, a la pantalla de diferentes dispositivos. 

Para cumplir con tan ambioso cometido, Bootstrap utiliza un sistema de rejilla compuesto por **12 columnas**. Para entender mejor esto, veamos un ejemplo visual para distintas pantallas (en los ejemplos, las columnas aparecen como bastones de color salmón):


##Ejemplos de _grid_ para distintas pantallas
![Diseño responsivo](imgBootstrap/disenoResponsivoAll.png)

Como habrás podido pareciar al observar los ejemplos, en cualquier caso, 12 son las columnas que estructuran el contenido de la página web, sin importar de cuál dispositivo se trate: lo que **cambia entre las distintas pantallas es la cantidad de columnas que utiliza cada sección de contenido** y esto es, precisamente, lo que definiremos al emplear este _framework_. 




## Media queries
Para poder adaptarse a las pantallas de los distintos dispositivos, Bootstrap emplea las _media queries_ de CSS para introducir puntos de corte que establecen ĺos límites entre un tipo de pantalla y otra. 

```css
// Dispositivos extra pequeños (celular vertical, menos que 576px)
// No existe media query por ser el tamaño por defecto en Bootstrap

// Dispositivos pequeños (celular horizontal, 576px y más)
@media (min-width: 576px) { ... }

// Dispositivos medianos (tablets, 768px y más)
@media (min-width: 768px) { ... }

// Dispositivos grandes (escritorio, 992px y más)
@media (min-width: 992px) { ... }

// Dispositivos extra grandes (escritorio extra grande, 1200px y más)
@media (min-width: 1200px) { ... }
```

## Tamaño de pantalla del dispositivo

|   Pantalla   | Extra small | Small | Medium | Large | Extra large |
| :--- | :---------: | :---: | :----: | :---: | :---------: |
| Ancho total |    <576px  |      ≥576px       |    ≥768px     |    ≥992px      |     ≥1200px          |
| Dispositivos de ejemplo |   Celular (vertical)  |      Celular (horizontal)       |    Tablet     |    Notebook      |    PC de escritorio          |
| Ancho máximo del contenedor | Ninguno (auto) | 540px | 720px | 960px | 1140px |
| Prefijo de clase | `.col-` | `.col-sm-` | `.col-md-` | `.col-lg-` | `.col-xl-` |
| Número de columnas | 12 | 12 | 12 | 12 | 12 |
| Ancho de espaciado | 30px (15px a cada lado de la columna) | 30px (15px a cada lado de la columna) | 30px (15px a cada lado de la columna) | 30px (15px a cada lado de la columna) | 30px (15px a cada lado de la columna) |
| Encajable | Si | Si | Si | Si | Si |
| Permite ordenar columnas | Si | Si | Si | Si | Si |



| Nombre      | Límites                  | Dispositivo de ejemplo    | Nombre de la clase |
| ----------- | ------------------------ | ------------------------- | ------------------ |
| Extra small | Menor que 576px          | Celular (vertical)        | `.col`             |
| Small       | Igual o mayor que 576px  | Celular (horizontal)      | `.col-sm`          |
| Medium      | Igual o mayor que 768px  | Tablet                    | `.col-md`          |
| Large       | Igual o mayor que 992px  | Notebook                  | `.col-lg`          |
| Extra large | Igual o mayor que 1200px | Computadora de escritorio | `.col-xl`          |


## Contenedor
El contenedor (o del inglés, _container_) se trata de una clase que debe añadirse a un elemento en bloque, generalmente un  `div` y que contiene -valga la redundancia- el contenido de la página web. Existen dos tipos de clases para un contenedor: 

`container`: ocupa el centro del ancho de la pantalla con espacios iguales a cada lado

![Bootstrap Grid System](imgBootstrap/bGridContainer1.png)

`.container-fluid` ocupa el 100% del ancho de la pantalla del dispositivo  

![Bootstrap Grid System](imgBootstrap/bGridContainer2.png)


## Filas
Una fila (o del inglés, _row_) se trata de una clase que debe añadirse a un elemento en bloque, generalmente un  `div` el cual debe estar dentro de un bloque con la clase `.container`. 

![Bootstrap Grid System](imgBootstrap/bGridRow.png)

Sin embargo no debe agregarse contenido directamente dentro de una fila. 


## Columnas
Las columnas (del inglés _column_) se trata de una clase ...

![Bootstrap Grid System](imgBootstrap/bGridContainerRules.png)


## Combinando 

![Bootstrap Grid System](imgBootstrap/bGridColumns.png)

![Bootstrap Grid System](imgBootstrap/bGridMultipleRows.png)

![Bootstrap Grid System](imgBootstrap/bGridMultipleContainer.png)