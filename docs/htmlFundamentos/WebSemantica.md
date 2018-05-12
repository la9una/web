## Web semántica
Existen algunas **etiquetas HTML que no poseen relación directa con la apariencia de una página** sino que **indican el tipo de contenido de una página, su significado. Se trata de las _etiquetas semánticas_**, incluidas en la [última definición de HTML (HTML 5)](https://developer.mozilla.org/es/docs/HTML/HTML5/HTML5_lista_elementos#Secciones). 

A grandes rasgos podríamos destacar las principales etiquetas semánticas: 

![HTML Semantico](imgHTMLFundamentos/html5semantico.png)

### Ejercicio 12

A continuación vamos a crear un nuevo archivo llamado `ejercicio12.html` para exhibir un ejemplo del modo de uso de dichas etiquetas: 

```html linenums="1"
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



| Etiqueta                               | Descripción                                                  |
| -------------------------------------- | ------------------------------------------------------------ |
| `<section>`                            | Define una sección en un documento.                          |
| `<nav>`                                | Define una sección que solamente contiene enlaces de navegación. |
| `<article>`                            | Define contenido autónomo que podría existir independientemente del resto del contenido. |
| `<aside>`                              | Define algunos contenidos vagamente relacionados con el resto del contenido de la página. Si es removido, el contenido restante seguirá teniendo sentido. |
| `<header>`                             | Define la cabecera de una página o sección. Usualmente contiene un logotipo, el título del sitio Web y una tabla de navegación de contenidos. |
| ` <h1>, <h2>, <h3>, <h4>, <h5> y <h6>` | Los elemento de cabecera  implementan seis niveles de cabeceras de documentos; `<h1>` es la de mayor y `<h6>` es la de menor impotancia. Un elemento de cabecera describe brevemente el tema de la sección que introduce. |
| `<footer>`                             | Define el pie de una página o sección. Usualmente contiene un mensaje de derechos de autoría, algunos enlaces a información legal o direcciones para dar información de retroalimentación. |
| `<address>`                            | Define una sección que contiene información de contacto.     |
| `<main>`                               | Define el contenido principal o importante en el documento. Solamente existe un elemento `<main>` en el documento. |