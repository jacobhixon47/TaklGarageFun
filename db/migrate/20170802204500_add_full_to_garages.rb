class AddFullToGarages < ActiveRecord::Migration[5.0]
  def change
    add_column :garages, :full, :boolean, default: false
  end
end
