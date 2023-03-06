class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :pfpURL
      t.string :address
      t.string :restaurant_manager

      t.timestamps
    end
  end
end
