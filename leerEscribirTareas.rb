require 'pry'
# load task:
  # input: file
    # 1,Hacer tareas,true
    # 2,Lavar ropa,false
  # Output:
    # [
    #   { id: 1, name: "Hacer tareas", done: true },
    #   { id: 2, name: "Lavar ropa", done: false }
    # ]

def load_task(file)
  tareas = []
  if File.exists?(file)
    file = File.open(file, 'r')
    File.open(file, 'r') do |file|
      file.each do |line|
        line = line.split(',').map(&:strip)
        tareas << {id: line[0].to_i, name: line[1], done: line[2] == 'true'}
      end
    end
    tareas
  else
    tareas
  end
end

def save_task(file, tareas)
  File.open(file, 'w+') do |file|
    tareas.each do |tarea|
      line = []
      tarea.each do |key, value|
        line << value
      end
      file.puts line.join('')
    end
  end
end

# Forma sencilla
def save_task(file, tareas)
  File.open(file, 'w+') do |file|
    tareas.each do |tarea|
      file.puts "#{tarea[:id]},#{tarea[:name]},#{tarea[:done]}"
    end
  end
end

# Solucion mal hecha
def save_tasks file_name, array
 array.each do |val|
   hash = val.values.join(",")
   puts "#{hash}"
   File.open(file_name, 'w') do |file|
     file.write(hash)
   end
 end
end

save_tasks('tasks.txt', [
 { id: 1, name: "Hacer tareas", done: true },
 { id: 2, name: "Lavar ropa", done: false }
])

# p load_task('tareas.txt')
save_task('tareas.txt', [
    { id: 1, name: "Hacer tareas", done: true },
    { id: 2, name: "Lavar ropa", done: false }
])
