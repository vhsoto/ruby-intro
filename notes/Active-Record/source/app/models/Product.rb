class Product < ActiveRecord::Base

  # validates :name, presence: true
  # validates :barcode , length: {maximum: 13, minimun: 6}
  # validates :quantity, numericality: {greater_than_or_equal_to: 0}
  # validates :store, presence: true
  # validate :is_barcode_good

  # belongs_to :store
  # es realmente
  def store
    Store.find_by(id: self.store_id)
  end


  # private
  #
  # def is_barcode_good
  #   unless self.barcode =~ /^AR/
  #     errors.add(:barcode, 'Invalid Barcode')
  #   end
  # end

end
