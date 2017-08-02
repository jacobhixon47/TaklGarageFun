class CarModel < ApplicationRecord
  validates :name, presence: true
  belongs_to :manufacturer, required: true
  has_many :cars
end
