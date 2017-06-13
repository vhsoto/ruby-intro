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
tulia = Dog.new('tulia', 'poddle', 'brown', 2)
jeska = Dog.new('jeska', 'criollo', 'brown', 2)
ozu = Dog.new('ozu', 'bulldog', 'brown', 2)
# ozu.all
Perro.all

# p tulia.
# # Syntactic sugar
# p tulia.age=(7)
# p tulia.age = 7
# felipe = Person.new


#

#
# Metodos de Clase
# Varibles de Clase
# Scope / Cual es el valor de self





