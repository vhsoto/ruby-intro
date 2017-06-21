class Vista
  extend ConsoleHelper

  def self.pedir_datos
    ####### Pedir Letras
    puts "Jugar 1, escoge una letra para tu jugador"
    player_name1 = gets.chomp
    puts "Jugar 2, escoge una letra para tu jugador"
    player_name2 = gets.chomp
    [player_name1, player_name2]
  end

  def self.imprima_pista(trackA, trackZ)
    puts trackA.join("")
    ###### Imprimir array/Track Z
    puts trackZ.join("")
    sleep(0.5)
  end

  def self.imprimir_ganador(ganador)
      puts "Ganó el jugador #{ganador}"
  end

  def self.imprimir_empate(player_name1, player_name2)
      puts "Empate entre el jugador #{player_name1} y el jugador #{player_name2}"
  end
end
