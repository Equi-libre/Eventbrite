class Event < ApplicationRecord
	validates :start_date, presence: true
	validates :duration, :numericality => { :greater_than_or_equal_to => 0}, presence: true
	validates :title, length: {minimum: 5, maximum: 140}, presence: true
	validates :description, length: {minimum: 20, maximum: 1000}, presence: true
	validates :price, numericality: {minimum: 1, maximum: 1000}, presence: true
	validates :location, presence: true
end
