

## Media queries

```css
// Dispositivos extra pequeños (celular vertical, menos que 576px)
// No existe media query por ser el tamaño por defecto en Bootstrap

// Dispositivos pequeños (celular horizontal, 576px y más)
@media (min-width: 576px) { ... }

// Dispositivos medianos (tablets, 768px y más)
@media (min-width: 768px) { ... }

// Dispositivos grandes (escritorio, 992px y más)
@media (min-width: 992px) { ... }

// Dispositivos extra grandes (escritorio extra grande, 1200px y más)
@media (min-width: 1200px) { ... }
```

## Tamaño de pantalla del dispositivo

|   Pantalla   | Extra small | Small | Medium | Large | Extra large |
| :--- | :---------: | :---: | :----: | :---: | :---------: |
| Ancho total |    <576px  |      ≥576px       |    ≥768px     |    ≥992px      |     ≥1200px          |
| Ancho máximo del contenedor | Ninguno (auto) | 540px | 720px | 960px | 1140px |
| Prefijo de clase | `.col-` | `.col-sm-` | `.col-md-` | `.col-lg-` | `.col-xl-` |
| Número de columnas | 12 | 12 | 12 | 12 | 12 |
| Ancho de espaciado | 30px (15px a cada lado de la columna) | 30px (15px a cada lado de la columna) | 30px (15px a cada lado de la columna) | 30px (15px a cada lado de la columna) | 30px (15px a cada lado de la columna) |
| Encajable | Si | Si | Si | Si | Si |
| Permite ordenar columnas | Si | Si | Si | Si | Si |