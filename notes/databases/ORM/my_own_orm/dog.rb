# Hoy vamos a ver

# - Como funciona un ORM
# - Como funcionan las asociaciones

require 'sqlite3'

$db = SQLite3::Database.new('dogs.db', results_as_hash: true)

module ORM_Helper
  def self.symbolize_keys(hash)
    hash.keys.each do |key|
      hash[(key.to_sym rescue key) || key] = hash.delete(key)
    end
  end
end

class Dog

  include ORM_Helper
  attr_accessor :name, :breed, :age, :id

  def initialize(args)
    @id = args[:id]
    @name = args[:name]
    @breed = args[:breed]
    @age = args[:age]
  end

  def self.all
    rows = $db.execute('select * from dogs;')
    where('1 = 1')
  end

  def self.where(query, *value)
    rows = $db.execute("select * from dogs where #{query}", value)
    rows.map do |dog|
      ORM_Helper.symbolize_keys(dog)
      Dog.new(dog)
    end
  end

  def self.find(id)
    where("id = #{id}").first
  end

  def save
    values = [self.name, self.age, self.breed]
    $db.execute("insert into dogs (name, age, breed) values (?,?,?)", values)
    self.id = $db.last_insert_row_id
  end

end

# La idea es lograr esto

Dog.all # -> un arreglo lleno de instancias de perros
# Dog.where('name = ? and age = ?', ['Jasper', 88]) # -> Un arrelgo lleno instancia de perro  con nombre ozu
Dog.find(2) # -> La instancia con id 2
ozu = Dog.new({name: 'ozu', breed: 'bulldog', age: 7}) #el id es nil
ozu.save # -> Un insert de la instancia







































# require 'sqlite3'

# $db = SQLite3::Database.new("dogs.db", results_as_hash: true)

# module ORM_Helper
#   def self.symbolize_keys(hash)
#     hash.keys.each do |key|
#       hash[(key.to_sym rescue key) || key] = hash.delete(key)
#     end
#   end
# end


# class Dog
#   include ORM_Helper
#   attr_accessor :id, :name, :age, :breed

#   def initialize(args)
#     @id = args[:id]
#     @name = args[:name]
#     @age = args[:age]
#     @breed = args [:breed]
#   end

#   def self.all
#     # rows = $db.execute('select * from dogs')
#     # rows.map do |row|
#     #   ORM_Helper.symbolize_keys(row)
#     #   Dog.new(row)
#     # end

#     where('1 = 1')
#   end

#   def self.where(query, *args)
#     rows = $db.execute("select * from dogs where #{query}", args)
#     rows.map do |row|
#       ORM_Helper.symbolize_keys(row)
#       Dog.new(row)
#     end
#   end

#   def self.find(id)
#     where("id = ?", id).first
#   end

#   def save
#     values = [self.name, self.age, self.breed]
#     $db.execute('insert into dogs (name, age, breed) values (?, ?, ?)', values)
#     self.id = $db.last_insert_row_id
#   end

# end

# # Lo que queremos lograr:
# ozu = Dog.new(name: 'ozu', age: 6, breed: 'bulldog')
# # p Dog.all
# # p Dog.find(1)
# # dog2 = Dog.find(2)
# # ozu = Dog.create(name: 'ozu', age: 6, breed: 14)
# # p Dog.where("name = ?", ozu.name)
