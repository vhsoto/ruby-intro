# ActiveRecord Todos

## Resumen

La idea de este reto es construir una aplicación de Todos usando una base de datos y la linea de comando. Tendrás que usar todo lo que haz aprendido hasta ahora, MVV, OOP, Ruby, AR, SQL.

Desde la perspectiva del usuario el producto final es muy parecido al que hiciste en el reto anterior de Todos. Todavía estamos usando la terminal y queremos tener algo que funcione de esta forma:

```text
$ ruby todo.rb add Bake a delicious blueberry-glazed cheesecake
$ ruby todo.rb list
$ ruby todo.rb delete <task_id>
$ ruby todo.rb complete <task_id>
```

## Pasos

### Paso 0:
* Abre la carpeta `ar_todos` donde esta el boilerplate.
* Corre el comando `bundle install` desde el root.
* Usa el comando `rake -T` para que puedas ver todas las tareas disponibles.
* Usa el archivo `todo.rb` en el root de la carpeta, este archivo va a funcionar como el punto de entrada de la aplicación.


###Paso 1 : Enumera las Responsabilidades

Empieza enumerando las responsabilidades, de nuestra aplicación TODO. Estas no son solo los comandos `add` `delete` etc. También son las responsabilidades del backend como leer y escribir del archivo `todo.db`, parsear los comandos de la terminal e imprimir la `interfaz` de consola.

Usa estas responsabilidades para crear pseudocodigo para tu program y para diseñar el esquema de la base de datos.

### Paso 2 : Construye la base de datos

* Crea y corre las migraciones para hacer el esquema. Asegurate antes de haber diseñado el esquema correctamente con todas sus asociaciones establecidas.

* Usa Faker para hacer un `seed` de la base de datos. Este código lo puedes poner dentro de `db/seeds.rb` y luego correr la tarea `rake db:seed`. Asegurate de poner `require 'faker'` al principio del archivo.

###Paso 3 : Implementa los comandos

#### Lista de comandos

Cuando corras...

```
$ ruby todo.rb list
```

La aplicación debe imprimir todos los TODOs. Por ejemplo:

```
$ ruby todo.rb list
1. Bake a delicious blueberry-glazed cheesecake
2. Write up that memo and fax it out
3. Conquer the world
```

Tienes que diseñar un controlador básico y un modelo para hacer que este código funcione. Por ejemplo como hace tu programa para saber que lo que el usuario quiere hacer es añadir una tarea a la lista ?

#### El comando Add

Requisitos:

- Un usuario puede añadir (append) una tarea a su lista de TODOs.

Debe funcionar así..

```text
$ ruby todo.rb add Walk the dog
Appended "Walk the dog" to your TODO list...
$
```

#### Comando Delete

Requisitos:

- Un usuario puede borrar una tarea especifica de su lista de TODOs.

Debe funcionar así..

```text
$ ruby todo.rb list
1. Bake a delicious blueberry-glazed cheesecake
2. Write up that memo and fax it out
3. Conquer the world

$ ruby todo.rb delete 3
Deleted "Conquer the world" from your TODO list...

$ ruby todo.rb list
1. Bake a delicious blueberry-glazed cheesecake
2. Write up that memo and fax it out

$
```

#### El comando Complete

Requisitos:

- Un usuario puede completar tareas especificas de su lista de TODOs.
- Un TODO completado se identifica como tal cuando el usuario usa el comando `list`.

##Optimize Your Learning

Esta aplicación tiene todas las partes de una aplicación MVC. Input del usuario, una vista para el usuario, y persistencia de datos. Ademas incluye todo el poder de Active Record para manipular la base de datos de TODOs.
