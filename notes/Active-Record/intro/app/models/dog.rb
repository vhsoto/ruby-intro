class Dog < ActiveRecord::Base
  validates :name, presence: true
  validate :custom_validation


belongs_to :owner

  def custom_validation
    if self.name.size > 9
      errors.add(:name, 'El nombre es muy largo')
    end
  end


end
