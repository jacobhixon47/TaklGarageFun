class CarModel < ApplicationRecord
  validates_presence_of :name
  belongs_to :manufacturer, required: true
  has_many :cars
end
