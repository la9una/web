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