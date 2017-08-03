class Garage < ApplicationRecord
  has_many :cars
  validates :limit, presence: true
end
