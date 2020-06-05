# Formularios
Los formularios permiten que el usuario interactúe con la página web mediante la introducción de información que luego será procesada por el servidor web y elaborará una respuesta.  

### Ejemplo 9

Para poder interactuar con la página es necesario el empleo de **formularios**. Éstos, a su vez, presentan distintos tipos de campos dependiendo del tipo de información que se desea ingresar. 

Copiá el siguiente código y guardalo con el nombre `ejemplo_09.html`:

```html linenums="1" hl_lines="9 10 11 12 13 14 15 16 17"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejemplo 9</title>
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

!!! info "¿Qué hemos hecho?"
    Hemos creado un documento HTML que contiene un formulario simple. Los formularios son útiles para enviar información. 

??? question "¿Cuál es la función de las etiquetas `form` e `input`?"
    * La etiqueta `form` determina donde comienza y finaliza un formulario. 
    * La etiqueta `input` representa a los distintos elementos o _ítems_ que componen al formulario, de manera similar a la etiqueta [`li` de las listas](ListasTablas.md#ejemplo-5)

??? question "¿Cuál es la función de los atributos `type`, `placeholder` y `value`?"
    * El atributo más importante es sin duda `type`, puesto que determina el formato que tendrá un determinado campo del formulario con el fin de recabar la información que suministren los usuarios. Algunos tipos son: campo de texto, casillas de verificación, botones de radio, menú desplegable, calendario, etc. Para saber más, [podés consultar la documentación al respecto](https://developer.mozilla.org/es/docs/Web/HTML/Elemento/input).
    * `placeholder` se emplea para exhibir un texto adicional o de "ayuda para el usuario" en determinados campos de un formulario. 
    * `value` representa un valor a mostrar en pantalla. Generalmente está asociado al texto que llevan los botones. 


!!! warning "Importante"
    Para que sea posible procesar la información enviada a través de un formulario, es necesario emplear algún [lenguaje de programación](https://es.wikipedia.org/wiki/Lenguaje_de_programaci%C3%B3n). 


### Ejemplo 10

En este ejemplo, deberás crear un archivo con el siguiente código, guardandolo con el nombre de `ejemplo_10.html`. 

```html linenums="1"
<!DOCTYPE html>
<html lang=es>
  <head>
    <meta charset="UTF-8">
    <title>Ejemplo 10</title>
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

!!! info "¿Qué hemos hecho?"
    Hemos creado un documento HTML que exhibe distintos campos de formulario o `input`, utilizados para obtener información proporcionada por los usuarios. 