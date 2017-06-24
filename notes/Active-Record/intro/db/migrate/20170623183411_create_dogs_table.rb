class CreateDogsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.belongs_to :owner

      t.timestamps
    end
  end
end
