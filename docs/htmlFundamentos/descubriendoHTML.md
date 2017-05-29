Nos introduciremos en el **estudio de los fundamentos de HTML a través de ejercicios**. 
La propuesta consiste en transcribir los **fragmentos de código** que se ofrecen en cada ejercicio, evitando copiar y pegar el código. 

!!!done "Previsualización" 
    Deberás guardar cada ejercicio con un nombre seguido de la extensión `.html`. Para previsualizar los resultados de tu trabajo, deberás abrir tus archivos con tu navegador favorito. 


## Estructura del documento
En los ejercicios siguientes aprenderás cuál es la estructura de un documento HTML y cuáles son las etiquetas básicas que lo componen.  


### Ejercicio 1
Abrí el editor de texto y transcribí el siguiente código: 

```html
<!DOCTYPE html>
<html>
    <head>
      <title>Ejercicio 1</title>
    </head>
    <body>
      Hola mundo!
    </body>
</html>
```

Guardalo con el nombre de `ejercicio1.html`. Luego, abrí el archivo con tu navegador.

!!!done "¡Felicitaciones!" 
    En este ejercicio escribimos la estructura básica de un documento HTML.

Ahora respondé las siguientes preguntas: 

1. ¿Qué es lo que ves en el cuerpo de la página? 
2. ¿Qué pasó con la leyenda "Ejercicio 1"?

Como podrás observar, lo que se visualiza en la página es aquello que se encuentra entre las etiquetas `<body></body>`. El texto que aparece en la barra de título de navegador es aquel que escribimos dentro de las etiquetas `<head></head` (particularmente de la etiqueta `<title></title>` que está ubicada dentro de la etiqueta `<head></head>`)

>  

### Ejercicio 2 
Este ejercicio consta de dos partes. En primer lugar, deberás copiar el siguiente código: 

```html
<!DOCTYPE html>
<html>
    <head>
      <title>Ejercicio 2</title>
    </head>
    <body>
      ¡Hola mundo! ¡Esta es mi segunda página!
    </body>
</html>
```
Guarda el archivo con el nombre `ejercicio2.html` y abrilo con el navegador: ¿Observás algo particular? 

Ahora, volvé a abrir el archivo con el editor de texto y agregá los siguientes fragmentos de código: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 2</title>
    </head>
    <body>
      ¡Hola mundo! ¡Esta es mi segunda página!
    </body>
</html>
```
¿Ocurrió algún cambio?

Efectivamente, el **atributo** **_charset_** le indica al navegador el conjunto (o mapa) de caracteres que debe emplear para mostrar la página. En el ejemplo, **UTF-8** permite, entro otros, caracteres propios del idioma español, como como las eñes (ñÑ), signos de exclamación de apertura (¡), etc. Por otro lado, el **atributo _lang_** le indica al navegador que el idioma del documento será el español. 


## Titulares y párrafos
Comenzamos a clasificar el texto de una página, colocándo títulos y separándolo en párrafos. 

### Ejercicio 3 
Abrí el editor de texto y copiá el siguiente código: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 3</title>
    </head>
    <body>
      <h1>Hola mundo!</h1>
      <h2>Hola mundo!</h2>
      <h3>Hola mundo!</h3>
      <h4>Hola mundo!</h4>
      <h5>Hola mundo!</h5>
      <h6>Hola mundo!</h6>
    </body>
</html>
```
Guarda el archivo con el nombre `ejercicio3.html` y abrilo con el navegador. 

¿Qué función cumplen las etiquetas `h1` a `h6`? 

### Ejercicio 4 
Abrí el editor de texto y copiá el siguiente código: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 4</title>
    </head>
    <body>
      Esta es una línea de texto. 

      Esta es otra línea de texto. ¿Se ubicará debajo de la primera?
    </body>
</html>
```
Guarda el archivo con el nombre `ejercicio4.html` y abrilo con el navegador. 

1. ¿Cómo se visualizan ambas líneas de texto?
2. Ahora, volvé a abrir el archivo con el editor de texto e ingresá entre ambas líneas de texto varios espacios en blanco (presionando la tecla Enter). Guardá el archivo y abrilo con el navegador ¿Ahora, como se visualizan las líneas de texto? ¿A qué conclusión llegás?
3. Por útimo, volvé a abrir el archivo con el editor de texto y escribí: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 4</title>
    </head>
    <body>
        <p>Esta es una línea de texto.</p>
        <p>Esta es otra línea de texto. Se ubicará debajo de la primera?</p>
	</body>
</html>
```
4. ¿Observás algún cambio?

Como habrás podido observar, las línea inferior se muetra ahora en un "nuevo renglón". Esto fue posible gracias a la **etiqueta párrafo** (`<p></p>`) que encierra el texto de un párrafo determinado. 

## Listas y tablas
En los ejercicios anteriores aprendimos como jerarquizar y organizar el texto. En ocasiones nos encontraremos ante la necesidad de presentar información de una manera ordenada y de rápida lectura. Para ello existen las listas y tablas. 

### Ejercicio 5

Abrí el editor de texto y copiá el siguiente código: 

```html
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 5</title>
    </head>
    <body>
		<ul>
    		<li>Cuaderno</li>
          	<li>Lapicera</li>
          	<li>Goma</li>
          	<li>Pendrive</li>
      	</ul>
      
      	<ol>
    		<li>Bebe</li>
          	<li>Niño</li>
          	<li>Adolescente</li>
          	<li>Joven</li>
      	</ol>
    </body>
</html>
```

Guarda el archivo con el nombre `ejercicio5.html` y abrilo con el navegador. 

1. ¿Qué estructura se visualiza en la página?
2. ¿Qué diferencia aparecen en ambas estructuras?

Acabá de crear listas. Éstas pueden ser de dos tipos: 

* Listas desordenadas `ul`(**U**nordered **L**ist ) 

* Listas ordenadas `ol` (**O**rdered **L**ist)

3. Intentá identificar cuáles son las listas ordenadas y cuáles las desordenadas. 

En ambos casos, la etiqueta `li` (**Li**st) indica los elemtos que conforman la lista. 

### Ejercicio 6
Abrí el editor de texto y transcribí el siguiente código: 

```html
<!DOCTYPE html>
<html>
    <head>
      <title>Ejercicio 8</title>
    </head>
    <body>
      <table>
      
        <tr>
          <td>Celda 1</td>
          <td>Celda 2</td>
          <td>Celda 3</td>
        </tr>
        
        <tr>
          <td>Celda 4</td>
          <td>Celda 5</td>
          <td>Celda 6</td>
        </tr>
      
      </table>
    </body>
</html>
```

Guardalo con el nombre de `ejercicio8.html`. Luego, abrí el archivo con tu navegador y respondé las siguientes preguntas: 

1. ¿Qué es lo que lo que exhibe el navegador? 
2. Observá las etiquetas y respondé: ¿qué función cumplen las etiquetas `<tr>` y `<td>`

Efectivamente, acabás de crear una tabla, donde las etiquetas **`<tr>` representan a las columnas** y la etiquetas **`<td>` forman las filas** de la tabla. 

¿Que no se aprecia bien la tabla? Probá agregándole un borde, incluyendo el siguiente código dentro de la etiqueta `<table>`, según: 

```html
<!DOCTYPE html>
<html>
    <head>
      <title>Ejercicio 8</title>
    </head>
    <body>
      <table border="1">
      
        <tr>
          <td>Celda 1</td>
          <td>Celda 2</td>
          <td>Celda 3</td>
        </tr>
        
        <tr>
          <td>Celda 4</td>
          <td>Celda 5</td>
          <td>Celda 6</td>
        </tr>
      
      </table>
    </body>
</html>
```

## Enlaces
Los documentos de hipertexto o páginas webs no serían tales si no estuviesen vinculadas unos con otros posibilitando, de esta manera, la navegación entre la abundante y vasta información disponible en internet. La etiqueta HTML que permite estas conexiones se conoce como enlace o _link_. 

### Ejercicio 7
Abrí el editor de texto y transcribí el siguiente código: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 6</title>
    </head>
    <body>
		Si hacés clic <a href="enlace.html">sobre este enlace</a> viajarás hacia otra dimesión. 
    </body>
</html>
```
Guarda el archivo con el nombre `ejercicio6.html`. Ahora, con el editor abierto, creá otro archivo con el siguiente contenido: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 6</title>
    </head>
    <body>
    	<h3>Bienvenido</h3>
		Hola! Soy otra página. 
		Mejor vuelvo a <a  href="ejercicio6.html">la página anterior</a>. 		  Chau! 
    </body>
</html>
```
Guardalo con el nombre `enlace.html`.  Ahora abrí cualquiera de los dos documentos creados con el navegador. 

* Hacé clic sobre el texto color azul repetidas veces ¿Qué ocurre? 

Acabás de crear un enlace o _link_ que, en este caso, comunica dos documentos distintos. Para ello nos hemos valido de la etiqueta `<a></a>` donde en el **atributo href** hemos indicado la página a la cual queremos _que nos lleve el enlace_. 

* Cambiá el valor de `href` por una dirección web. Por ejemplo, `www.google.com`.  Guardá los cambios y abrí el documento con el navegador haciendo clic en el enlace ¿Qué ocurre?


## Imágenes
Vivimos en la era de la imagen y los sitios webs propagan millones de instantáneas a lo largo y ancho de internet. En estos ejercicios aprenderemos a insertar imágenes en los documentos HTML. 


### Ejercicio 8
Descargá la siguiente imagen: 

![](html5.png)

Luego, abrí el editor de texto y transcribí el siguiente código: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 7</title>
    </head>
    <body>
    	<h3>Este es el ejercicio 7</h3>
		<img src="html5.png" /> 
    </body>
</html>
```

Guarda el archivo con el nombre `ejercicio7.html`. 

> Importante: deberás guardar la imagen en el mismo lugar que `ejercicio7.html`

* Abrí el docuemento con un navegador. ¿Qué observás?

Como habrás notado, la etiqueta `img` se emplea para vincular imágenes al documento. El **atributo src** se emplea para indicar el nombre (y eventualmente la ubicación) de la imagen. 

Si te fijaste bien, la etiqueta se _autocierra_ es decir, no posee una etiqueta para la apertura y otra para el cierre. 

Otra etiqueta que se _autocierra_ es `<br />` conocida como **_breaking rule_**.  Agregala en el documento anterior, según: 

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 7</title>
    </head>
    <body>
    	<h3>Este es el ejercicio 7</h3>
    	<br />
    	<br />
    	<br />
    	<br />
    	<br />
		<img src="html5.png" /> 
    </body>
</html>
```

* Según tu parecer, ¿cuál es la función de la etiqueta `<br />`?

## Formularios
Los formularios permiten que el usuario interactúe con la página web mediante la introducción de información que luego será procesada por el servidor web y elaborará una respuesta.  

### Ejercicio 9

Para poder interactuar con la página es necesario el empleo de **formularios**. Éstos, a su vez, presentan **distintos tipos de campos dependiendo del tipo de información que se desea ingresar**. 

Copiá el siguiente código y guardalo con el nombre `ejercicio9.html`:

```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 9</title>
    </head>
    <body>

    <!-- Inicio del formulario -->
    <form>
      Usuario:
        <input type="text" placeholder="Ingresá tu usuario" />
        <br />
        Contraseña: 
        <input type="password" placeholder="Ingresá tu contraseña" />
    <br />
        <input type="submit" value="Enviar" />
    </form>
    <!-- Fin del formulario -->
    </body>
</html>
```
1. ¿Cuál es la etiqueta para crear un formulario?
2. En el formulario se emplean **tres tipos de campos**: `text`, `pasword` y `submit`. ¿Qué función creés que cumple cada uno de ellos?
3. ¿Cuál es la función del _placeholder_?
4. Si bien no forma parte del formulario, en el código se visualiza la siguiente estructura `<!-- Texto -->` Según tu parecer, ¿cuál es la función que cumple?

> Importante: para que un sitio web **procese la información** que recibe mediante un formulario es necesario emplear lenguajes de programación que actúan _del lado del servidor_ como PHP, Ruby, NodeJs, Angular, etc. 

### Ejercicio 10

En este ejercicio, deberás crear un archivo con el siguiente código, guardandolo con el nombre de `ejercicio10.html`. En el código se listan los diferentes tipos de campos que emplean los formularios para recabar información por parte del usuario: 


```html
<!DOCTYPE html>
<html lang=es>
    <head>
      <meta charset="UTF-8">
      <title>Ejercicio 10</title>
    </head>
    <body>
    
    <h1>Formularios</h1>
    <h3>Tipos de campos para el ingreso de datos</h3>

    <!-- Inicio del formulario -->
    
    <form>
        <p>Campo de texto</p>
        <input type="text"/>

        <p>Campo de texto (con sugerencia)</p>
        <input type="text" placeholder="Un texto por acá" />

        <p>Campo de contraseña</p>
        <input type="password" />

        <p>Selector numérico</p>
        <input type="number" value="5" min="1" max="10" />

        <p>Selector de rango</p>
        <input type="range" min="0" max="100" />

        <p>Selector de color</p>
        <input type="color" />
        
        <p>Selector de fecha</p>
        <input type="date" />

        <p>Área de texto</p>
        <textarea rows="10" cols="30"></textarea>

        <p>Botones de radio</p>
        <input type="radio" name="equipo" value="boca" checked />Boca Juniors
        <br />
        <input type="radio" name="equipo" value="banfield" />Banfield
        <br />
        <input type="radio" name="equipo" value="otros" />Otros

        <p>Botones de opción</p>
        <input type="checkbox" name="bicicleta" value="bicicleta" />Bicicleta
        <br />
        <input type="checkbox" name="automovil" value="automovil" />Automóvil
        <br />
        <input type="checkbox" name="colectivo" value="colectivo" checked />Colectivo

        <p>Selector</p>
        <select>
            <option>Comida Italiana</option>
            <option>Comida China</option>
            <option selected="selected">Comida Japonesa</option>
        </select>

        <p>Campo de email</p>
        <input type="email" name="email" />
     
        <p>Botón</p>
        <input type="button" onclick="alert('Hola mundo!')" value="Hacé clic" />

        <p>Botón de reseteo</p>
        <input type="reset" value="Limpiar"/>

        <p>Campo de envío (submit)</p>
        <input type="submit" value="Enviar" />

    </form>
    <!-- Fin del formulario -->
      
    </body>

</html>
```

1. Hacé una lista de todos los tipos de campos, indicando tipo y función
2. Algunos campos poseen opciones adicionales. Identificá cuáles son y su función. 


## Otros elementos


### Ejercicio 11

Copiá el siguiente código y guardalo con el nombre `ejercicio11.html`:

```html
<!DOCTYPE html>
<html>
    <head> 
      <meta charset="UTF-8">
      <title>Ejercicio 11</title>
    </head>
    <body>
    <span>Número 1</span>
    <span>Número 2</span>
    <span>Número 3</span>
    <div>Letra A</div>
    <div>Letra B</div>
    <div>Letra C</div>
    </body>
</html>
```
1. En el ejemplo, hemos empleado dos tipos de etiquetas: `<span>` y `<div>` ¿Cuál es la diferencia visible entre ellas?

2. Los **elementos en bloque (block)** son aquellos que generan un nuevo renglón al ser empleados. Los elementos que pueden colocarse uno al lado del otro sin generar un nuevo renglón se conocen como **elementos en línea (inline)**. ¿A qué grupo pertenecen las etiquetas `<span>` y `<div>`?.



### Ejercicio 12

En este último ejercicio se mostrará el uso de algunas **etiquetas HTML que no poseen relación directa con la apariencia de una página** sino que **indican el tipo de contenido de una página, su significado. Se trata de las _etiquetas semánticas_**, incluidas en la [última definición de HTML (HTML 5)](https://developer.mozilla.org/es/docs/HTML/HTML5/HTML5_lista_elementos#Contenido_incrustado). 

A grandes rasgos podríamos destacar las principales etiquetas semánticas: 

![](html5semantico.png)

A continuación vamos a crear un nuevo archivo llamado `ejercicio12.html` para exhibir un ejemplo del modo de uso de dichas etiquetas: 

```html
<!DOCTYPE html>

<html lang="es">
<head>
  <meta charset="UTF-8" />
  <title>Web semántica</title>
</head>
<body>

<main>

  <header>
      <h1>Hardware Tech</h1>
      <h2>Empresa líder en insumos informáticos</h2>
    <nav>
    <ul>
      <li><a href="inicio.html">Inicio</li>
      <li><a href="somos.hmtl">Quienes somos</li>
      <li><a href="productos.html">Productos</li>
    </ul>
  </nav>
  </header>

<section>
    <article>
      <h2>Noticia A</h2>
        <p>Contenido de la Noticia A.</p>
    </article>

    <article>
      <h2>Noticia B</h2>
      <p>Contenido de la Noticia B.</p>
    </article>
</section>

<section>
  <article>
  <h1>Productos</h1>
  <ul>
    <li>Accesorios</li>
    <li>Hardware</li>
    <li>Software</li>
  </ul>
    <footer>
        <p>Catálogo actualizado al 23 de marzo de 2017</p>
      </footer>
  </article>
</section>

<section>
  <footer>
    <address>
        <a href="http://www.misitio.com/contacto">Contacto</a><br />
      Hardware Tech<br />
        Empedrado 1981<br />
        (1832)Lomas de Zamora<br />
      </address>
  </footer>
</section>

<aside>
  <p>Visitá nuestro Blog</p>
    <p>Seguinos en Twitter</p>
</aside>

</main>

</body>
</html>
```

Donde:



| Etiqueta                               | Descripción                              |
| -------------------------------------- | ---------------------------------------- |
| `<section>`                            | Define una sección en un documento.      |
| `<nav>`                                | Define una sección que solamente contiene enlaces de navegación. |
| `<article>`                            | Define contenido autónomo que podría existir independientemente del resto del contenido. |
| `<aside>`                              | Define algunos contenidos vagamente relacionados con el resto del contenido de la página. Si es removido, el contenido restante seguirá teniendo sentido. |
| `<header>`                             | Define la cabecera de una página o sección. Usualmente contiene un logotipo, el título del sitio Web y una tabla de navegación de contenidos. |
| ` <h1>, <h2>, <h3>, <h4>, <h5> y <h6>` | Los elemento de cabecera  implementan seis niveles de cabeceras de documentos; `<h1>` es la de mayor y `<h6>` es la de menor impotancia. Un elemento de cabecera describe brevemente el tema de la sección que introduce. |
| `<footer>`                             | Define el pie de una página o sección. Usualmente contiene un mensaje de derechos de autoría, algunos enlaces a información legal o direcciones para dar información de retroalimentación. |
| `<address>`                            | Define una sección que contiene información de contacto. |
| `<main>`                               | Define el contenido principal o importante en el documento. Solamente existe un elemento `<main>` en el documento. |




