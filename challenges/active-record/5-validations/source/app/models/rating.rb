class Rating < ActiveRecord::Base
	validates :coolness, :cuteness, :judge_id, :dog_id, presence: true
	validates :coolness, :cuteness, :judge_id, :dog_id, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
	validates :judge_id, uniqueness: true
end
