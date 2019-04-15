## Bordes
El modelo de caja de CSS permite asignar diversos estilos para los bordes: `border-width` para definir el ancho del borde, `border-color` para establecer el color del borde y finalmente  `border-style` para indicar tipo de borde de la caja. 

### `border-width`

Los valores de la anchura de los bordes se pueden indicar mediante una medida o mediante las palabras clave thin (borde delgado), medium (borde normal) y thick (borde ancho):

| Propiedad           | Descripción                  | Valor                                                        |
| ------------------- | ---------------------------- | ------------------------------------------------------------ |
| `border-top-width`    | Anchura del borde superior   | <medida\> \| thin \| **medium** \| thick \| inherit       |
| `border-right-width`  | Anchura del borde derecho    | <medida\> \| thin \| **medium** \| thick \| inherit       |
| `border-bottom-width` | Anchura del borde inferior   | <medida\> \| thin \| **medium** \| thick \| inherit       |
| `border-left-width`   | Anchura del borde izquierdo  | <medida\> \| thin \| **medium** \| thick \| inherit       |
| `border-width`        | Anchura de los cuatro bordes | <medida {1-4}\> \| thin \| **medium** \| thick \| inherit |

_Nota: el valor por defecto de la propiedad aparece resaltado en negrita._

La propiedad `border-width` permite indicar entre uno y cuatro valores, estos pueden ser indistintamente medidas o las palabras clave `thin`, `medium` y `thick`. El número de valores indicado `{1-4}` significa lo siguiente:

* Si se indica **un valor**: Se aplica a los cuatro bordes.
* Si se indican **dos valores**: El primero se aplica al borde superior e inferior, y el segundo al borde izquierdo y derecho.
* Si se indican **tres valores**: El primero se aplica al borde superior, el segundo a los bordes izquierdo y derecho, y el tercero al borde inferior.
* Si se aplican **cuatro valores**: El orden de aplicación es superior, derecho, inferior, izquierdo.


### `border-color`

### `border-style`
Hace referencia al tipo de línea que llevará la caja. Puede tomar valores como: ¨none | hidden | dotted | dashed | solid | double | groove | ridge | inset | outset¨. 

Ejemplo: 

```css
div {
border-style: dotted;
}
```



### `border-radius`




