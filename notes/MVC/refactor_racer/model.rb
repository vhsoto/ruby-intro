class Modelo
  def initialize
    @trackA = []
    @trackZ = []
    @position = 0
    @position1 = 0
    @correr = true
    @stop_running = 0
    ## DADO
    @dado1 = Die.new
    @dado2 = Die.new
    @position_play1 = 0
    @position_play2 = 0
  end

  def setPlayersNames(playersNames)
    @player_name1 = playersNames[0]
    @player_name2 = playersNames[1]
  end

  def lanza_dados
    ###### Lanzar Dados y acumular
    @position_play1 += @dado1.roll
    @position_play2 += @dado2.roll
  end

  def crear_pista
    @trackA = []
    @trackZ = []
    @position = 0
    @position1 = 0
    ###### Crear array A
    50.times do
      @trackA << "|"
      if @position == @position_play1
        @trackA << "#{@player_name1}"
      end
      @position += 1
    end
    @trackA.pop

    ###### Crear array Z
    50.times do
      @trackZ << "|"
      if @position1 ==
        @position_play2
        @trackZ << "#{@player_name2}"
      end
      @position1 += 1
    end
    @trackZ.pop

    [@trackA, @trackZ]
  end

  def alguien_gano?
    if @position_play1 >= 50 && @position_play2 >= 50
      return false
    elsif @position_play1 >= 50
      @ganador = @player_name1
      return false
    elsif @position_play2 >= 50
      @ganador = @player_name2
      return false
    end
    true
  end

end
