class AddLToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :l, :integer
  end
end
