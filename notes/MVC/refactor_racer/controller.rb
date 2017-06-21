require_relative "modelo.rb"
require_relative "vista.rb"
include ConsoleHelper

class Controller

  def initialize
    @modelo = Modelo.new
  end

  def run
    playersNames = Vista.pedir_datos
    @modelo.setPlayersNames(playersNames)

    while @model.alguien_gano?
      ###### WHILE CORRER!!!
      @model.crear_pista
      @model.lanza_dados
      @model.crear_pista

      #######  Borrar
      Vista.clear_screen!

      ######### Move to Home
      Vista.move_to_home!

    end

  end

  carrito = Car.new
  carrito.pedir_datos
  carrito.run
