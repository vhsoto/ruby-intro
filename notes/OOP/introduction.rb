# OOP

# Modelar el mundo x, atravez de objetos los cuales tienen atributos y comportamientos.

# Las clases son los planos que describen como crear los objetos

# class Person
# end

class Dog
  # attr_reader :name, :breed, :color, :age
  # attr_writer :name, :breed, :color, :age
  attr_accessor :name, :breed, :color, :age, :alive

  @@dogs = []


  def initialize(name, breed, color, age) # Constructor
    # Crear variables de instancia, asiganarlas a sus correspondientes valores
    @name = name
    @breed = breed
    @color = color
    @age = age
    @alive = true
    @nutured = false
    @@dogs << self

  end

  # Metodos de instancia
  def grow
    @vaccines = 1
    @age = @age + 1
  end

  def bark
    "Woff woff my name is"
  end

  def die
    @alive = false
  end


  # Metodos de clase / Getter de la variable de clase @@dogs
  def self.all
    @@dogs
  end

  def castrated_all
    @@dogs.each do |dog|
      dog.nutured = true
    end
  end


  # # Getter
  # def age
  #   @age
  # end

  # # Setters
  # def age=(new_age)
  #   @age = new_age
  # end

end

# Instancias
# tulia = Dog.new('tulia', 'poddle', 'brown', 2)
# jeska = Dog.new('jeska', 'criollo', 'brown', 2)
# ozu = Dog.new('ozu', 'bulldog', 'brown', 2)
# # ozu.all
# Perro.all

# p tulia.
# # Syntactic sugar
# p tulia.age=(7)
# p tulia.age = 7
# felipe = Person.new


#

# Conceptos
# Metodos de Clase
# Varibles de Clase
# Scope / Cual es el valor de self
# Mutabilidad
# Injeccion de Dependencias

#
# map
# map! # Metodos peligrosos

# dogs = ['tulia', 'jeska', 'ozu']
# dogs.map! do |dog|
#   dog.capitalize
# end


# Patrones de Diseño
# class Car
#   def initialize(tires)
#     @tires = tires
#   end

#   def hit_bump

#   end
# end

# class Tire
#   def initialize(radius)
#     @flat = false
#     @radius = radius
#   end

#   def explote
#     @flat = true
#   end
# end


# llanta1 = Tire.new(4)
# llanta2 = Tire.new(4)
# llanta3 = Tire.new(4)
# llanta4 = Tire.new(4)


# car = Car.new([llanta1,llanta2,llanta3,llanta4])


class Dog
  def initialize(name)
    @name = name
    @fleas = [Flea.new(10)]
  end

  def get_dirty
    5.times do
      @fleas << Flea.new(rand(5))
    end
  end

  def flea_free?
    @fleas.empty?
  end

  def get_clean
    @fleas.pop
  end
end

class Flea
  def initialize(age)
    @age = age
  end
end

ozu = Dog.new('ozu')


