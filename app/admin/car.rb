ActiveAdmin.register Car do
  permit_params :color, :vin, :mileage, :car_model_id, :manufacturer_id

  index do
    selectable_column
    id_column
    column :color
    column :mileage
    column :vin
    column :car_model
    column :manufacturer
    actions
  end

  filter :color
  filter :car_model
  filter :manufacturer
  filter :created_at

  form do |f|
    f.inputs 'Car Details' do
      f.input :color
      f.input :vin
      f.input :mileage
      f.input :car_model
      f.input :manufacturer
    end
    f.actions
  end
end
