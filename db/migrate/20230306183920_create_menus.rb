class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.string :item_name
      t.float :item_price
      t.string :item_image

      t.timestamps
    end
  end
end
