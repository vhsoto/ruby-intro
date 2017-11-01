class AddColumnToDogs < ActiveRecord::Migration
  def change
  	add_column :dogs, :owner_id, :integer
  end
end



#los nombres del archivo van en snake_case y lo de la  migración es en Kammel_case, 
#no  agrego modelo porque ya existe.