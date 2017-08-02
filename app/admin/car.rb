ActiveAdmin.register Car do
  permit_params :color, :vin, :year, :mileage, :manufacturer_id, :car_model_id, :user_id

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
      f.input :year
    end
    f.inputs 'Car Details' do
      f.input :color, :input_html => { type: "text", value: '' }
      f.input :vin
      f.input :mileage
      f.input :user, include_blank: false
    end
    f.actions
  end
end
