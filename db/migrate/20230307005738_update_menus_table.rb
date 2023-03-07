class UpdateMenusTable < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :order_id, :integer
  end
end
