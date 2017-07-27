class AddMToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :m, :integer
  end
end
