class AddSToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :s, :integer
  end
end
