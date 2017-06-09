require 'pry'

# Metodos

# Es un porcion de codigo reutilizable
  # Recibe un inputs
  # Devuelve un output


# inputs = [1,1,3,3,2,5]

# output --> {1=>2, 3=>2, 2=>1, 5=>1}
# Definicion
# def frequencies(array, num = nil, *rest) # Arity de un metodo 2
#   array.reduce({}) {|memo, num| memo[num] ? memo[num] += 1 : memo[num] = 1; memo}
# end


# # Invocacion
# puts frequencies(inputs)
# frequencies([1,22,3])
# frequencies(1,2,3,4)


# Imperativo
# Declarativo


# Iteraciones o loops

# while <--- loop
# EACH <--- iteraciones
# loop <--- loop
# times <--- loop
# MAP <--- iteraciones
# nums.each { |num| puts num }

# nums.each do |num|
#   puts num
# end

# nums = [1,2,3,4,5,6]
# nums_times_two = []

# nums.each do |num|
#   nums_times_two << (num *  2)
# end

# nums_times_two = nums.map do |num|
#   num * 2
# end

# puts nums_times_two
num = 1

while num < 5
  puts "blah #{num}"
  num += 1
end


10.times do
  puts 'fasdfas'
end

(5...10).each do |num|
end




nums = [1,2,3,4,4,4] #Input
sum = 0 # Output

nums.each do |num|
  sum = sum + num
end

nums.reduce(0) do |sum, num|
  sum += num
  sum
end

nums.reduce(0) {|sum,num| sum += num}


persona = {name: 'juan', age: 2342, color: 'blue'}

persona.each do |key, value|

end


# nums_times_two = [2,4,6,4,10,12]
# nums[2]
# nums[2]
# nums.each {|num| nums_times_two = nums[num*2]; binding.pry}

# puts nums_times_two


# nums.each do |num|
#   nums_times_two = [num * 2]
# end







