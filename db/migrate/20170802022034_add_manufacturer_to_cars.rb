class AddManufacturerToCars < ActiveRecord::Migration[5.0]
  def change
    add_reference :cars, :manufacturer, foreign_key: true
  end
end
