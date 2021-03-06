class Flower < ApplicationRecord
  has_many :flights
  has_many :bees, through: :flights
  validates :pollen_capacity, numericality: true
end
