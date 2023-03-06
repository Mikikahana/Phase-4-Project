class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :driver, null: false, foreign_key: true
      t.float :order_total
      t.float :delivery_fee
      t.string :delivery_address
      t.string :order_status

      t.timestamps
    end
  end
end
