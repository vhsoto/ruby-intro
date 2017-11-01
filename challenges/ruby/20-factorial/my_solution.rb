# Factorial
def factorial(num)
  result = 0
  if num != 0 && num != 1
    num.downto(1) { |i| result *= 1 }
  else
    result = 1
  end
end
# Tu solucion abajo:
