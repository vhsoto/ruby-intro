require 'sqlite3'
require 'faker'
# require 'pry'

$db = SQLite3::Database.new('dogs.db', results_as_hash: true)

$db.execute('drop table if exists dogs;')

$db.execute <<-SQL
  create table dogs (
    id integer primary key AUTOINCREMENT not null,
    name varchar(200) not null,
    age integer not null,
    breed varchar(50) not null
  );
SQL

10.times do |i|
  dog = [Faker::Cat.name, rand(90) + 1, Faker::Beer.name]
  $db.execute('insert into dogs (name, age, breed) values (?, ?, ?)', dog)
end
