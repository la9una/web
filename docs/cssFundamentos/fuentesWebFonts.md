# Usando webfonts
A grandes rasgos podemos decir que existen dos maneras de emplear _webfonts_ en el diseño tipográfico de una página web: 

1. Vinculándolas desde un sitio web que proporcione las fuentes de manera externa
2. Incluyéndolas en nuestro propio sitio web 

## Vinculando fuentes desde un sitio web externo


## Usando 
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

La directiva `url()` permite cargar fuentes externas y pueden contener una sugerencia de `format()` opcional que indique el formato de la fuente a la que se hace referencia en la URL proporcionada.

!!!note "Nota"
	El orden en el que se especifican las variantes de las fuentes es importante. El navegador selecciona el primer formato compatible. Por lo tanto, si deseamos que los navegadores más nuevos usen WOFF2, tenemos que poner la declaración de WOFF2 por encima de la de WOFF, etc.

La regla `@font-face` nos permite, además, definir un [intervalo de valores Unicode](https://www.w3.org/TR/css-fonts-3/#descdef-unicode-range) admitidos para cada definición de estilo. Esto nos permite dividir una fuente Unicode grande en subconjuntos más pequeños (por ejemplo, los subconjuntos latino, cirílico y griego) y solo descargar los glifos requeridos para representar el texto en una página determinada.

!!!note "Nota"

	El uso de subconjuntos del intervalo Unicode y archivos independientes para cada variante de tipografía nos permite definir una familia de fuentes combinada cuya descarga es más rápida y más eficiente. El visitante solo descargará las variantes y los subconjuntos que necesita, y no está obligado a descargar subconjuntos que quizá nunca vea ni use en la página. 

	Por ejemplo, la [familia de fuentes Noto de Google](https://www.google.com/get/noto/?hl=es-419) apunta a admitir todos los idiomas del mundo. No obstante, el tamaño total del archivo ZIP de Noto, con todos los idiomas incluidos, supera los 130 MB.
