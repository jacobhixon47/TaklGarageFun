ActiveAdmin.register Garage do
  permit_params :name, :limit, :full
  before_update do |garage|
    session[:return_to] ||= request.referer
    if garage.cars.count == garage.limit
      garage.update(full: true)
    elsif garage.cars.count <= garage.limit
        garage.update(full: false)
    elsif garage.cars.count >= garage.limit
      flash[:notice] = "The limit cannot be below the current amount of cars. Please move some cars and try again."
      garage.update(limit: garage.limit_was)
    end
  end
  index do
    selectable_column
    id_column
    column :name
    column :limit
    column :full
    column "Cars" do |garage|
      garage.cars.count
    end
    actions
  end

  filter :limit

  form do |f|
    f.inputs "Garage Details" do
      f.input :name, label: "Name (Optional)"
      f.input :limit, label: "Limit"
    end
    f.actions
  end
end
