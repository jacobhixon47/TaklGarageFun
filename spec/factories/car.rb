FactoryGirl.define do
  factory(:car) do
    association :car_model, factory: :car_model
    association :manufacturer, factory: :manufacturer
    color 'Red'
    vin '12345ABCDEF67890G'
    year 2007
    mileage 123456
    association :user, factory: :user
    association :garage, factory: :garage
  end
end
