FactoryGirl.define do
  factory(:car_model) do
    name('Civic')
    association :manufacturer, factory: :manufacturer
  end
end
