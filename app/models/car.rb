class Car < ApplicationRecord
  belongs_to :car_model, required: true
  has_one :manufacturer, through: :car_model
  validates :vin, presence: true
end
