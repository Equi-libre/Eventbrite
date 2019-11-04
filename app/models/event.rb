class Event < ApplicationRecord
	has_many :attendances
	has_many :users , through: :attendances
	belongs_to :admin, class_name: "User"
	validates :start_date, presence: true
	validates :duration, :numericality => { :greater_than_or_equal_to => 0}, presence: true
	validate  :multiple_of_5
	validates :title, length: {minimum: 5, maximum: 140}, presence: true
	validates :description, length: {minimum: 20, maximum: 1000}, presence: true
	validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 1000}, presence: true
	validates :location, presence: true

	def multiple_of_5
    if (self.duration % 5) != 0
      self.errors[:base] << "Number must be divisible by 5!"
    end
	end
end
