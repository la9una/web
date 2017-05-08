# Usuarios y permisos

En sistemas tipo *nix los permisos que poseen los recursos del sistema son muy importantes en términos de seguridad. 

## Usuarios

Cuando en GNU/Linux creamos un **usuario**, automáticamente se crea un **grupo** y el usuario creado pertenece, por defecto, a dicho grupo. Además, el nombre del grupo coincide con el nombre del usuario.

Existen los **otros** usuarios del sistema. Esto se representa simbólicamente: 

|         | Usuario (User) | Grupo (Group) | Otros (Others) |
| ------- | -------------- | ------------- | -------------- |
| Símbolo | u              | g             | o              |

Donde, en relación a la propiedad de un recurso determinado:
* **u** (User), simboliza el usuario propietario del recurso, 
* **g** (Group), representa el grupo propietario del recurso,
* **o** (Others), que refieren al resto de los usuarios del sistema. 

### Creación de usuarios


## Permisos
Los permisos indican a cuáles recursos pueden acceder los usuarios y con que nivel de acceso pueden hacerlo. Cada tipo de permiso se puede representar con una letra y poseen un valor numérico fijo asignado:  

|         | Lectura (Read) | Escritura (Write) | Ejecucción (Execute) |
| ------- | -------------- | ----------------- | -------------------- |
| Símbolo | r              | w                 | x                    |
| Valor   | 4              | 2                 | 1                    |

Cada usuario o grupo puede poseer distintos niveles de acceso a los recursos. Estos niveles de acceso están dados por la capacidad de leer, escribir o ejecutar uno o varios recursos determinados.  

* **r** (Read), permiso de lectura
* **w** (Write) , permiso de escritura
* **x** (Execute), permiso de ejecucción





