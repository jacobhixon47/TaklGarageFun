class AddGarageToCars < ActiveRecord::Migration[5.0]
  def change
    add_reference :cars, :garage, foreign_key: true
  end
end
