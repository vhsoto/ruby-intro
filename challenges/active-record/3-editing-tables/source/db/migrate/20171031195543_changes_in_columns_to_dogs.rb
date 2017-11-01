class ChangesInColumnsToDogs < ActiveRecord::Migration
  def change
    remove_column :dogs, :weight
    add_column :dogs, :breed, :string
  end
end
