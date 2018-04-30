# Diseño web adaptable o _Responsive web design_
La _grid_ de Bootstrap emplea el poder las las [_media queries_](https://developer.mozilla.org/es/docs/CSS/Media_queries) de CSS para establecer de qué manera el contenido se organizará en los distintos dispositivos. Sin embargo, no deja librada la tarea de organizar las _media queries_ al diseñador: ofrece unas clases CSS predefinidas que harán el trabajo por él. 

## Puntos de corte
En la siguiente tabla se listan las distintas clases CSS que Bootstrap proporciona para estableceer los límites entre un tipo de pantalla y otra. 

| Nombre      | Límites                  | Dispositivo de ejemplo    | Nombre de la clase |
| ----------- | ------------------------ | ------------------------- | ------------------ |
| Extra small | Menor que 576px          | Celular (vertical)        | `.col`             |
| Small       | Igual o mayor que 576px  | Celular (horizontal)      | `.col-sm`          |
| Medium      | Igual o mayor que 768px  | Tablet (vertical)         | `.col-md`          |
| Large       | Igual o mayor que 992px  | Tablet (horizontal)       | `.col-lg`          |
| Extra large | Igual o mayor que 1200px | Computadora, TV, etc      | `.col-xl`          |

!!! info "Columnas y espaciado"
		La _grid_ de Bootstrap ofrece 12 columnas como máximo (no es necesario usar todas) para cada tamaño de pantalla. Cada columna posee un espaciado (espacio en "blanco") de 15px a cada lado, es decir, 30px en total. 


## ¿Cómo funciona el diseño adaptable?

Imaginemos por un momento un sitio web cualquiera y como diseñadores necesitamos que el contenido del mismo se visualice bien en cualquier dispositivo. Utilizando la _grid_ de Bootstrap podremos lograrlo. Prestemos atención al siguiente ejemplo visual y particularmente a las cajas de colores que representan las distintas secciones de contenido del sitio web: 

![Diseño responsivo](imgBootstrap/disenoResponsivoAllMini.svg)

Si observamos con atención atención a la imagen anterior habremos apreciado como el contenido del sitio web (representado por las cajas de colores) se "reorganizó" para conseguir una mejor visualización dependiendo de la pantalla de cada dispositivo: _Desktop_ (Pc de escritorio), Tablet y _Mobile_ (Celular). Para cualquier caso, la _grid_ ofrece 12 columnas para organizar el contenidos. Miremos ahora cada caso en particular para comprender mejor el concepto:

![Diseño responsivo](imgBootstrap/disenoResponsivoAllLabeled.svg)

En todo los ejemplos se han utilizado etiqueteas semánticas HTML como `header`, `main`, `aside`, `article` y `footer` para organizar el contenido del hipotético sitio web. 