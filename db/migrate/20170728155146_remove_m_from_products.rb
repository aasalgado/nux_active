class RemoveMFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :m, :integer
  end
end
