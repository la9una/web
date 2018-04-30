# El sistema de rejilla o _Grid system_ de Bootstrap
En los inicios de internet, los diversos elementos que conforman una página web se organizaban empleando tablas HTML. Más tarde, el uso de tablas se dejó de lado por las cajas flotantes CSS. Al día de hoy, con la llegada de CSS 3, los diseñadores web hacen uso del módulo Flexbox CSS. Botstrap toma lo mejor de este módulo y le suma un conjunto de "buenas prácticas" de diseño que confluyen en el poderoso sistema de rejilla o _grid_.

## ¿En qué consiste la _grid_ de Bootstrap?
Básicamente consiste en 12 columnas que se emplean a modo de guías "invisibles" para ubicar los distintos elementos de una página web. 

![Bootstrap Grid System](imgBootstrap/bGrid12Columns.jpg)

Imaginemos por un momento un sitio web cualquiera y como diseñadores necesitamos que el contenido del mismo se visualice bien en cualquier dispositivo. Utilizando la _grid_ de Bootstrap podremos lograrlo. Prestemos atención al siguiente ejemplo visual y particularmente a las cajas de colores que representan el contenido del sitio web: 

![Diseño responsivo](imgBootstrap/disenoResponsivoAllMini.svg)

Si observamos con atención atención a la imagen anterior habremos apreciado como el contenido del sitio web (representado por las cajas de colores) se "reorganizó" para conseguir una mejor visualización dependiendo de la pantalla de cada dispositivo: _Desktop_ (Pc de escritorio), Tablet y _Mobile_ (Celular). Para cualquier caso, la _grid_ ofrece 12 columnas para organizar el contenidos. Miremos ahora cada caso en particular para comprender mejor el concepto:

![Diseño responsivo](imgBootstrap/disenoResponsivoAllLabeled.svg)

En todo los ejemplos se han utilizado etiqueteas semánticas HTML como `header`, `main`, `aside`, `article` y `footer` para organizar el contenido del hipotético sitio web. 


## ¿Cuáles son las ventajas de utilizar el sistema de rejilla a la hora de maquetar? 
El sistema de rejilla o _grid_ que proporciona el _framework_ Bootstrap permite:

* distribuir los elementos del sitio web fácilmente (maquetación del sitio web)

* crear un único sitio web que, empezando por la pantalla de un móvil, se adapte de manera "inteligente" a las pantallas de los distintos dispositivos. Esta técnica se conoce también como [diseño web responsivo o _responsive web design_](http://diseñowebresponsive.org/?utm_source=redirects&utm_medium=dise%25C3%25B1owebresponsivo.com.ar). 

![Diseño responsivo](imgBootstrap/responsive-web-design.png)
_Imagen: credofy.com_

**Descargá ejemplos de sitios responsivos**: [Ejemplo 1](descargas/theme_app_starter.zip) | [Ejemplo 2](descargas/theme_landing.zip)