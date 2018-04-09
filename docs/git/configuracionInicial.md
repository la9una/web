Antes de comenzar a usar Git es necesario realizar algunas configuraciones previas relacionadas con información del usuario que ejecutará el sistema de control de versiones. 

!!!tip "Configuración del entorno"
		Los pasos que se describen en esta sesión sólo deben realizarse **una sola vez** en tu computadora y se mantendrán siempre, aunque es posible modificar la información en cualquier momento, volviendo a ejecutar los comandos correspondientes.

###Tu Identidad
Lo primero que deberás hacer cuando instales Git es establecer tu nombre de usuario y dirección de correo electrónico. Esto es importante porque los "commits" de Git usan esta información, y es introducida de manera inmutable en los commits que envías. 

Para _setear_ tu nombre: 

```bash
git config --global user.name "Tu nombre"
```
Y hacer lo propio con tu dirección de correo electrónico: 

```bash
git config --global user.email tuemail@ejemplo.com
```
### Trabajando detrás de un proxy
Podemos configurar nuestra conexión remota, cuando nos ubicamos detrás de un servidor proxy

```bash
git config --global http.proxy http://[usuario]:[contraseña]@[servidor]:[puerto]
```

Donde: 

* [usuario] Es el nombre de usuario en el servidor proxy
* [contraseña] Es la contraseña de usuario del servidor proxy
* [servidor] Es la dirección IP o nombre de dominio del servidor proxy
* [puerto] Es el puerto con el que está configurado el servidor proxy

Si deseamos "limpiar" la configuración anterior del proxy, ejecutamos: 

```bash
git config --global --unset http.proxy
```
Finalmente, para verificar la configuración actual del proxy: 

```bash
git config --global --get http.proxy
```

Un ejemplo de aplicación para un servidor proxy sin autenticación: 

```bash
git config --global http.proxy http://192.168.0.250:3128
```


###Comprobando tu configuración
Podés comprobar qué valor utilizará Git para una clave específica ejecutando `git config <key>`:

```bash
$ git config user.name
```
Donde `<key>` es el valor que de la configuración que deseas consultar. 


Pero si querés comprobar toda tu configuración, podés usar el siguiente comando:

```bash
git config --list
```

!!!tip "Ayuda sobre Git"
		Es posible consultar desde la terminal ayuda sobre los comandos empleados por git. Para ello, ejecutamos: 

		`git help <comando>`

