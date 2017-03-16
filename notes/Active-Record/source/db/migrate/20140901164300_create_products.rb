class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string   :barcode
      t.string  :name
      t.integer :quantity
      t.integer  :store_id

      t.timestamps
    end
  end
end
