class Store < ActiveRecord::Base
  belongs_to :manager
  has_many :products


  # belongs_to :manager
  # es realmente
  # def manager
  #   Manager.find_by(id: self.manager_id)
  # end
  #
  # has_many :products
  # # # es realmente
  # def products
  #   Product.where(store_id: self.id)
  # end
end
