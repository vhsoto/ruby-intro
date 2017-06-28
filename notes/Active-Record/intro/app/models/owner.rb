class Owner < ActiveRecord::Base
  belongs_to :owner, foreign_key: :person_id, class: Person
  has_many :dogs, foreign_key: :master_id, class: Animal

  def owner
    Person.find(self.person_id)
  end


  # No tiner owner_id si que tiene master_id
  def dogs
    Animal.where(master_id: self.id)
  end

end
