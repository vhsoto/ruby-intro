class NoOrangesError < StandardError
end

class OrangeTree
  attr_accessor :age, :height, :dead, :orange
  # Envejece el arbol
  def initialize
    @age = 0
    @height = 0
    @dead = false
    @oranges = []
  end
# condition = true

# unless !condition

# end
  def dead?
    if @age > 10
      @dead = true
    end
  end

  # Side effect
  def age!
    @age += 1
    @height += 2
    if @age > 3
      times = 1 + rand(4)
      times.times do
        @oranges << Orange.new(1 + rand(9))
      end
    end
  end

  # Devuelve true si hay naranjas en el arbol, false si no
  def any_oranges?
    !@oranges.empty?
  end


  def pick_an_orange!
  # Dispara un NoOrangesError de lo contrario
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    # Logica para sacar naranjas va aca
    @oranges.pop
  end
end

class Orange
    attr_accessor :diameter
  # Crea una naranja con determinado +diameter+
  def initialize(diameter)
      @diameter = diameter
  end
end


######## DRIVER CODE ###########

tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "El arbol tiene #{tree.age} años y mide #{tree.height} metros"

until tree.dead?
  basket = []

  # Pone las naranjas en la canasta
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end


  avg_diameter = basket.map { |orange| orange.diameter}
  avg_diameter = avg_diameter.reduce(:+) / basket.length

  puts "Reposte Año #{tree.age}"
  puts "Altura arbol: #{tree.height} metros"
  puts "Cosecha: #{basket.size} naranjas con un diametro promedio de #{avg_diameter} cm"
  puts ""

  # Envejeze el arbol en 1 año
  #
  tree.age!
end

puts "Miercoles, se murio el arbol!"



