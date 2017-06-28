class Store < ActiveRecord::Base
  belongs_to :manager
  has_many :products


  def products
    Product.where(store_id: self.id)
  end

  # belongs_to :manager
  # es realmente
  # def manager
  #   Manager.find_by(id: self.manager_id)
  # end
  #
  # has_many :products
  # # # es realmente
end
