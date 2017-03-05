# Todos

##Resumen

Desde la perspectiva de usuario, queremos construir una aplicación que funcione de la siguiente manera:

```text
$ ruby todo.rb add Bake a delicious blueberry-glazed cheesecake
$ ruby todo.rb list
$ ruby todo.rb delete <task_id>
$ ruby todo.rb complete <task_id>
```

Las tareas van a quedar guardadas en un archivo de texto, el cual simplemente guarda la descripción de las tareas, cada una en su propia linea. Mantén en mente que eventualmente vamos a querer agregarla mas información, por lo cual es posible que en el futuro queramos usar un archivo con formato CSV.

Ejemplo:  

```text  
Bake a delicious blueberry-glazed cheesecake  
Go play miniature golf with Mike Tyson  
Become a World-Class Developer  
```

##Pasos

###Paso 0 : Enumera las responsabilidades

Empieza enumerando las responsabilidades de tu aplicación. Estas no son solamente los comandos de la interfaz de usuario como `add`, `delete` etc . Son también las responsabilidades del back end como leer y escribir al archivo de texto `todo.txt` o csv `todo.csv`, parsear los los argumentos de la linea de comandos, e imprimir la `interfaz` en la consola.   

Cada responsabilidad debe mapearse a una unidad de código en Ruby. Por ejemplo:  

Responsabilidad                                                                     | En Código
-----------------------------------------------------------------------------------|------------------------------------
Initialize an empty TODO list                                                      | `list = List.new`
Add a task to a TODO list                                                          | `list.add(Task.new("walk the dog"))`
Get all the tasks on a TODO list                                                   | ` tasks = list.tasks`
Delete a particular task from a TODO list                                          | `???`
Complete a particular task on a TODO list                                          | `???`
Parse the command-line arguments and take the appropriate action                   | `???`
Parse the `todo.csv` file and wrap each entry in easier-to-manipulate Ruby objects | `???`


Hay mas responsabilidad que estas, cuales son ?

###Pasos 1 : Crea el código

Una vez tengas una lista solida de las responsabilidades puedes empezar a traducir cada una a código.
Asegurate de ir probando tu código con `driver code`

#### Implementa el comando `list`

Cuando se corre:

```text
$ ruby todo.rb list
```

la aplicación debe imprimir una lista de todos los TODOs. Por ejemplo:

```text
$ ruby todo.rb list
1. Bake a delicious blueberry-glazed cheesecake
2. Write up that memo and fax it out
3. Conquer the world
```

Tu tendrás que diseñar y construir un controlador y modelo básico que haga que esto funcione. Por ejemplo, como sabe tu programa que el usuario quiere añadir `add` una tarea a la lista?

#### Implementa el comando `add`

Requerimientos:

- Un usuario puede añadir (append) una tarea a su lista de TODOs.

Debe funcionar de la siguiente manera:

```text
$ ruby todo.rb add Walk the dog
Appended "Walk the dog" to your TODO list...
$
```

#### Implementa el comando `delete`

Requerimientos:

- Un usuario puede borrar una tarea especifica de la lista de TODOs.

Debe funcionar de la siguiente forma

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

#### Implementa la opción de completar tareas

Requerimientos:

- Un usuario puede completar tareas especificas de su lista de TODOs
- Una tarea completada debe ser identificable al usar el comando `list`

**Note**: Es posible que tengas que cambiar el formato de tu archivo y el código que lo parsea.

###Pasos 2 : Human Readable File

Here's the deal:  Google just LOVES your new command line todo app.  And they're ready to buy you out for millions if only you can change the CSV file to a human readable file, so that it can be printed out easily.  They also want the app to be able to handle commas in the task description - something a CSV file doesn't accommodate very easily.

Here's the way the file should be saved:

```text
1. [ ]  Bake a delicious blueberry-glazed cheesecake
2. [X]  Write up that memo and fax it out
3. [ ]  Conquer the world
```

*(the brackets indicate whether the task has been completed or not)*

What factors do you need to take into account to save this data correctly?  How does this change the parsing (besides not being able to use the CSV class)?  

Update your app to accommodate this new feature!

##Optimize Your Learning

Mantén en cuenta el [principio de una sola responsabilidad](http://en.wikipedia.org/wiki/Single_responsibility_principle)  [separación de dependencias](http://en.wikipedia.org/wiki/Separation_of_concerns)
