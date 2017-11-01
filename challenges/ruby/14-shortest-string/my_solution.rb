# Shortest String
def shortest_string(arreglo)
  arreglo.min { |a, b| a.length <=> b.length }
end
#Tu solucion abajo:
