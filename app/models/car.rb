class Car < ApplicationRecord
  belongs_to :garage
  belongs_to :user
  belongs_to :car_model, required: true
  belongs_to :manufacturer, required: true
  validates :vin, presence: true
end
