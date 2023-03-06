class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.float :order_total
      t.float :delivery_fee
      t.string :delivery_address
      t.string :order_status, default: "pending", null: false

      t.timestamps
    end
  end
end
