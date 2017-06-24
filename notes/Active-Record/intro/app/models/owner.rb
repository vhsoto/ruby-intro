class Owner < ActiveRecord::Base
  has_many :dogs


  # def dogs
  #   Dog.where(owner_id: self.id)
  # end

end
