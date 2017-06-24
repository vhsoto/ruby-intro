class Product < ActiveRecord::Base
  attr_reader :name
  belongs_to :store
  # es igual a

  def store
    Store.find_by(id: 1)
  end
end

class Manager < ActiveRecord::Base
  has_one :stores
  has_many :products, through: :stores
end

class Store < ActiveRecord::Base
  belongs_to :boss
  has_many :products

  store.maneger
  def boss
    Manager.find_by(id: self.manager_id)
  end

  def products
    Products.where(store_id: self.id)
  end
end

# Users



# esquema Product

# id | store_id

# Esquema Manager

# id

# Esquema store

# id | boss_id



























class Product

  belongs_to :manager
  validates :name, presence: true
  validates :barcode , length: {maximum: 13, minimun: 6}
  validates :quantity, numericality: {greater_than_or_equal_to: 0}
  validates :store, presence: true
  validate :is_barcode_good

  # es realmente
  def manager
    Manager.find_by(id: self.manager_id)
  end

  private

  def is_barcode_good
    unless self.barcode =~ /^AR/
      errors.add(:barcode, 'Invalid Barcode')
    end
  end

end

class Manager
  has_many :stores
  #es realmente
  def stores
    Store.where(manager_id: self.id)
  end

  has_many :products, through: :stores
  #es realmente
  def products
    self.stores.map {|store| store.products}.flatten
  end

  # es realmente es SQL
  <<-SQL
    SELECT products.*
    FROM products
    JOIN stores on (stores.id = products.store_id)
    WHERE stores.manager_id = 5
  SQL
end

class Store
  belongs_to :manager
  belongs_to :boss, class_name: 'Manager', foreign_key: 'manager_id'
  #es realmente
  def manager
    Manager.find_by(id: self.manager_id)
  end

  has_many :products
  # es realmente
  def products
    Products.where(store_id: self.id)
  end
end

# id | store_id
#
# id
#
# id | manager_id
