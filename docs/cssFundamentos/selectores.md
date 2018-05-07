## Selectores de elementos
Los selectores de elementos apuntan a etiquetas HTML. Para ello, en el documento CSS se escribe el nombre de la etiqueta. 

| Etiqueta HTML (ejemplo)   | Código CSS (ejemplo) |
| ------------------------- | -------------------- |
| `<p>Este es un párrafo</p>` | `p {font-size: 12px;}` |
| `<h1>Título</h1>` | `h1 {color: teal;}` |
| `<div>Un contenido por acá</div>` | `div {background-color: peach;}` |

## Selectores `id` y `class`
Los selectores `id` y `class` apuntan a los valores de los atributos homónimos. 

Para apuntar a un `id` de HTML, en el documento CSS se escribe el signo de numeral (#), seguido de su valor.

| Etiqueta HTML (ejemplo)   | Código CSS (ejemplo) |
| ------------------------- | -------------------- |
| `<p id="miparrafo">Este es un párrafo</p>` | `#miparrafo {font-size: 12px;}` |
| `<h1 id="titulo">Título</h1>` | `#titulo {color: teal;}` |

Para apuntar a una `class` de HTML, en el documento CSS se escribe el signo de punto (.), seguido de su valor

| Etiqueta HTML (ejemplo)   | Código CSS (ejemplo) |
| ------------------------- | -------------------- |
| `<p class="miparrafo">Este es un párrafo</p>` | `.miparrafo {font-size: 12px;}` |
| `<h1 class="titulo">Título</h1>` | `.titulo {color: teal;}` |

!!!done "Sobre el uso de `id` y `class`"
		Un mismo selector de tipo `id` puede usarse por única vez en el documento HTML. En cambio un selector de tipo `class` puede usarse sin límite en la misma página. 
