class CreateGarages < ActiveRecord::Migration[5.0]
  def change
    create_table :garages do |t|
      t.string :name
      t.integer :limit, null: false, default: 0

      t.timestamps
    end
  end
end
