class Manufacturer < ApplicationRecord
  has_many :car_models
  has_many :cars, through: :car_models

  validates :name, presence: true
end
