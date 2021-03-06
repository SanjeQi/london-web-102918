class Office < ApplicationRecord
  has_many :doctors
  validates :address, presence: true
  validates :address, uniqueness: true
  validates :capacity, numericality: { only_integer: true }
  validates :capacity, numericality: { less_than_or_equal_to: 30 }

  def capacity_and_address
    "capacity: #{self.capacity}, address: #{self.address}"
  end
end
