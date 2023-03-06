class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :pfpURL
      t.string :vehicle_type

      t.timestamps
    end
  end
end
