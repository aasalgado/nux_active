class RemoveSizeFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :size, :string
  end
end
