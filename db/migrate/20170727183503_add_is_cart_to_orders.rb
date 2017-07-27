class AddIsCartToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :is_cart, :boolean, default: true
  end
end
