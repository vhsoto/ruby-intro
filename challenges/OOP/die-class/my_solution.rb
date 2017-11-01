# Pseudocode



# 1. Solucion Inicial

class Die
	attr_reader :side

	def initialize(side)
		@side = side
		raise ArgumentError, "Eso no es un lado de un dado" if @side < 1
	end

	def roll
		rand(@side) + 1
	end


end




# 2. Solucion con Refactor





###### DRIVER CODE #########
