class RemoveLFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :l, :integer
  end
end
