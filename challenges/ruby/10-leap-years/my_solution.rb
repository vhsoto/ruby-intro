# Leap Years
def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0)
end

# Tu solucion abajo:
