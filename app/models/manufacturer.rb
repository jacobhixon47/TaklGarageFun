class Manufacturer < ApplicationRecord
  has_many :car_models
  has_many :cars

  validates :name, presence: true
end
