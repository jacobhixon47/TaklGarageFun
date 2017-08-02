ActiveAdmin.register Car do
  permit_params :color, :vin, :mileage, :manufacturer_id, :car_model_id, :user_id

  index do
    selectable_column
    id_column
    column :color
    column :mileage
    column :vin
    column :car_model
    column :manufacturer
    column :user
    actions
  end

  filter :color
  filter :manufacturer
  filter :car_model
  filter :user
  filter :created_at

  form do |f|
    f.inputs 'Make and Model' do
      f.input :manufacturer, include_blank: false
      f.input :car_model, include_blank: false
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
