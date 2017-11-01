# Longest String
def longest_string(arreglo)
  arreglo.max { |a, b| a.length <=> b.length }
end
# Tu solucion abajo:
