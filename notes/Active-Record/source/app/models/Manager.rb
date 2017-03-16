class Manager < ActiveRecord::Base
  has_many :stores
  #es realmente
  # def stores
  #   Store.where(manager_id: self.id)
  # end

  has_many :products, through: :stores
  # es realmente
  # def products
  #   self.stores.map {|store| store.products }.flatten
  # end
  #
  # # es realmente es SQL
  # <<-SQL
  #   SELECT products.*
  #   FROM products
  #   JOIN stores on (stores.id = products.store_id)
  #   WHERE stores.manager_id = 5
  # SQL
end
