ActiveAdmin.register Car do
  permit_params :color, :vin, :year, :mileage, :garage_id, :manufacturer_id, :car_model_id, :user_id
  before_create do |car|
    if (car.garage.cars.count + 1) >= car.garage.limit && car.garage.full == false
      car.garage.update(full: true)
    end
  end
  before_update do |car|
    if car.garage.id != car.garage_id_was
      prev_garage = Garage.find(car.garage_id_was)
      prev_garage.update(full: false)
      if (car.garage.cars.count + 1) >= car.garage.limit && car.garage.full == false
        car.garage.update(full: true)
      end
    end
  end
  before_destroy do |car|
    car.garage.update(full: false)
  end
  index do
    selectable_column
    id_column
    column :car_model
    column :manufacturer
    column :year
    column :color
    column :mileage
    column :vin
    column :user
    column :garage
    actions
  end

  filter :color
  filter :manufacturer
  filter :car_model
  filter :year
  filter :user
  filter :created_at

  form do |f|
    f.inputs 'Make, Model & Year' do
      f.input :manufacturer, include_blank: false
      f.input :car_model, include_blank: false
      f.input :year, as: :select, collection: ((Date.current.year+1).downto(1950)), include_blank: false
    end
    f.inputs 'Car Details' do
      f.input :color, as: :select, collection: ['Beige', 'Black', 'Blue', 'Brown', 'Green', 'Grey', 'Orange', 'Purple', 'Red', 'Silver', 'Tan', 'White', 'Yellow', 'Other'], include_blank: false
      f.input :vin
      f.input :mileage
      f.input :user, include_blank: false
      f.input :garage_id, include_blank: false, as: :select, collection: Garage.all.where(full: false)

    end
    f.actions
  end
end
