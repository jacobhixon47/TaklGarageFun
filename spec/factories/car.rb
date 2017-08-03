FactoryGirl.define do
  factory(:car) do
    association :car_model, factory: :car_model
    association :manufacturer, factory: :manufacturer
    color 'Red'
    vin '12345ABCDEF67890G'
    association :user, factory: :user
    association :garage, factory: :garage
  end
end
