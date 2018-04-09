# El uso de tipografías en el diseño web
En casi todas las páginas webs se incluye texto, en mayor o menor medida. Y es tarea del diseñador web estilizar las tipografías con que se mostrará dicho texto. 

El uso de tipografías en el diseño web siempre fue un problema. En los comienzos de internet, los navegadores sólo mostraban el texto de una página web con las tipografías que el usuario tenía instaladas en su sistema operativo (Windows, Mac, Linux, etc). Aunque esto sigue siendo así, con el tiempo se fueron encontrando soluciones a este problema, que permitieron dar mayor versatilidad a los diseños tipográficos en la web. 

Así, el uso de tipografías en el diseño web ha ido virando del caos inicial, pasando por las _safe web fonts_ hasta llegar a la actual definición `@font-face` de CSS. 

## Safe web fonts
Se trata de **tipos de letra o _fuentes_ que están presentes en la mayoría de los sistemas operativos**. Incluyendo estas fuentes en el diseño web se asegura la máxima compatibilidad entre sistemas operativos y navegadores. 

En el año 1996, Microsoft inició el proyecto [TrueType core fonts for the Web _(archivo)_](https://web.archive.org/web/20020124085641/http://www.microsoft.com/typography/fontpack/default.htm) mediante el cual ofrecía la distribución de un grupo de fuentes (con algunos derechos reservados) para internet. El proyecto finalizó en el año 2002. Dichas fuentes son:

* Andale Mono
* Arial
* Arial Black
* Comic Sans MS
* Courier New
* Georgia
* Impact
* Times New Roman
* Trebuchet MS
* Verdana
* Webdings

Aunque el proyecto terminó hace unos años, el catálogo de fuentes seguras quedó establecido, con [algunas fuentes más](https://www.w3schools.com/cssref/css_websafe_fonts.asp) que se sumaron luego. Y muchos diseñadores las siguen usando. 

Sin negar que las fuentes seguras constituyen un intento de solución (en términos de estandarización) al problema de la tipografía en el diseño web, se trata de una solución limitada, puesto que obliga a todos los sitios webs a emplear las mismas fuentes. 

El procedimiento habitual para definir el uso de una fuente en CSS es: 

```css
/* Utilizamos la fuente */
body {
	font-family: SafeWebFont;
}
```

## La regla @font-face
Las aparición de las _hojas de estilo en cascada o CSS_ permitieron el uso de cualquier tipo de fuente tipográfica para el diseño web, gracias a la regla CSS `@font-face`. Dicha regla constituyó desde su lanzamiento, una propuesta superadora a las _safe web fonts_. 

La sintaxis de la misma es la siguiente: 

```css
/* Definimos la fuente */
@font-face {
	font-family: nombreDeMiFuente;
	src: url(fuente.woff);
}

/* Utilizamos la fuente */
body {
	font-family: nombreDeMiFuente;
}
```

Esta regla CSS emplea tipografías diseñadas para la web que se conocen como _webfonts_. 

![@font-face | Soporte de los navegadores](imgFuentes/fontFaceCiu.png)
_Tomado de: [caniuse.com](https://caniuse.com/#feat=fontface)_

### Formatos de archivos para webfonts
Existen diferentes tipos de _webfonts_. Cada una con soporte variable en cada tipo de navegador, siendo la de tipo WOFF, la que se perfila como _webfont_ estándar. Estos tipos de archivo son: 

* TTF (True Type Format)
* OTF (Open Type Font)
* SVG Font
* EOT (Embedded Open Type)
* WOFF (Web Open Format)
* WOFF2 (Web Open Format, versión 2)

En el siguiente cuadro pueden verse los distintos formatos de archivo de _webfonts_ y la compatibilidad que presentan con los navegadores más populares. Los números indican a partir de cuál versión del navegador el formato de fuente es soportado: 

![Tipos de letra | Soporte de los navegadores](imgFuentes/fontFaceBrowserSupport.png)
_Tomado de: [w3schools.com](https://www.w3schools.com/css/css3_fonts.asp)_

### Optimizando la compatibilidad
Con el fin de preservar nuestras opciones tipográficas de manera que se vean siempre igual, sin importar el navegador del usuario, la regla `@font-face` debe escribirse de la siguiente manera: 

```css
@font-face {
  font-family: 'miFuente';
  font-style: normal;
  font-weight: 400;
  src: local('Mi Fuente'),
       url('/fonts/miFuente-l.woff2') format('woff2'), 
       url('/fonts/miFuente-l.woff') format('woff'),
       url('/fonts/miFuente-l.ttf') format('truetype'),
       url('/fonts/miFuente-l.eot') format('embedded-opentype');
  unicode-range: U+000-5FF; /* Glifos latinos */
}

@font-face {
  font-family: 'miFuente';
  font-style: italic;
  font-weight: 700;
  src: local('Mi Fuente'),
       url('/fonts/miFuente-l-700.woff2') format('woff2'), 
       url('/fonts/miFuente-l-700.woff') format('woff'),
       url('/fonts/miFuente-l-700.ttf') format('truetype'),
       url('/fonts/miFuente-l-700.eot') format('embedded-opentype');
  unicode-range: U+3000-9FFF, U+ff??; /* Glifos Japoneses */

}
```
_Tomado de: [developers.google.com](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/webfont-optimization?hl=es-419)_

Los ejemplos anteriores definen una familia llamada _Mi Fuente_ individual con dos estilos (normal e italic), y cada uno apunta a un conjunto diferente de recursos de fuente. Esto último se realiza para que la tipografía se visualice de igual modo independientemente del navegador, ya que cada uno de ellos priorizará un tipo de fuente determinado. 

La directiva `local()` permite hacer referencia a fuentes instaladas localmente (en el equipo del usuario), cargarlas y usarlas.

La directiva `url()` permite cargar fuentes externas y pueden contener una sugerencia de format() opcional que indique el formato de la fuente a la que se hace referencia en la URL proporcionada.

!!!note "Nota"
	El orden en el que se especifican las variantes de las fuentes es importante. El navegador selecciona el primer formato compatible. Por lo tanto, si deseamos que los navegadores más nuevos usen WOFF2, tenemos que poner la declaración de WOFF2 por encima de la de WOFF, etc.

La regla `@font-face` nos permite, además, definir un [intervalo de valores Unicode](https://www.w3.org/TR/css-fonts-3/#descdef-unicode-range) admitidos para cada definición de estilo. Esto nos permite dividir una fuente Unicode grande en subconjuntos más pequeños (por ejemplo, los subconjuntos latino, cirílico y griego) y solo descargar los glifos requeridos para representar el texto en una página determinada.

!!!note "Nota"

	El uso de subconjuntos del intervalo Unicode y archivos independientes para cada variante de tipografía nos permite definir una familia de fuentes combinada cuya descarga es más rápida y más eficiente. El visitante solo descargará las variantes y los subconjuntos que necesita, y no está obligado a descargar subconjuntos que quizá nunca vea ni use en la página. 

	Por ejemplo, la [familia de fuentes Noto de Google](https://www.google.com/get/noto/?hl=es-419) apunta a admitir todos los idiomas del mundo. No obstante, el tamaño total del archivo ZIP de Noto, con todos los idiomas incluidos, supera los 130 MB.


# Elegir una tipografía
Hay varias cuestiones a tener en cuenta a la hora de elegir un estilo tipográfico para nuestros diseños. Entre los más importantes están: 

* Fuentes especialmente diseñadas para visualización en pantalla
* Proporción entre la altura de los caracteres o _altura de las x_
* Caracteres _abiertos_ antes que _cerrados_

